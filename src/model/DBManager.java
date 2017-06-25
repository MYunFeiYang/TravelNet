package model;

import java.sql.Connection;
import java.sql.SQLException;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.apache.tomcat.jdbc.pool.PoolProperties;

public class DBManager {
    private static DataSource datasource;
    private final static String driver = "com.mysql.jdbc.Driver";
	private final static String url = "jdbc:mysql://localhost:3306/db_yunfeiyang?useUnicode=true&characterEncoding=UTF-8";
	private final static String user = "root";
	private final static String password = "420222@@";
	public static DBManager INSTANCE;
    static {
	INSTANCE = new DBManager();
	setupJdbcPool();
    }
    private static void  setupJdbcPool() {	
    	PoolProperties p = new PoolProperties();
    	p.setDriverClassName(driver);
    	p.setUrl(url);
    	p.setUsername(user);
    	p.setPassword(password);
    	p.setMaxActive(100);
    	p.setInitialSize(10);
    	p.setMaxWait(10000);
    	p.setMaxIdle(50);
    	p.setMinIdle(10);
    	p.setDefaultAutoCommit(false);
     	datasource = new DataSource();
           	datasource.setPoolProperties(p);

    }
    public Connection getConnection() {
    	Connection conn = null;
    	try {
    	      conn = datasource.getConnection();
    	} catch (SQLException e) { }
    	return conn;
        }
	  public void closeConn(Connection conn) {
	     try {
		if (conn != null) {  conn.close(); }
	     } catch (SQLException e) {  e.printStackTrace();  }
	  }
	}



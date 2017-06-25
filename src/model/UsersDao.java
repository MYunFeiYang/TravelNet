package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsersDao implements IUsersDao {
	// �û���¼
	public Users getUser(String username, String password) {
		Connection conn = null;
		Users user = null;
		try {
			conn = DBManager.INSTANCE.getConnection();
			String sql = "select * from tb_user where username=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next())
				user = new Users(rs.getString(1), rs.getString(2), null, null, null);
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.INSTANCE.closeConn(conn);
		}
		return user;
	}

	// ͨ���û�����ѯ�û��Ƿ���ע��
	public boolean getUserByName(String username) {
		boolean existed = false;
		Connection conn = null;
		try {
			conn = DBManager.INSTANCE.getConnection();
			PreparedStatement ps = conn.prepareStatement("select id from tb_user where username=?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			if (rs.next())
				existed = true;
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.INSTANCE.closeConn(conn);
		}
		return existed;
		}

	// �û�ע��
	public int setUser(String username, String password, String telephone, String e_mail, String youbian) {
		Connection conn = null;
		int tag = 0;
		try {
	        	if (getUserByName(username)){
	        		tag = 2;// �û��Ѿ�����
	   }else {
			conn = DBManager.INSTANCE.getConnection();
			String sql = "insert into tb_user(username,password,telephone,e_mail,youbian)values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, telephone);
			ps.setString(4, e_mail);
			ps.setString(5, youbian);
			tag = ps.executeUpdate();
			ps.close();
		} 
		}
	        catch (SQLException e) {
			tag = -1;//ע��ʧ��
			e.printStackTrace();
		} 
	        finally {
			DBManager.INSTANCE.closeConn(conn);
		}
		return tag;
	}
		
}
package model;

public class DaoFactory {
    public static DaoFactory INSTANCE;
    static {
	INSTANCE = new DaoFactory();
    }
    private DaoFactory() {    super();   }
//用户登录
    public Users login(String username, String password) {
	return new UsersDao().getUser(username, password);
    }
  //按照姓名查询
    public boolean findUserByUsername(String username) {
    	return new UsersDao().getUserByName(username);
    }
    //用户注册
    public int register(String username,String password,String telephone,String e_mail,String youbian){
    return new UsersDao().setUser(username, password, telephone, e_mail, youbian);
    }
}

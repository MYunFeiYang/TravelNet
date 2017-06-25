package model;

public interface IUsersDao {
	//用户登录
	 public Users getUser(String username, String password);
	 //通过用户名查询用户是否已注册
	 public boolean getUserByName(String username);
	 //用户注册
	 public int setUser(String username, String password,String telephone,String e_mail,String youbian);
}

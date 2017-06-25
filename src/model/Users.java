package model;

public class Users {
	private String username;
	private String password;
	private String telephone;
	private String e_mail;
	private String youbian;


	public Users(String username, String password, String telephone, String e_mail, String youbian) {
		this.username = username;
		this.password = password;
		this.telephone = telephone;
		this.e_mail = e_mail;
		this.youbian = youbian;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getE_mail() {
		return e_mail;
	}

	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}

	public String getYoubian() {
		return youbian;
	}

	public void setYoubian(String youbian) {
		this.youbian = youbian;
	}

}

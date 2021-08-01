package model;

public class adminModel {
	private String adminUsername;
	private String password;
	
	public adminModel(String adminUsername, String password) {
		super();
		this.adminUsername = adminUsername;
		this.password = password;
	}
	public String getAdminUsername() {
		return adminUsername;
	}
	public void setAdminUserName(String adminUsername) {
		this.adminUsername = adminUsername;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}

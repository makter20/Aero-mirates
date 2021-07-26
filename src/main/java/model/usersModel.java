package model;

public class usersModel {

	String userName;
	String firstName;
	String lastName;
	String email;
	String dateOfBirth;
	String password;
	
	public usersModel (String userName, String password) {
		
		this.userName = userName;
		this.password = password;
		
		
	}
	
	public usersModel (String userName, String firstName, String lastName, String email, String dob, String password) {
		
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.dateOfBirth = dob;
		this.password = password;
		
		
	}
	
	public String getuserName() {
		return this.userName;
	}
	
	public void setuserName(String userName) {
		this.userName = userName;
	}
	
	public String getfirstName() {
		return this.firstName;
	}
	
	public void setfirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getlastName() {
		return this.lastName;
	}
	
	public void setlastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getemail() {
		return this.email;
	}
	
	public void setemail(String email) {
		this.email = email;
	}
	
	public String getDateOfBirth() {
		return this.dateOfBirth;
	}
	
	public void setDateOfBirth(String dob) {
		this.dateOfBirth = dob;
	}
	
	public String getpassword() {
		return this.password;
	}
	
	public void setpassword(String pass) {
		this.password = pass;
	}
	
}

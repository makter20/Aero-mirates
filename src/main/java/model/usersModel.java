package model;

public class usersModel {

	private String userName;
	private String firstName;
	private String lastName;
	private String email;
	private String dateOfBirth;
	private String password;
	private String phoneNumber;
	private String userType;


	public usersModel (String email, String password) {

		this.email= email;
		this.password = password;


	}

	public usersModel (String firstName, String lastName, String phone_number, String email, String password, String userType) {

		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.userType = userType;
		this.phoneNumber = phone_number;


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

	public String getPhonenumber() {
		return this.phoneNumber;
	}

	public void setPhonenumber(String number) {
		this.phoneNumber = number;
	}

	public String getuserType() {
		return this.userType;
	}

	public void setuserType(String type) {
		this.userType = type;
	}


}

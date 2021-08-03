package model;
import java.sql.*;
import oracleConnection.WebConnection;
import oracleConnection.printingSQLExc;

public class loginValidation {
	
	private boolean valid = false;
	private ResultSet rs;
	private String userType;
	
	public boolean loginValidate(usersModel user) throws ClassNotFoundException {
		try (Connection connection = WebConnection.getConnection()) {
			
			Statement st = connection.createStatement();
			String query = "SELECT * FROM system.Users WHERE emailId='" + user.getemail() + "'" + " AND password='" + user.getpassword() + "'";

			rs = st.executeQuery(query);
			if(rs.next()) {
				valid = true;
				userType = rs.getString("userType");
				System.out.println(rs.getString("emailId"));
			}
			
			rs.close();
			connection.close();
			

		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return valid;
	}
	
	public String gettype() {
		
		if(valid) {
			return userType;
		}
		
		return "no input";
		
	}
	

}

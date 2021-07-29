package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import oracleConnection.WebConnection;
import oracleConnection.printingSQLExc;

public class adminLoginValidation {
	private boolean valid = false;
	private ResultSet rs;
	private String adminType;
	
	public boolean adminLoginValidate(adminModel admin) throws ClassNotFoundException {
		try (Connection connection = WebConnection.getConnection()) {
			
//			Statement st = connection.createStatement();
//			String query = "SELECT FIRSTNAME FROM system.NEWACCOUNT WHERE EMAIL = 'sarker@gmail.com' AND PASSWORD = '12345'";
//			rs = st.executeQuery(query);
//			if(rs.next()) {
//				System.out.println(rs.getString("FIRSTNAME"));
//				valid = true;
//			}
			
			Statement st = connection.createStatement();
			String query = "SELECT * FROM ADMIN WHERE adminUsername='" 
							+ admin.getAdminUsername() + "'" + " AND PASSWORD='" 
							+ admin.getPassword() + "'";

			/*PreparedStatement preparedStatement = connection.prepareStatement(query);
			System.out.println(user.getemail());
			System.out.println(user.getpassword());
			preparedStatement.setString(1, user.getemail());
			preparedStatement.setString(2, user.getpassword());*/

			rs = st.executeQuery(query);
			if(rs.next()) {
				valid = true;
			}			

		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return valid;
	}
	
	public String gettype() {
		
		if(valid) {
			return adminType;
		}
//		
//		try {
//			if(rs.next()) {
//				userType = rs.getString("USERTYPE");
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
		
		return "no input";
		
	}
}

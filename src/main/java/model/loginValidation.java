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
			
//			Statement st = connection.createStatement();
//			String query = "SELECT FIRSTNAME FROM system.NEWACCOUNT WHERE EMAIL = 'sarker@gmail.com' AND PASSWORD = '12345'";
//			rs = st.executeQuery(query);
//			if(rs.next()) {
//				System.out.println(rs.getString("FIRSTNAME"));
//				valid = true;
//			}
			
			Statement st = connection.createStatement();
			String query = "SELECT * FROM system.NEWACCOUNT WHERE EMAIL='" + user.getemail() + "'" + " AND PASSWORD='" + user.getpassword() + "'";

			/*PreparedStatement preparedStatement = connection.prepareStatement(query);
			System.out.println(user.getemail());
			System.out.println(user.getpassword());
			preparedStatement.setString(1, user.getemail());
			preparedStatement.setString(2, user.getpassword());*/

			rs = st.executeQuery(query);
			if(rs.next()) {
				valid = true;
				userType = rs.getString("USERTYPE");
				System.out.println(rs.getString("EMAIL"));
			}			

		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return valid;
	}
	
	public String gettype() {
		
		if(valid) {
			return userType;
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

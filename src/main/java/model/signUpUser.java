package model;

import java.sql.*;
import oracleConnection.*;

public class signUpUser {
	
	public boolean createNewAccount(usersModel user) throws ClassNotFoundException {
		
		try(Connection con = WebConnection.getConnection()) {
			String email = user.getemail();
			String dbEmail = "";
			
			//con.setAutoCommit(false);
			
			String checkEmail = "SELECT emailId FROM Users WHERE emailId = ? ";
			PreparedStatement st = con.prepareStatement(checkEmail);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				dbEmail = rs.getString("EMAIL");
			}
			
			if(!dbEmail.equals(email)) {
				
				String sql = "INSERT INTO system.Users" +"(fname, lname, password, phoneNumber, emailId, userType)VALUES" +
						"(?,?,?,?,?,?)";
				
				PreparedStatement statement = con.prepareStatement(sql);
				statement.setString(1, user.getfirstName());
				System.out.println(user.getfirstName());
				statement.setString(2, user.getlastName());
				statement.setString(3, user.getpassword());
				statement.setString(4, user.getPhonenumber());
				statement.setString(5, user.getemail());
				statement.setString(6, user.getuserType());
				statement.executeUpdate();
				return true;
				
			} else {
				
				return false;

			}
		} catch(SQLException e) {
			
			printingSQLExc.SQLExceptionPrinter(e);
			return false;
			
			
		}
		
	}

}

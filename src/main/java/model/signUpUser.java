package model;

import java.sql.*;
import oracleConnection.*;

public class signUpUser {
	
	public boolean createNewAccount(usersModel user) throws ClassNotFoundException {
		
		try(Connection con = WebConnection.getConnection()) {
			String email = user.getemail();
			String dbEmail = "";
			
			//con.setAutoCommit(false);
			
			String checkEmail = "SELECT EMAIL FROM NEWACCOUNT WHERE EMAIL = ? ";
			PreparedStatement st = con.prepareStatement(checkEmail);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				dbEmail = rs.getString("EMAIL");
			}
			
			if(!dbEmail.equals(email)) {
				
				String sql = "INSERT INTO system.NEWACCOUNT" +"(FIRSTNAME, LASTNAME, PASSWORD,PHONENUMBER, EMAIL, USERTYPE)VALUES" +
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

			
//			String sql = "INSERT INTO system.NEWACCOUNT" +"(FIRSTNAME, LASTNAME, PASSWORD,PHONENUMBER, EMAIL, USERTYPE)VALUES" +
//			"(?,?,?,?,?,?)";
			
//			String sql2 = "INSERT INTO system.NEWACCOUNT "
//					+ "(FIRSTNAME, LASTNAME, PHONENUMBER, EMAIL, PASSWORD, USERTYPE)"
//					+ " VALUES ('maha', 'naha', '12345', '8329460753', 'maha2', 'User')";
			
//			PreparedStatement statement = con.prepareStatement(sql);
//			statement.setString(1, user.getfirstName());
//			System.out.println(user.getfirstName());
//			statement.setString(2, user.getlastName());
//			statement.setString(3, user.getpassword());
//			statement.setString(4, user.getPhonenumber());
//			statement.setString(5, user.getemail());
//			statement.setString(6, user.getuserType());
//			statement.executeUpdate();
			
			}
			
//			Statement st = con.createStatement();
//			st.executeUpdate(sql2);
			
		} catch(SQLException e) {
			
			printingSQLExc.SQLExceptionPrinter(e);
			return false;
			
			
		}
		
	}

}

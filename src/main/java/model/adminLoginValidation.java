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
			Statement st = connection.createStatement();
			String query = "SELECT * FROM AdminLoginCredentials WHERE adminUserName = '" 
							+ admin.getAdminUsername() + "'" + "AND adminPassword = '" 
							+ admin.getPassword() + "'";
			rs = st.executeQuery(query);
			if(rs.next()) {
				valid = true;
//				adminType = rs.getString("ADMINTYPE");
				System.out.println(rs.getString("adminUserName"));
			} else {
				System.out.println("Not an admin");
			}

		} catch (SQLException e) {
			
			System.out.println("SELECT * FROM AdminLoginCredentials WHERE adminUserName= '" 
					+admin.getAdminUsername() + "'" + "AND adminPassword ='" 
					+ admin.getPassword() + "'");
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return valid;
	}
}
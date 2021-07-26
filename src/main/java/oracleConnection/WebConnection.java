package oracleConnection;


import java.sql.*;

public class WebConnection {
	
	
	public static Connection getConnection () {
		
		String userName = "system";
		String password = "oracle";
		String host = "localhost";
		int port = 1521;
		
				
		
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			
			System.out.println("Error loading driver: " + e);
		}
		
		String oracleURL = "jdbc:oracle:thin:@" + host + ":" + port + ":" + "xe";
		
		Connection connection = null;
		try {
			connection = DriverManager.getConnection(oracleURL, userName, password);
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter((SQLException) e);
			
		}
		
		try {
			printingSQLExc.getWarningsFromConnection(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
				
		return connection;
		
	}

}

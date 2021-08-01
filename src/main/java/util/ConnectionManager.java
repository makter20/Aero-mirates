package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {

	public static Connection getConnection() throws SQLException{
		String dbUrl = "jdbc:oracle:thin:@localhost:1521:xe";
		
		String userName = "SYSTEM";
		String password = "root";
		
		Connection connection = null;
		
		try {
			connection = DriverManager.getConnection(dbUrl,userName,password);
		}
		catch (SQLException e) {
			throw e;
		}
		return connection;
	}
}

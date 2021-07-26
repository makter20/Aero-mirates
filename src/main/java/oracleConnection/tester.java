package oracleConnection;

import java.sql.*;

public class tester {

	public static void main(String[] args) throws SQLException {
		
		Connection con = WebConnection.getConnection();
		DatabaseMetaData dbMeta = con.getMetaData();
		System.out.println(dbMeta.getDatabaseProductName());
		System.out.println(dbMeta.getDriverName());
		System.out.println(dbMeta.getDatabaseProductVersion());
		con.close();
		

	}

}

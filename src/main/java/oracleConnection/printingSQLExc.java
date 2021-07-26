package oracleConnection;

import java.sql.*;

public class printingSQLExc {

	public static void SQLExceptionPrinter(SQLException se) {
		
		 for (Throwable e : se) {
		        if (e instanceof SQLException) {

		                e.printStackTrace(System.err);
		                System.err.println("SQLState: " +
		                    ((SQLException)e).getSQLState());

		                System.err.println("Error Code: " +
		                    ((SQLException)e).getErrorCode());

		                System.err.println("Message: " + e.getMessage());

		                Throwable t = se.getCause();
		                while(t != null) {
		                    System.out.println("Cause: " + t);
		                    t = t.getCause();
		                }
		            
		        }
		    }
		
	}
	
	public static void printWarnings(SQLWarning warning)
		    throws SQLException {

		    if (warning != null) {
		        System.out.println("\n---Warning---\n");

		    while (warning != null) {
		        System.out.println("Message: " + warning.getMessage());
		        System.out.println("SQLState: " + warning.getSQLState());
		        System.out.print("Vendor error code: ");
		        System.out.println(warning.getErrorCode());
		        System.out.println("");
		        warning = warning.getNextWarning();
		    }
		}
	}
	
	public static void getWarningsFromResultSet(ResultSet rs)
		    throws SQLException {
		    printWarnings(rs.getWarnings());
		}

	public static void getWarningsFromStatement(Statement stmt)
		    throws SQLException {
		    printWarnings(stmt.getWarnings());
		}
	public static void getWarningsFromConnection(Connection con)
		    throws SQLException {
		    printWarnings(con.getWarnings());
		}

	
}

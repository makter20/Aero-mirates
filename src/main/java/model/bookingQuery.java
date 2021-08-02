package model;
import oracleConnection.*;
import java.sql.*;

public class bookingQuery {
	
	public static void booking(bookingModel booked) {
		
		try(Connection con = WebConnection.getConnection()){
			
			String flightDate = booked.getFlightDate();
			Date sqlDate = Date.valueOf(flightDate);
			
			String insert = "INSERT INTO Booking" +"(bookingId, emailId, scheduleId, bookingDate, seatNumber)VALUES" +
					"(?,?,?,?,?)";
			
			PreparedStatement st = con.prepareStatement(insert);
			st.setString(1, booked.getBookingId());
			st.setString(2, booked.getEmail());
			st.setString(3, booked.getScheduleId());
			st.setDate(4, sqlDate);
			st.setString(5, booked.getSeatNumber());
			ResultSet rs = st.executeQuery();
			 
			
		} catch(SQLException e) {
			
			printingSQLExc.SQLExceptionPrinter(e);
		}
		
		
	}
	
	public static String emailVal(String email) {
		String dbEmail = null;
		
		try(Connection con = WebConnection.getConnection()) {
			
			String query = "SELECT emailId FROM Users WHERE emailId = '"+email+"'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			if(rs.next()) {
				dbEmail = rs.getString("emailId");
				
			} else {
				System.out.println("Email does not match");
			}
			rs.close();
			con.close();
			
		}catch(SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		
		return dbEmail;
	}
	
	public static boolean seatVal(String seatNum) {
		
		try (Connection con = WebConnection.getConnection()) {
			
			String query = "SELECT seatNumber FROM Booking WHERE seatNumber='"+seatNum+"'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			if(rs.next()) {
				
				System.out.println("seat is not available");
				rs.close();
				con.close();
				return false;
				
			} else {
				System.out.println("seat is available");
				return true;
			}
			
			
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		
		return false;
	}
	
}

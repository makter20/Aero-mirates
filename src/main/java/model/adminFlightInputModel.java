package model;

import java.sql.*;
import oracleConnection.*;


public class adminFlightInputModel {
	private boolean valid = true;
	private ResultSet rs;
	private static final String sql= "INSERT INTO SCHEDULES (scheduleId, sourceId,"
								+ " destinationId, capacity, scheduledDate, flightId) " 
								+ "VALUES(?,?,?,?,TO_DATE(?,'yyyy/mm/dd hh24:mi:ss'),?)";
	public boolean createNewFlight(scheduleModel flight) throws ClassNotFoundException {
		try(Connection con = WebConnection.getConnection()) {
			String scheduleID = flight.getScheduleID();
			String dbScheduleID ="";
//			Date sqlDate = Date.valueOf(flight.getScheduleDate());
			
			String checkScheduleID = "Select scheduleID FROM Schedules WHERE "
									+ "scheduleID = '" + scheduleID + "'";
			Statement st = con.createStatement();
			PreparedStatement st1 = con.prepareStatement(sql);
			rs = st.executeQuery(checkScheduleID);
			if(rs.next()) {
				valid = false;
				System.out.println("anything for troc");
			} 
			else {
				st1.setString(1,flight.getScheduleID());
				st1.setString(2,flight.getSourceID());
				st1.setString(3,flight.getDestinationID());
				st1.setString(4,String.valueOf(flight.getCapacity()));
				st1.setString(5,flight.getScheduleDate());
//				st1.setDate(5,sqlDate);
				st1.setString(6,flight.getFlightID());
				System.out.println(sql);
				System.out.println(flight.getScheduleDate());
				st1.executeUpdate();
			}
			
		
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
			valid = false;
		}
		return valid;
	}
}
	
package model;

import java.sql.*;
import oracleConnection.*;


public class scheduleInputModel {
	private boolean valid = true;
	private ResultSet rs;
	private static final String sql= "INSERT INTO SCHEDULES (scheduleId, sourceId,"
								+ " destinationId, capacity, scheduledDate, "
								+ "scheduledTime, returnDate, flightId) "
								+ "VALUES (?,?,?,?,?,?,?,?)";
	public void scheduleFlight(scheduleModel flight) throws ClassNotFoundException {
		try(Connection con = WebConnection.getConnection()) {
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,flight.getScheduleID());
			st.setString(2,flight.getSourceID());
			st.setString(3,flight.getDestinationID());
			st.setInt(4,flight.getCapacity());
			st.setDate(5,Date.valueOf(flight.getScheduleDate()));
			st.setTimestamp(6,Timestamp.valueOf(flight.getScheduleTime()));
			st.setDate(7,Date.valueOf(flight.getReturnDate()));
			st.setString(8,flight.getFlightID());
			st.executeUpdate();
		} catch (SQLException e) {
			System.out.println(sql);
			printingSQLExc.SQLExceptionPrinter(e);
			valid = false;
		}
	}
}
	
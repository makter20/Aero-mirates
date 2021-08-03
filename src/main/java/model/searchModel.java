package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import oracleConnection.WebConnection;
import oracleConnection.printingSQLExc;

public class searchModel {
	private boolean valid = false;
	private List<List<String>> scheduledFlights;
	private List<List<String>> flights;
	private List<List<String>> users;
	private ResultSet rs;
	
	
	
	public boolean findSchedule(scheduleModel schedule) {
		try (Connection connection = WebConnection.getConnection()) {
			String sql = "SELECT * FROM SCHEDULES WHERE SCHEDULEID = ? AND "
					+ "SOURCEID = ? AND DESTINATIONID = ? AND CAPACITY = ?"
					
//					+ "AND SCHEDULEDDATE = ? "
					+ "AND FLIGHTID = ?";
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, schedule.getScheduleID());
			st.setString(2, schedule.getSourceID());
			st.setString(3, schedule.getDestinationID());
			st.setInt(4, schedule.getCapacity());
//			st.setString(5, schedule.getScheduleDate());
			st.setString(5, schedule.getFlightID());
			rs = st.executeQuery();
			if (rs.next()) {
				valid = true;
			}			
		} catch (SQLException e) {
			valid = true;
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return valid;
	}	
	
	public List<List<String>> getAll() {
		scheduledFlights = new ArrayList<List<String>>();
		try (Connection connection = WebConnection.getConnection()) {
			Statement st = connection.createStatement();
			String sqlQuery = "SELECT * FROM SCHEDULES";
			rs = st.executeQuery(sqlQuery);
			while(rs.next()) {
				scheduledFlights.add(new ArrayList<String>());
				scheduledFlights.get(scheduledFlights.size()-1)
								.add(rs.getString("scheduleId"));
				scheduledFlights.get(scheduledFlights.size()-1)
								.add(rs.getString("sourceId"));
				scheduledFlights.get(scheduledFlights.size()-1)
								.add(rs.getString("destinationId"));
				scheduledFlights.get(scheduledFlights.size()-1)
								.add(rs.getString("capacity"));
				scheduledFlights.get(scheduledFlights.size()-1)
								.add(rs.getString("scheduledDate"));
				scheduledFlights.get(scheduledFlights.size()-1)
								.add(rs.getString("flightId"));
			}			
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return scheduledFlights;
	}	
	
	public List<List<String>> getAllFlights() {
		flights = new ArrayList<List<String>>();
		try (Connection connection = WebConnection.getConnection()) {
			Statement st = connection.createStatement();
			String sqlQuery = "SELECT * FROM Flight";
			rs = st.executeQuery(sqlQuery);
			while(rs.next()) {
				flights.add(new ArrayList<String>());
				flights.get(flights.size()-1)
								.add(rs.getString("flightId"));
				flights.get(flights.size()-1)
								.add(rs.getString("flightName"));
				flights.get(flights.size()-1)
								.add(rs.getString("airlineName"));
			}			
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return flights;
	}
	
	public List<List<String>> getAllUsers() {
		users = new ArrayList<List<String>>();
		try (Connection connection = WebConnection.getConnection()) {
			Statement st = connection.createStatement();
			String sqlQuery = "SELECT * FROM USERS";
			rs = st.executeQuery(sqlQuery);
			while(rs.next()) {
				users.add(new ArrayList<String>());
				users.get(users.size()-1)
								.add(rs.getString("userId"));
				users.get(users.size()-1)
								.add(rs.getString("fname"));
				users.get(users.size()-1)
								.add(rs.getString("lname"));
				users.get(users.size()-1)
								.add(rs.getString("password"));
				users.get(users.size()-1)
								.add(rs.getString("phoneNumber"));
				users.get(users.size()-1)
								.add(rs.getString("emailId"));
				users.get(users.size()-1)
								.add(rs.getString("userType"));
				users.get(users.size()-1)
								.add(rs.getString("DOB"));
			}			
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return users;
	}	
	
	public boolean findFlight(flightModel flight) {
		valid = false;
		String sql = "SELECT * FROM FLIGHT WHERE flightId = ? AND flightName = "
				+ "? AND airlineName = ?";
		try (Connection connection = WebConnection.getConnection()) {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, flight.getFlightID());
			st.setString(2, flight.getFlightName());
			st.setString(3, flight.getAirlineName());
			System.out.println(st.toString());
			rs = st.executeQuery();
			if (rs.next()) {
				valid = true;
			}			
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return valid;
	}
}
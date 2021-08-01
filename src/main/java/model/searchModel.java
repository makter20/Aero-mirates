package model;
import java.sql.Connection;
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
	private ResultSet rs;
	
	
	
	public List<List<String>> search(queryModel query) {
		scheduledFlights = new ArrayList<List<String>>();
		try (Connection connection = WebConnection.getConnection()) {
			Statement st = connection.createStatement();
			String sqlQuery = "SELECT * FROM SCHEDULE WHERE SOURCE_ID =\'" 
					+ query.getDeparting_from() + "\'" + " AND DESTINATIONID=\'" 
					+ query.getGoing_to() + "\'" + " AND DEPARTING_DATE=\'" 
					+ query.getDeparting_date() +"\'" + " AND RETURNING_DATE=\'"
					+ query.getReturning_date() + "\'";
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
								.add(rs.getString("scheduledtime"));
				scheduledFlights.get(scheduledFlights.size()-1)
								.add(rs.getString("flightId"));
			}			
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return scheduledFlights;
	}	
	
	public List<List<String>> getAll() {
		scheduledFlights = new ArrayList<List<String>>();
		try (Connection connection = WebConnection.getConnection()) {
			Statement st = connection.createStatement();
			String sqlQuery = "SELECT * FROM SCHEDULE";
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
								.add(rs.getString("scheduledtime"));
				scheduledFlights.get(scheduledFlights.size()-1)
								.add(rs.getString("flightId"));
			}			
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return scheduledFlights;
	}	
}
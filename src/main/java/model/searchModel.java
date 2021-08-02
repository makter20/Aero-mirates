package model;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import oracleConnection.WebConnection;
import oracleConnection.printingSQLExc;
import java.sql.*;

public class searchModel {
	private List<List<String>> scheduledFlights;
	private ResultSet rs;
	public static String seat;
	
	public List<List<String>> search(queryModel query) {
		scheduledFlights = new ArrayList<List<String>>();
		try (Connection connection = WebConnection.getConnection()) {
			
			String pquery = "SELECT * FROM SCHEDULES WHERE sourceId = ? AND destinationId = ?";
			PreparedStatement pst = connection.prepareStatement(pquery);
			pst.setString(1, query.getDeparting_from());
			pst.setString(2, query.getGoing_to());
			rs = pst.executeQuery();
			
//			Statement st = connection.createStatement();
//			String sqlQuery = "SELECT * FROM SCHEDULES WHERE sourceId =\'" 
//					+ query.getDeparting_from() + "\'" + " AND destinationId=\'" 
//					+ query.getGoing_to() + "\'";
			        //+ " AND scheduledDate=\'" 
					//+ query.getDeparting_date() +"\'"; 
//					+ " AND RETURNING_DATE=\'"
//					+ query.getReturning_date() + "\'";
//			rs = st.executeQuery(sqlQuery);
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
				seat = rs.getString("capacity");
				scheduledFlights.get(scheduledFlights.size()-1)
								.add(rs.getString("scheduledDate"));
//				scheduledFlights.get(scheduledFlights.size()-1)
//								.add(rs.getString("scheduledtime"));
				scheduledFlights.get(scheduledFlights.size()-1)
								.add(rs.getString("flightId"));
				
			}
			rs.close();
			connection.close();
			
		} catch (SQLException e) {
			printingSQLExc.SQLExceptionPrinter(e);
		}
		return scheduledFlights;
	}	
}
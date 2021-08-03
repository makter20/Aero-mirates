package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import oracleConnection.WebConnection;
import oracleConnection.printingSQLExc;

public class flightInputModel {
	private boolean valid = true;
	private ResultSet rs;
	private static final String sql= "INSERT INTO Flight (flightID, flightName,"
								+ " airlineName) "
								+ "VALUES (?,?,?)";
	public void insertFlight(flightModel flight) throws ClassNotFoundException {
		try(Connection con = WebConnection.getConnection()) {
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,flight.getFlightID());
			st.setString(2,flight.getFlightName());
			st.setString(3,flight.getAirlineName());
			st.executeUpdate();
		} catch (SQLException e) {
			System.out.println(sql);
			printingSQLExc.SQLExceptionPrinter(e);
			valid = false;
		}
	}
}
	
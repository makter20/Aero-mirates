package flight;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import exception.NoFlightsPresentException;
import model.Airport;
import model.City;
import model.Flight;
import model.FlightData;
import util.ConnectionManager;

public class LocationManagement {

	public List<City> getCities() throws SQLException {
		List<City> cities = new ArrayList<City>();

		try {
			Connection connection = ConnectionManager.getConnection();
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM CITY");

			while (resultSet.next()) {
				cities.add(new City(resultSet.getString(1), resultSet.getString(2)));
			}
			return cities;

		} catch (SQLException e) {
			throw e;
		}
	}

	public List<Airport> getAirports() throws SQLException {
		List<Airport> airports = new ArrayList<Airport>();

		try {
			Connection connection = ConnectionManager.getConnection();
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM Airport");

			while (resultSet.next()) {
				airports.add(new Airport(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3)));
			}
			return airports;

		} catch (SQLException e) {
			throw e;
		}
	}
	
	public List<Flight> getFlights() throws SQLException {
		List<Flight> flights = new ArrayList<Flight>();
		
		try {
			Connection connection = ConnectionManager.getConnection();
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM Flight	");
			
			while (resultSet.next()) {
				flights.add(new Flight(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3)));
			}
			return flights;
			
		} catch (SQLException e) {
			throw e;
		}
	}

	public static List<FlightData> searchFlights(String sourceId,String destinationId,String date) throws SQLException, NoFlightsPresentException {
		List<FlightData> flights = new ArrayList<FlightData>();
		List<FlightData> flightsResult = new ArrayList<FlightData>();
		
		try {
			Connection connection = ConnectionManager.getConnection();
			
			String query = "Select * from Schedules where sourceId = '"+sourceId+"' AND destinationId = '"+destinationId+"'";
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			while (resultSet.next()) {
				flights.add(new FlightData(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getInt(4), resultSet.getString(5), resultSet.getString(7)));
			}
			
			for (FlightData flightData : flights) {
				String[] arr = flightData.getScheduleDate().split(" ");
				flightData.setScheduleDate(arr[0]);
				flightData.setScheduleTime(arr[1]);
				if(flightData.getScheduleDate().equals(date))
					flightsResult.add(flightData);
					
			}
			if(flightsResult.size()==0)
				throw new NoFlightsPresentException("No Flights is present at the moment for given time and location");
			else
			return flightsResult;
		} catch (SQLException e) {
			throw e;
		}
	}
}

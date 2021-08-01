package model;

public class Flight {

	private String flightId;
	private String flightName;
	private String airlineName;
	
	public Flight() {
	
	}

	public Flight(String flightId, String flightName, String airlineName) {
		super();
		this.flightId = flightId;
		this.flightName = flightName;
		this.airlineName = airlineName;
	}

	public String getFlightId() {
		return flightId;
	}

	public void setFlightId(String flightId) {
		this.flightId = flightId;
	}

	public String getFlightName() {
		return flightName;
	}

	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}

	public String getAirlineName() {
		return airlineName;
	}

	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}
	
	
	
}

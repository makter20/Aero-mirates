package model;

import java.time.LocalDateTime;

public class flightModel {
	
	private String flightDestination;
	private String flightArrival;
	private String totalSeat;
	private LocalDateTime flightDate;
	private String flightName;
	private String flightID;
	private String airlineName;
	
	
	public flightModel(String flightName, String flightID, String airlineName) {
		super();
		this.flightName = flightName;
		this.flightID = flightID;
		this.airlineName = airlineName;
	}
	public String getFlightID() {
		return flightID;
	}
	public void setFlightID(String flightID) {
		this.flightID = flightID;
	}
	public String getAirlineName() {
		return airlineName;
	}
	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}
	public String getFlightName() {
		return flightName;
	}
	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}
	public String getFlightDestination() {
		return flightDestination;
	}
	public void setFlightDestination(String flightDestination) {
		this.flightDestination = flightDestination;
	}
	public String getFlightArrival() {
		return flightArrival;
	}
	public void setFlightArrival(String flightArrival) {
		this.flightArrival = flightArrival;
	}
	public String getTotalSeat() {
		return totalSeat;
	}
	public void setTotalSeat(String totalSeat) {
		this.totalSeat = totalSeat;
	}
	public LocalDateTime getFlightDate() {
		return flightDate;
	}
	public void setFlightDate(LocalDateTime flightDate) {
		this.flightDate = flightDate;
	}
	
	

}

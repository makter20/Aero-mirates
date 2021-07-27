package model;

import java.time.LocalDateTime;

public class flightModel {
	
	private String flightDestination;
	private String flightArrival;
	private String totalSeat;
	private LocalDateTime flightDate;
	private String flightName;
	
	
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

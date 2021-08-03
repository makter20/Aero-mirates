package model;

public class scheduleModel {
	private String scheduleID;
	private String flightID;
	private String sourceID;
	private String destinationID;
	private int capacity;
	private String scheduleDate;
	private String scheduleTime;
	private String returnDate;
	
	public scheduleModel(String scheduleID, String flightID, String sourceID, String destinationID, int capacity,
			String scheduleDate, String scheduleTime, String returnDate) {
		super();
		this.scheduleID = scheduleID;
		this.flightID = flightID;
		this.sourceID = sourceID;
		this.destinationID = destinationID;
		this.capacity = capacity;
		this.scheduleDate = scheduleDate;
		this.scheduleTime = scheduleTime;
		this.returnDate = returnDate;
	}
	
	public String getScheduleID() {
		return scheduleID;
	}
	public void setScheduleID(String scheduleID) {
		this.scheduleID = scheduleID;
	}
	public String getSourceID() {
		return sourceID;
	}
	public void setSourceID(String sourceID) {
		this.sourceID = sourceID;
	}
	public String getDestinationID() {
		return destinationID;
	}
	public void setDestinationID(String destinationID) {
		this.destinationID = destinationID;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public String getScheduleDate() {
		return scheduleDate;
	}
	public void setScheduleDate(String scheduleDate) {
		this.scheduleDate = scheduleDate;
	}
	public String getFlightID() {
		return flightID;
	}
	public void setFlightID(String flightID) {
		this.flightID = flightID;
	}

	public String getScheduleTime() {
		return scheduleTime;
	}

	public void setScheduleTime(String scheduleTime) {
		this.scheduleTime = scheduleTime;
	}

	public String getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}
	
}

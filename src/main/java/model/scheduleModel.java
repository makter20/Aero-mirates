package model;

public class scheduleModel {
	private String scheduleID;
	private String sourceID;
	private String destinationID;
	private int capacity;
	private String scheduleDate;
	private String flightID;
	
	public scheduleModel(String scheduleID, String sourceID, String destinationID, int capacity, String scheduleDate,
			String flightID) {
		super();
		this.scheduleID = scheduleID;
		this.sourceID = sourceID;
		this.destinationID = destinationID;
		this.capacity = capacity;
		this.scheduleDate = scheduleDate;
		this.flightID = flightID;
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
}

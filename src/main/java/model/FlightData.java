package model;

import java.sql.Date;
import java.sql.Time;

public class FlightData {

	private String scheduleId;
	private String source;
	private String destination;
	private int capacity;
	private String scheduleDate;
	private String scheduleTime;
	private String flightId;

	public FlightData() {

	}

	public FlightData(String scheduleId, String source, String destination, int capacity, String scheduleDate,
		 String flightId) {
		super();
		this.scheduleId = scheduleId;
		this.source = source;
		this.destination = destination;
		this.capacity = capacity;
		this.scheduleDate = scheduleDate;
		this.flightId = flightId;
	}

	public String getScheduleId() {
		return scheduleId;
	}

	public void setScheduleId(String scheduleId) {
		this.scheduleId = scheduleId;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
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

	public String getScheduleTime() {
		return scheduleTime;
	}

	public void setScheduleTime(String scheduleTime) {
		this.scheduleTime = scheduleTime;
	}

	public String getFlightId() {
		return flightId;
	}

	public void setFlightId(String flightId) {
		this.flightId = flightId;
	}

	@Override
	public String toString() {
		return "FlightData [scheduleId=" + scheduleId + ", source=" + source + ", destination=" + destination
				+ ", capacity=" + capacity + ", scheduleDate=" + scheduleDate + ", scheduleTime=" + scheduleTime
				+ ", flightId=" + flightId + "]";
	}

}

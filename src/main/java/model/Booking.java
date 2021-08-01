package model;

public class Booking {

	private String bookingId;
	private String source;
	private String destination;
	private String flightDate;
	private String seatNumber;
	
	public Booking() {
	
	}

	public Booking(String bookingId, String source, String destination, String flightDate, String seatNumber) {
		super();
		this.bookingId = bookingId;
		this.source = source;
		this.destination = destination;
		this.flightDate = flightDate;
		this.seatNumber = seatNumber;
	}

	public String getBookingId() {
		return bookingId;
	}

	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
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

	public String getFlightDate() {
		return flightDate;
	}

	public void setFlightDate(String flightDate) {
		this.flightDate = flightDate;
	}

	public String getSeatNumber() {
		return seatNumber;
	}

	public void setSeatNumber(String seatNumber) {
		this.seatNumber = seatNumber;
	}

	@Override
	public String toString() {
		return "Booking [bookingId=" + bookingId + ", source=" + source + ", destination=" + destination
				+ ", flightDate=" + flightDate + ", seatNumber=" + seatNumber + "]";
	}
	
}

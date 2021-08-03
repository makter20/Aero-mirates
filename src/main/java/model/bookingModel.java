package model;

public class bookingModel {

		private String bookingId;
		private String scheduleId;
		private String email;
		private String flightDate;
		private String seatNumber;

		public bookingModel(String bookingId, String email, String scheduleId, String flightDate, String seatNumber) {
			super();
			this.bookingId = bookingId;
			this.scheduleId = scheduleId;
			this.email = email;
			this.flightDate = flightDate;
			this.seatNumber = seatNumber;
		}
		
		public bookingModel() {
			
		}

		public String getBookingId() {
			return bookingId;
		}

		public void setBookingId(String bookingId) {
			this.bookingId = bookingId;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
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
			return "Booking [bookingId=" + bookingId + ", scheduleId=" + scheduleId + ", email=" + email
					+ ", flightDate=" + flightDate + ", seatNumber=" + seatNumber + "]";
		}

		public String getScheduleId() {
			return scheduleId;
		}

		public void setScheduleId(String scheduleId) {
			this.scheduleId = scheduleId;
		}
		
	}


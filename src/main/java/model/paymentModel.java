package model;

public class paymentModel {

	private String paymentId;
	private String paymentMode;
	private String amount;
	private String bookingId;
	
	public paymentModel(String paymentId, String paymentMode, String amount, String bookingId) {
		this.paymentId = paymentId;
		this.paymentMode = paymentMode;
		this.amount = amount;
		this.bookingId = bookingId;
	}
	
	public String getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}
	public String getPaymentMode() {
		return paymentMode;
	}
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getBookingId() {
		return bookingId;
	}
	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}
}

package order;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import exception.NoBookingsPresentException;
import model.Booking;
import util.ConnectionManager;

public class OrderManager {

	public String placeOrder(String userId, String scheduleId, String paymentMode,String amount) throws SQLException {
		
		String newBookingId = "1";
		String newPaymentId = "1";
		String seatNumber = null;
		
		Connection connection = ConnectionManager.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultSet2 = statement.executeQuery("SELECT capacity from Schedules where scheduleId='"+scheduleId+"'");
		while(resultSet2.next()) {
			seatNumber = String.valueOf(resultSet2.getInt(1));
		}
			
		ResultSet resultSet = statement.executeQuery("SELECT * from booking");
		
		while(resultSet.next()) {
			newBookingId = String.valueOf(Integer.parseInt(resultSet.getString(1))+1);
		}
		
		statement.executeQuery("INSERT INTO Booking (bookingId, userId, scheduleId, bookingDate, seatNumber) VALUES ('"+newBookingId+"','"+userId+"','"+scheduleId+"', DATE'"+String.valueOf(LocalDate.now())+"','"+seatNumber+"')");
		statement.execute("UPDATE Schedules SET capacity="+(Integer.parseInt(seatNumber)-1)+" where scheduleId='"+scheduleId+"'");
		resultSet = statement.executeQuery("SELECT * from payment");
		
		while(resultSet.next()) {
			newPaymentId = String.valueOf(Integer.parseInt(resultSet.getString(1))+1);
		}
		statement.execute("INSERT INTO Payment (paymentId, paymentMode, amount,  bookingId) VALUES ('"+newPaymentId+"','"+paymentMode+"','"+amount+"','"+newBookingId+"')");
		String message = "Thankyou for booking your flight with us. You Payment Id is "+newPaymentId+" and your bookingId is "+newBookingId;
		return "Order Placed";
		
	}

	public List<Booking> getBookingbyUser(String userId) throws SQLException, NoBookingsPresentException {
		List<Booking> bookings = new ArrayList<Booking>();
		
		Connection connection = ConnectionManager.getConnection();
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery("SELECT * FROM BOOKING WHERE USERID='"+userId+"'");
		
		while(resultSet.next()) {
			Booking booking = new Booking();
			booking.setBookingId(resultSet.getString(1));
			booking.setSeatNumber(resultSet.getString(5));
			Statement statement2 = connection.createStatement();
			ResultSet resultSet2 = statement2.executeQuery("SELECT * FROM Schedules WHERE scheduleId='"+resultSet.getShort(3)+"'");
			while(resultSet2.next()) {
				booking.setSource(resultSet2.getString(2));
				booking.setDestination(resultSet2.getString(3));
				booking.setFlightDate(String.valueOf(resultSet2.getDate(5)));
			}
			bookings.add(booking);
		}
		
		if(bookings.size()==0)
			throw new NoBookingsPresentException("No Bookings Made at the present moment");
		else 
			return bookings;
	}
}

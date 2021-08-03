package model;



import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;


public class PaymentManager {

    public boolean processPayment(String paymentMode,String bookingId) {

        boolean isProcessed = false;
        String paymentId = null;

        Random random = new Random();
        String amount = String.valueOf(random.nextInt(50)+150);
        try {
            Connection connection = ConnectionManager.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(Queries.getAllPayments);

            while(resultSet.next()) {
                paymentId = resultSet.getString(1);
            }

            if(paymentId == null)
                paymentId = "1";
            else
                paymentId = String.valueOf((Integer.parseInt(paymentId))+1);

            String query = "INSERT INTO Payment (paymentId, paymentMode, amount,  bookingId) VALUES ('"+paymentId+"','"+paymentMode+"','"+amount+"','"+bookingId+"');";
            return true;

        } catch (SQLException e) {
            System.err.println("INSERT INTO Payment (paymentId, paymentMode, amount,  bookingId) VALUES ('"+paymentId+"','"+paymentMode+"','"+amount+"','"+bookingId+"');");
        }

        return isProcessed;
    }
}


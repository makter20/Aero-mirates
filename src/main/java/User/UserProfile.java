package User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.User;
import util.ConnectionManager;

public class UserProfile {

	public User updateUserProfile(String userId, String userFirstName, String userLastName, String phoneNumber) throws SQLException {
		User user = null;
		
		try {
			Connection connection = ConnectionManager.getConnection();
			String query = "";
			query = query+"Update Users ";
			query = query+ "SET fname='"+userFirstName+"',";
			query = query+ "lname='"+userLastName+"',";
			query = query+ "phoneNumber='"+phoneNumber+"' ";
			query = query+ "where userId = '"+userId+"'";

			Statement statement = connection.createStatement();
			statement.executeUpdate(query);
			ResultSet resultSet = statement.executeQuery("Select * FROM Users where userId='"+userId+"'");
			user = new User();
			while(resultSet.next()) {
				user.setUserId(resultSet.getString(1));
				user.setUserFirstName(resultSet.getString(2));
				user.setUserLastName(resultSet.getString(3));
				user.setUserPhoneNumber(resultSet.getString(4));
				user.setUserEmail(resultSet.getString(5));
			}
			return user;
			
		} catch (SQLException e) {
			throw e;
		}
		
	}
}

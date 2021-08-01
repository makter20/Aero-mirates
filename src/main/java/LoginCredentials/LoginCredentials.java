package LoginCredentials;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import exception.InvalidPasswordException;
import exception.UserAlreadyExistsException;
import exception.UserNotPresentException;
import model.User;
import util.ConnectionManager;

public class LoginCredentials {

	public String signUpUser(String userFirstName, String userLastName, String phoneNumber, String emailId,
			String password) throws SQLException, UserAlreadyExistsException {

		boolean isUserPresent = false;
		String userId = null;
		try {
			Connection connection = ConnectionManager.getConnection();
			String query = "SELECT * from Users";
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			// checking if email AlreadyExists.
			while (resultSet.next()) {
				if (resultSet.getString(5).equalsIgnoreCase(emailId)) {
					isUserPresent = true;
					break;
				} else {
					userId = resultSet.getString(1);
				}
			}

			if (isUserPresent)
				throw new UserAlreadyExistsException("User with this Email is already present");

			if (userId != null) {
				userId = userId.substring(0, 2) + (Integer.parseInt(userId.substring(2, userId.length())) + 1);
			} else {
				userId = "U-1";
			}
			System.out.println(isUserPresent);

			query = "INSERT INTO USERS(userId,fname,lname,phoneNumber,emailId) values('" + userId + "','"
					+ userFirstName + "','" + userLastName + "','" + phoneNumber + "','" + emailId + "')";
			PreparedStatement insertStatement = connection.prepareStatement(query);

			statement.executeUpdate(query);

			query = "INSERT INTO LoginCredentials(userEmail,userPassword) values('" + emailId + "','" + password + "')";
			insertStatement = connection.prepareStatement(query);
			statement.executeUpdate(query);
			connection.close();
			return "User account succesfully created";

		} catch (SQLException e) {
			throw e;
		}
	}
	
	public User logInUser(String emailId, String password) throws SQLException, InvalidPasswordException, UserNotPresentException {
		
		User user = null;
		try {
			Connection connection = ConnectionManager.getConnection();
			String query = "SELECT * from LoginCredentials";
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				if (resultSet.getString(1).equalsIgnoreCase(emailId)) {
					if(resultSet.getString(2).equals(password)) {
						user = new User();
						user.setUserEmail(emailId);
						
						query = "SELECT * FROM USERS where emailId='"+user.getUserEmail()+"'";
						resultSet = statement.executeQuery(query);
						
						while(resultSet.next()) {
							user.setUserId(resultSet.getString(1));
							user.setUserFirstName(resultSet.getString(2));
							user.setUserLastName(resultSet.getString(3));
							user.setUserPhoneNumber(resultSet.getString(4));
						}
					}
					else {
						throw new InvalidPasswordException("Given password is  not correct.");
					}
				}
				
			}
			if(user == null)
				throw new UserNotPresentException("Given emailId doesn't exists.");
			else
				return user;
		} catch (SQLException e) {
			throw e;
		}
	}
}

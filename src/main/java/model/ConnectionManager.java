package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {


    // this methods helps you to connect to oracle database.
    public static Connection getConnection() throws SQLException{
        // this is the url of your database
        String dbUrl = "jdbc:oracle:thin:@localhost:1521:xe";

        // this is the username and the password
        String userName = "SYSTEM";
        String password = "root";

        Connection connection = null;

        // this is the inbuilt method of java ojdbc jar file which take username, password and url as input and return you the connection.
        try {
            connection = DriverManager.getConnection(dbUrl,userName,password);
        }
        // this is to catch the SQL exception which can happen bcz of number
        // of reasons like Database not present, Table not table, column not present in table or datatype of a column is not same
        catch (SQLException e) {
            throw e;
        }
        return connection;
    }
}
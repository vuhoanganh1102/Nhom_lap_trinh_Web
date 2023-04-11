package com.baitaplon.laptrinhweb.database;

import com.baitaplon.laptrinhweb.model.User;

import java.sql.*;

public class UserDao {
    public boolean validate(User user) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/laptrinhweb?useSSL=false", "root", "nam01669383590.");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection
                     .prepareStatement("select * from customer where username = ? and password = ? ")) {
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }
    public String fingByUsername(String username) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/laptrinhweb?useSSL=false", "root", "nam01669383590.");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection
                     .prepareStatement("SELECT firstname,lastname FROM customer WHERE username = ?")) {
            preparedStatement.setString(1, username);

            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                // Lấy giá trị firstname từ kết quả trả về
                String firstname = resultSet.getString("firstname");
                String lastname = resultSet.getString("lastname");
                // Lưu giá trị firstname vào request attribute
                return firstname + " " + lastname;
            }

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return null;
    }
    public boolean singup(User user) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/laptrinhweb", "root", "nam01669383590.");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection
                     .prepareStatement("INSERT INTO customer (firstname,lastname ,username, password,contact) VALUES (?,?,?,?,?)")) {
            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getLastName());
            preparedStatement.setString(3, user.getUsername());
            preparedStatement.setString(4, user.getPassword());
            preparedStatement.setString(5, user.getContact());
            preparedStatement.executeUpdate();
            System.out.println(preparedStatement);
            return true;
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
            return false;
        }
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}

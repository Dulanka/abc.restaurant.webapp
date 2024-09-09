package abc.restaurant.webapp.Dao;

import abc.restaurant.webapp.Util.DatabaseUtil;
import abc.restaurant.webapp.Model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerDAO {

    public boolean registerCustomer(Customer customer) {
        String sql = "INSERT INTO customers (name, email, mobileNumber, homeAddress, dob) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DatabaseUtil.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            
            statement.setString(1, customer.getName());
            statement.setString(2, customer.getEmail());
            statement.setString(3, customer.getMobileNumber());
            statement.setString(4, customer.getHomeAddress());
            statement.setString(5, customer.getDob());

            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
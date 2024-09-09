package abc.restaurant.webapp.Dao;

import abc.restaurant.webapp.Model.Reservation;
import abc.restaurant.webapp.Util.DatabaseUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReservationDAO {

    public void saveReservation(Reservation reservation) throws SQLException {
        String sql = "INSERT INTO reservations (name, reservationDate, time, numberOfPeople, serviceType) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DatabaseUtil.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, reservation.getName());
            statement.setDate(2, new java.sql.Date(reservation.getReservationDate().getTime()));
            statement.setString(3, reservation.getTime());
            statement.setInt(4, reservation.getNumberOfPeople());
            statement.setString(5, reservation.getServiceType());
            statement.executeUpdate();
        }
    }

    public List<Reservation> getAllReservations() throws SQLException {
        List<Reservation> reservations = new ArrayList<>();
        String sql = "SELECT * FROM reservations";

        try (Connection connection = DatabaseUtil.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {

            while (resultSet.next()) {
                Reservation reservation = new Reservation();
                reservation.setId(resultSet.getInt("id"));
                reservation.setName(resultSet.getString("name"));
                reservation.setReservationDate(resultSet.getDate("reservationDate"));
                reservation.setTime(resultSet.getString("time"));
                reservation.setNumberOfPeople(resultSet.getInt("numberOfPeople"));
                reservation.setServiceType(resultSet.getString("serviceType"));
                reservations.add(reservation);
            }
        }
        return reservations;
    }

    // Additional methods like updateReservation, deleteReservation can be added here
}
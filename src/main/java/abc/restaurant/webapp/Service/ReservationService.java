package abc.restaurant.webapp.Service;

import abc.restaurant.webapp.Dao.ReservationDAO;
import abc.restaurant.webapp.Model.Reservation;

import java.sql.SQLException;
import java.util.List;

public class ReservationService {

    private final ReservationDAO reservationDAO = new ReservationDAO();

    public void addReservation(Reservation reservation) throws SQLException {
        reservationDAO.saveReservation(reservation);
    }

    public List<Reservation> listAllReservations() throws SQLException {
        return reservationDAO.getAllReservations();
    }

    // Additional service methods can be added here
}
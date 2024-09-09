package abc.restaurant.webapp.Controller;

import abc.restaurant.webapp.Model.Reservation;
import abc.restaurant.webapp.Service.ReservationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet("/reservation")
public class ReservationController extends HttpServlet {

    private final ReservationService reservationService = new ReservationService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String reservationDate = request.getParameter("reservationDate");
        String time = request.getParameter("time");
        int numberOfPeople = Integer.parseInt(request.getParameter("numberOfPeople"));
        String serviceType = request.getParameter("serviceType");

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            Reservation reservation = new Reservation(name, dateFormat.parse(reservationDate), time, numberOfPeople, serviceType);
            reservationService.addReservation(reservation);
            response.sendRedirect("reservation-success.jsp");
        } catch (ParseException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
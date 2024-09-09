package abc.restaurant.webapp.Controller;

import abc.restaurant.webapp.Model.Customer;
import abc.restaurant.webapp.Service.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/registerCustomer")
public class CustomerController extends HttpServlet {

    private CustomerService customerService = new CustomerService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobileNumber = request.getParameter("mobileNumber");
        String homeAddress = request.getParameter("homeAddress");
        String dob = request.getParameter("dob");

        // Create a new Customer object
        Customer customer = new Customer();
        customer.setName(name);
        customer.setEmail(email);
        customer.setMobileNumber(mobileNumber);
        customer.setHomeAddress(homeAddress);
        customer.setDob(dob);

        // Register customer using the service layer
        boolean isRegistered = customerService.registerCustomer(customer);

        if (isRegistered) {
            // If successful, show success message
            request.setAttribute("successMessage", "Customer registered successfully!");
        } else {
            request.setAttribute("errorMessage", "Customer registration failed. Please try again.");
        }

        // Forward the request back to the JSP page
        request.getRequestDispatcher("registerCustomer.jsp").forward(request, response);
    }
}
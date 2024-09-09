package abc.restaurant.webapp.Service;

import abc.restaurant.webapp.Dao.CustomerDAO;
import abc.restaurant.webapp.Model.Customer;

public class CustomerService {

    private CustomerDAO customerDAO = new CustomerDAO();

    public boolean registerCustomer(Customer customer) {
        return customerDAO.registerCustomer(customer);
    }
}
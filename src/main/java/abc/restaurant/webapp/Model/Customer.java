package abc.restaurant.webapp.Model;

public class Customer {
    private int id;
    private String name;
    private String email;
    private String mobileNumber;
    private String homeAddress;
    private String dob;

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getMobileNumber() { return mobileNumber; }
    public void setMobileNumber(String mobileNumber) { this.mobileNumber = mobileNumber; }

    public String getHomeAddress() { return homeAddress; }
    public void setHomeAddress(String homeAddress) { this.homeAddress = homeAddress; }

    public String getDob() { return dob; }
    public void setDob(String dob) { this.dob = dob; }
}
package abc.restaurant.webapp.Model;

import java.util.Date;

public class Reservation {
    private int id;
    private String name;
    private Date reservationDate;
    private String time;
    private int numberOfPeople;
    private String serviceType;

    // Constructors
    public Reservation() {}

    public Reservation(String name, Date reservationDate, String time, int numberOfPeople, String serviceType) {
        this.name = name;
        this.reservationDate = reservationDate;
        this.time = time;
        this.numberOfPeople = numberOfPeople;
        this.serviceType = serviceType;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getReservationDate() {
        return reservationDate;
    }

    public void setReservationDate(Date reservationDate) {
        this.reservationDate = reservationDate;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getNumberOfPeople() {
        return numberOfPeople;
    }

    public void setNumberOfPeople(int numberOfPeople) {
        this.numberOfPeople = numberOfPeople;
    }

    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    }
}
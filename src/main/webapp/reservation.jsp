<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Make a Reservation</title>
    <link rel="stylesheet" type="text/css" href="Reservation.css">
    <script>
        function showMessage(message) {
            if (message) {
                alert(message); // Show an alert for the message
            }
        }
    </script>
</head>
<body>
    <header>
        <div class="logo">
            <img src="picture/4.png" alt="Masala Logo">
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="Product.html">Products and Services</a></li> 
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="SearchD.html">Search Facilities</a></li>
                <li><a href="availability.html">Check Availability</a></li>
                <li><a href="submit-query.jsp">Submit Queries</a></li>
                <li><a href="payment.jsp">Make Payment</a></li>
                <li><a href="reservation.jsp">Reservations</a></li>
                <li><a href="registerCustomer.jsp">Register</a></li>
            </ul>
        </nav>
        <a href="login.jsp" class="login-btn">Login</a>
    </header>
    

<div class="reservation-form-container">
    <form action="reservation" method="post">
        <h2>Make a Reservation</h2>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>

        <label for="reservationDate">Reservation Date:</label>
        <input type="date" id="reservationDate" name="reservationDate" required><br>

        <label for="time">Time:</label>
        <input type="time" id="time" name="time" required><br>

        <label for="numberOfPeople">Number of People:</label>
        <input type="number" id="numberOfPeople" name="numberOfPeople" required><br>

        <label for="serviceType">Service Type:</label>
        <select id="serviceType" name="serviceType">
            <option value="Breakfast">Breakfast</option>
            <option value="Lunch">Lunch</option>
            <option value="Dinner">Dinner</option>
        </select><br>

        <button type="submit">Submit Reservation</button>
    </form>
</div>

<!-- JavaScript to Display Message -->
<script>
    <% String message = (String) request.getAttribute("message"); %>
    showMessage("<%= message != null ? message : "" %>");
</script>

</body>
</html>

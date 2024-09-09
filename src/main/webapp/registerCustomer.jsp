<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Registration</title>
    <link rel="stylesheet" type="text/css" href="CustomerRegi.css"> 
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

    <div class="container">
        <h2>Customer Registration</h2>

        <!-- Display success or error message -->
        <c:if test="${not empty successMessage}">
            <div class="success-message">${successMessage}</div>
        </c:if>
        <c:if test="${not empty errorMessage}">
            <div class="error-message">${errorMessage}</div>
        </c:if>

        <form action="registerCustomer" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>

            <label for="mobileNumber">Mobile Number:</label>
            <input type="text" id="mobileNumber" name="mobileNumber" required><br>

            <label for="homeAddress">Home Address:</label>
            <textarea id="homeAddress" name="homeAddress" required></textarea><br>

            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required><br>
            
            <button type="submit">Register Customer</button>
        </form>
    </div>

</body>
</html>

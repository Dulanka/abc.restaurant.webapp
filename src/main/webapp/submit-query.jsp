<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Submit Query</title>
    <link rel="stylesheet"  type="text/css" href="submit.css">
   
    <script>
        function validateForm() {
            var name = document.forms["queryForm"]["name"].value;
            var email = document.forms["queryForm"]["email"].value;
            var message = document.forms["queryForm"]["message"].value;
            if (name == "" || email == "" || message == "") {
                document.getElementById("error").innerHTML = "All fields are required.";
                return false;
            }
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                document.getElementById("error").innerHTML = "Invalid email format.";
                return false;
            }
            return true;
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
    




    <div class="query-form">
        <h2>Submit Your Query</h2>
        <form name="queryForm" action="submit-query" method="post" onsubmit="return validateForm()">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
            <button type="submit">Submit</button>
        </form>
        <p id="error" class="error-message"></p>
        <p><a href="index.jsp">Back to Home</a></p>
        <% if (request.getAttribute("error") != null) { %>
            <p class="error-message"><%= request.getAttribute("error") %></p>
        <% } %>
    </div>
</body>
</html>

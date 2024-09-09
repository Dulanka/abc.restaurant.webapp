<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="login.css"> <!-- Link to your CSS file -->
</head>
<body>

   

<div class="login-container">
    <form action="user" method="post">
        <input type="hidden" name="action" value="login"/>

        <h2>Login to Your Account</h2>

        <label for="username">Username:</label>
        <input type="text" name="username" id="username" required/>

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required/>

        <input type="submit" value="Login"/>
    </form>

    <% if (request.getParameter("error") != null) { %>
        <p class="error-message">Invalid username or password!</p>
    <% } %>
</div>

</body>
</html>

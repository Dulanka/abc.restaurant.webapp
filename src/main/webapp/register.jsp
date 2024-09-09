<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="Register.css"> 
    
    
</head>
<body>
    <div class="container">

    <form action="user" method="post">
        <input type="hidden" name="action" value="register"/>

        <!-- Registration Fields -->
        Name: <input type="text" name="name" required/><br/>
        Username: <input type="text" name="username" required/><br/>
        Password: <input type="password" name="password" required/><br/>
        Email: <input type="email" name="email" required/><br/>

        <!-- Job Role Dropdown -->
        Job Role: 
        <select name="jobrole">
            <option value="admin">Admin</option>
            <option value="staff">Staff</option>
        </select><br/>

        <!-- Submit Button -->
        <input type="submit" value="Register"/>

        <!-- Button to go to login.jsp -->
        <button type="button" class="login-btn" onclick="window.location.href='login.jsp'">
            Already have an account? Login here
        </button>
    </form>
    </div>

</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - ABC Restaurant</title>
    <link rel="stylesheet" href="admindash.css">
</head>
<body>
 
    
    <nav>
        <h1>ABC Restaurant Admin Dashboard</h1>
        
        <ul>
            <li><a href="admin-dashboard.jsp">Manage Reservations</a></li>
            <li><a href="respondtoquery.html">Respond to Queries</a></li>
            <li><a href="managepayment.html">Manage Payments</a></li>
            <li><a href="admingallery.html">Manage Gallery</a></li>
            <li><a href="reports.html">Generate Reports</a></li>
            <li><a href="register.jsp">Staff Registration</a></li>
            <li><a href="index.jsp">Logout</a></li>
        </ul>
    </nav>

    <main>
        <section id="manage-reservations">
            <h2>Manage Reservations</h2>
            <table id="reservations-table">
                <thead>
                    <tr>
                        <th>Reservation ID</th>
                        <th>Customer Name</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Dynamic rows will be added here -->
                </tbody>
            </table>
            <button onclick="addRow('reservations-table')">Add Reservation</button>
        </section>

       <section id="respond-queries">
            <h2>Respond to Queries</h2>
            <form id="query-form">
                <label for="query-id">Query ID:</label>
                <input type="text" id="query-id" name="query-id" placeholder="Enter Query ID">

                <label for="customer-name">Customer Name:</label>
                <input type="text" id="customer-name" name="customer-name" placeholder="Enter Customer Name">

                <label for="query-response">Response:</label>
                <textarea id="query-response" name="query-response" placeholder="Type your response here"></textarea>

                <button type="submit">Send Response</button>
            </form>
        </section>

        <section id="manage-payments">
            <h2>Manage Payments</h2>
            <form id="payment-form">
                <label for="payment-id">Payment ID:</label>
                <input type="text" id="payment-id" name="payment-id" placeholder="Enter Payment ID">

                <label for="amount">Amount:</label>
                <input type="number" id="amount" name="amount" placeholder="Enter Amount">

                <label for="payment-status">Payment Status:</label>
                <select id="payment-status" name="payment-status">
                    <option value="pending">Pending</option>
                    <option value="completed">Completed</option>
                    <option value="failed">Failed</option>
                </select>

                <button type="submit">Update Payment</button>
            </form>
        </section>

        <section id="generate-reports">
            <h2>Generate Reports</h2>
            <button type="button" onclick="window.location.href='reports.html'">Daily Sales Report</button>
            <button type="button" onclick="window.location.href='reports.html'">Monthly Sales Report</button>
            <div id="report-output"></div>
        </section> 
    </main>


    <script src="admindash.js"></script>
</body>
</html>

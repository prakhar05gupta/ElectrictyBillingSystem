<%@page import="java.util.List"%>
<%@page import="com.ebs.helper.ConnectionProvider"%>
<%@page import="com.ebs.dao.BillDao"%>
<%@page import="com.ebs.entities.Bill"%>
<%@page import="com.ebs.entities.User"%>

<% 
User u = (User) session.getAttribute("currentUser");
if (u == null) {
    response.sendRedirect("login.jsp");
    return;
}

int customer_id = u.getCid();
BillDao billDao = new BillDao(ConnectionProvider.getConnection());
List<Bill> bills = billDao.getBillByCustomerId(customer_id);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Billing - Electricity Billing System</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            color: #333;
            background: #f4f4f4;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            max-width: 1200px;
        }

        /* Header Styles */
        header {
            background: #4CAF50;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
        }

        header p {
            margin: 5px 0 0;
            font-size: 1.2em;
        }

        /* Navigation Styles */
        nav {
            background: #333;
            color: #fff;
            padding: 10px 0;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 1.1em;
        }

        nav ul li a:hover {
            color: #4CAF50;
        }

        /* Billing Details Styles */
        .billing-details {
            background: #fff;
            padding: 30px;
            margin: 50px auto;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
        }

        .billing-details h2 {
            font-size: 2em;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        .billing-details table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .billing-details table th,
        .billing-details table td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }

        .billing-details table th {
            background: #f4f4f4;
            font-weight: bold;
        }

        .billing-details .total-amount {
            font-size: 1.5em;
            font-weight: bold;
            text-align: right;
            color: #4CAF50;
        }

        /* Footer Styles */
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-top: 20px;
        }

        footer p {
            margin: 0;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <h1>Electricity Billing System</h1>
            <p>Manage your electricity consumption and bills efficiently</p>
        </div>
    </header>

    <!-- Navigation Menu -->
    <nav>
        <div class="container">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="billing.jsp">View Bills</a></li>
<!--                <li><a href="">Pay Online</a></li>-->
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="<%= (u != null) ? "Logout_servlet" : "login.jsp" %>">
                    <%= (u != null) ? "Logout" : "Login" %>
                </a></li>
            </ul>
        </div>
    </nav>

    <!-- Billing Details Section -->
    <div class="billing-details container">
        <h2>Your Electricity Bills</h2>

        <% if (bills != null && !bills.isEmpty()) { %>
            <table>
                <tr>
                    <th>Bill ID</th>
                    <th>Billing Period</th>
                    <th>Units Consumed</th>
                    <th>Rate per Unit (&#8377;)</th>
                    <th>Total Amount (&#8377;)</th>
                </tr>
                <% for (Bill bill : bills) { %>
                    <tr>
                        <td><%= bill.getBill_id() %></td>
                        <td><%= bill.getBilling_period() %></td>
                        <td><%= bill.getUnits_consumed() %></td>
                        <td><%= bill.getRate_per_unit() %></td>
                        <td><strong>&#8377;<%= bill.getTotal_amount() %></strong></td>
                    </tr>
                <% } %>
            </table>
        <% } else { %>
            <p style="color: red; text-align: center;">No bills found for your account.</p>
        <% } %>
    </div>

    <!-- Footer Section -->
    <footer>
        <div class="container">
            <p>&copy; 2023 Electricity Billing System. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>

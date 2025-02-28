<%@page import="com.ebs.entities.User"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<% User u= (User)session.getAttribute("currentUser");
if(u==null)
response.sendRedirect("login.jsp");
 %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Electricity Billing System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f4;
        }

        .container {
            width: 80%;
            margin: auto;
            max-width: 1200px;
        }

        header {
            background: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
        }

        nav {
            background: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 1.2em;
        }

        nav a:hover {
            color: #4CAF50;
        }

        .contact-section {
            background: white;
            padding: 40px;
            margin: 50px auto;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            text-align: center;
        }

        .contact-section h2 {
            color: #333;
        }

        .contact-details {
            margin-top: 20px;
            font-size: 1.1em;
        }

        footer {
            background: #333;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <header>
        <h1>Electricity Billing System</h1>
        <p>Reliable & Efficient Energy Solutions</p>
    </header>

    <nav>
        <a href="index.jsp">Home</a>
        <a href="billing.jsp">View Bills</a>
<!--        <a href="pay.jsp">Pay Online</a>
        <a href="contact.jsp">Contact Us</a>-->
       <a href="<%= (u != null) ? "Logout_servlet" : "login.jsp" %>">
                    <%= (u != null) ? "Logout" : "Login" %>
                </a>
                 <a href="register.jsp">register here</a>
            <a href="addbill.jsp">ADD Bill</a>
    </nav>

    <div class="contact-section container">
        <h2>Contact Us</h2>
        <p>Feel free to reach out to us for any queries or support.</p>

        <div class="contact-details">
            <p><strong>Office Address:</strong> 123 Energy Street, Cityville, Country</p>
            <p><strong>Email:</strong> support@electricitybilling.com</p>
            <p><strong>Phone:</strong> +123-456-7890</p>
            <p><strong>Working Hours:</strong> Mon - Fri, 9 AM - 6 PM</p>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Electricity Billing System. All rights reserved.</p>
    </footer>

</body>
</html>

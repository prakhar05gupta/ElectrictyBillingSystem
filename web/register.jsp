<%-- 
    Document   : register
    Created on : 01-Feb-2025, 2:19:12 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration - Electricity Billing System</title>
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

        /* Registration Form Styles */
        .registration-form {
            background: #fff;
            padding: 30px;
            margin: 50px auto;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
        }

        .registration-form h2 {
            font-size: 2em;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        .registration-form label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .registration-form input[type="text"],
        .registration-form input[type="email"],
        .registration-form input[type="password"],
        .registration-form input[type="tel"],
        .registration-form select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .registration-form input[type="submit"] {
            background: #4CAF50;
            color: #fff;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            width: 100%;
        }

        .registration-form input[type="submit"]:hover {
            background: #45a049;
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
<!--                <li><a href="#">Pay Online</a></li>-->
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="register.jsp">Register</a></li>
            </ul>
        </div>
    </nav>

    <!-- Registration Form -->
    <div class="registration-form container">
        <h2>Register for an Account</h2>
        <form action="RegisterServlet" method="post">
            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="fullname" required>

            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>

            <label for="account-type">Account Type:</label>
            <select id="account-type" name="account-type" required>
                <option value="residential">Residential</option>
                <option value="commercial">Commercial</option>
            </select>

            <input type="submit" value="Register">
        </form>
    </div>

    <!-- Footer Section -->
    <footer>
        <div class="container">
            <p>&copy; 2023 Electricity Billing System. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>

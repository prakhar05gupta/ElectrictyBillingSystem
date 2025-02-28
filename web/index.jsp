


<%@page import="com.ebs.entities.User"%>
<% 
User u= (User)session.getAttribute("currentUser");
if(u==null)
response.sendRedirect("login.jsp");

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electricity Billing System</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            color: #333;
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

        /* Welcome Section Styles */
        .welcome {
            padding: 100px 0; /* Increased padding */
            text-align: center;
            background: #f4f4f4;
        }

        .welcome h2 {
            font-size: 3em; /* Increased font size */
            margin-bottom: 30px; /* Increased margin */
        }

        .welcome p {
            font-size: 1.5em; /* Increased font size */
            margin-bottom: 40px; /* Increased margin */
        }

        .welcome .btn {
            background: #4CAF50;
            color: #fff;
            padding: 15px 30px; /* Increased button size */
            text-decoration: none;
            font-size: 1.2em; /* Increased font size */
            border-radius: 5px;
        }

        .welcome .btn:hover {
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
<!--                <li><a href="#">Home</a></li>-->
                <li><a href="billing.jsp">View Bills</a></li>
<!--                <li><a href="#">Pay Online</a></li>-->
                <li><a href="contact.jsp">Contact Us</a></li>
                 <li><a href="<%= (u != null) ? "Logout_servlet" : "login.jsp" %>">
                    <%= (u != null) ? "Logout" : "Login" %>
                </a></li>
                <li><a href="register.jsp">register here</a></li>
                <li><a href="addbill.jsp">ADD Bill</a></li>
             
                
            </ul>
        </div>
    </nav>

    <!-- Welcome Section -->
    <section class="welcome">
        <div class="container">
            <h2>Welcome to the Electricity Billing System</h2>
            <p>Track your electricity usage, view bills, and make payments online with ease.</p>
            <a href="#" class="btn">Get Started</a>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <div class="container">
            <p>&copy; 2023 Electricity Billing System. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
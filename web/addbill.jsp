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
    <title>Add Bill</title>
    <style>
/*        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }*/
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

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background: #f9f9f9;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"],
        input[type="date"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #45a049;
        }
    </style>
</head>
<body>
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
                <li><a href="#">Pay Online</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                 <li><a href="<%= (u != null) ? "Logout_servlet" : "login.jsp" %>">
                    <%= (u != null) ? "Logout" : "Login" %>
                </a></li>
                <li><a href="register.jsp">register here</a></li>
                <li><a href="addbill.jsp">ADD Bill</a></li>
               
            </ul>
        </div>
    </nav>
    <h2>Add Bill Details</h2>
    <form action="AddBill" method="post">
        <label for="customerId">Customer ID:</label>
        <input type="number" id="customerId" name="customer_id" required>

        <label for="billingPeriod">Billing Period:</label>
        <input type="text" id="billingPeriod" name="billing_period" placeholder="e.g., October 2023" required>

        <label for="unitsConsumed">Units Consumed:</label>
        <input type="number" id="unitsConsumed" name="units_consumed" required>

        <label for="ratePerUnit">Rate Per Unit:</label>
        <input type="number" id="ratePerUnit" name="rate_per_unit" step="0.01" required>
        
       
        <label for="dueDate">Due Date:</label>
        <input type="date" id="dueDate" name="due_date" required>

        <input type="submit" value="Add Bill">
    </form>
</body>
</html>
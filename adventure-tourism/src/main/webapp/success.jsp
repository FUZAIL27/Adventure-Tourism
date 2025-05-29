<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef;
            text-align: center;
            padding-top: 50px;
        }
        .box {
            background-color: #fff;
            border: 2px solid #0066cc;
            padding: 30px;
            margin: auto;
            width: 400px;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.2);
        }
        h2 {
            color: #0066cc;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 8px 16px;
            background-color: #0066cc;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #004d99;
        }
    </style>
</head>
<body>
    <div class="box">
        <h2>Booking Successful!</h2>
        <p>Thank you for booking with us. We have received your details.</p>
        <p>You will receive a confirmation email shortly.</p>
        <a href="booking.html">Book Another</a>
        <a href="adminLogin.jsp">Admin Login</a>
    </div>
</body>
</html>

<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0; padding: 0;
            background-color: #f4f4f4;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }

        .navbar h1 {
            color: #fff;
            margin: 0;
            font-size: 22px;
        }

        .nav-links {
            display: flex;
            gap: 15px;
        }

        .nav-links a {
            color: #fff;
            text-decoration: none;
            padding: 8px 15px;
            background-color: #555;
            border-radius: 4px;
        }

        .nav-links a:hover {
            background-color: #007bff;
        }

        .section {
            display: none;
            padding: 20px;
        }

        .section.active {
            display: block;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        .contact-table th {
            background-color: #28a745;
        }

        .logout-btn {
            background-color: red;
            color: white;
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

    </style>

    <script>
        function showSection(id) {
            const sections = document.querySelectorAll('.section');
            sections.forEach(section => section.classList.remove('active'));
            document.getElementById(id).classList.add('active');
        }

        window.onload = function() {
            showSection('bookings');
        };
    </script>
</head>
<body>

    <div class="navbar">
        <h1>Admin Panel</h1>
        <div class="nav-links">
            <a href="javascript:void(0)" onclick="showSection('bookings')">Booking Details</a>
            <a href="javascript:void(0)" onclick="showSection('contacts')">Contact Submissions</a>
            <form action="logout.jsp" method="post" style="display: inline;">
                <input type="submit" value="Logout" class="logout-btn">
            </form>
        </div>
    </div>

    <!-- Booking Section -->
    <div id="bookings" class="section">
        <h2>Booking Details</h2>
        <table>
            <tr>
                <th>ID</th><th>Name</th><th>Email</th><th>Phone</th>
                <th>Check-In</th><th>Check-Out</th><th>Accommodation</th>
                <th>Rooms</th><th>Room Type</th><th>Requests</th>
            </tr>
            <%
                try {
                    Connection con = com.tourist.DBConnection.getConnection();
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM bookings");

                    while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("firstname") %> <%= rs.getString("lastname") %></td>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getString("phone") %></td>
                <td><%= rs.getString("check_in_date") %></td>
                <td><%= rs.getString("check_out_date") %></td>
                <td><%= rs.getString("accomodation") %></td>
                <td><%= rs.getInt("rooms") %></td>
                <td><%= rs.getString("room_type") %></td>
                <td><%= rs.getString("additional") %></td>
             <td>
            <a href="DeleteBookingServlet?id=<%= rs.getInt("id") %>" onclick="return confirm('Are you sure you want to delete this booking?');">Delete</a>
        </td>
            </tr>
            <%
                    }
                    rs.close();
                    stmt.close();
            %>
        </table>
    </div>

    <!-- Contact Section -->
    <div id="contacts" class="section">
        <h2>Contact Submissions</h2>
        <table class="contact-table">
            <tr>
                <th>ID</th><th>Name</th><th>Email</th><th>Phone</th><th>Subject</th><th>Message</th>
            </tr>
            <%
            
                Statement stmt2 = con.createStatement();
                ResultSet rs2 = stmt2.executeQuery("SELECT * FROM contact_details");

                while (rs2.next()) {
            %>
            <tr>
                <td><%= rs2.getInt("id") %></td>
                <td><%= rs2.getString("name") %></td>
                <td><%= rs2.getString("email") %></td>
                <td><%= rs2.getString("phone") %></td>
                <td><%= rs2.getString("subject") %></td>
                <td><%= rs2.getString("message") %></td>
           <td>
          <a href="DeleteContactServlet?id=<%= rs2.getInt("id") %>" onclick="return confirm('Are you sure?')">Delete</a>
          
        </td>
            </tr>
            <%
                }
                rs2.close();
                stmt2.close();
                con.close();
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </table>
    </div>

</body>
</html>

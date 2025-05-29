
package com.tourist;

import java.io.*;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String checkin = request.getParameter("check-in-date");
        String checkout = request.getParameter("check-out-date");
        String accomodation = request.getParameter("accomodation");
        int rooms = Integer.parseInt(request.getParameter("age"));
        String roomType = request.getParameter("room-type");
        String additional = request.getParameter("additional");

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO bookings (firstname, lastname, email, phone, check_in_date, check_out_date, accomodation, rooms, room_type, additional) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
            );
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, checkin);
            ps.setString(6, checkout);
            ps.setString(7, accomodation);
            ps.setInt(8, rooms);
            ps.setString(9, roomType);
            ps.setString(10, additional);

            ps.executeUpdate();
//            response.sendRedirect("index.jsp");  // redirect back to home
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

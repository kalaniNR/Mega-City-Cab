package com.datapackage.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.datapackage.dao.BookingDao;
import com.datapackage.model.Booking;

/**
 * Servlet implementation class BookingServlet
 */
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String fromLocation = request.getParameter("fromLocation");
        String toLocation = request.getParameter("toLocation");
        String datetime = request.getParameter("datetime");

        // Populate Booking object
        Booking booking = new Booking();
        booking.setName(name);
        booking.setEmail(email);
        booking.setPhone(phone);
        booking.setFromLocation(fromLocation);
        booking.setToLocation(toLocation);
        booking.setDatetime(datetime);

        // Save booking in DB
        BookingDao bookingDao = new BookingDao();
        boolean success = bookingDao.saveBooking(booking);

        // Redirect or send response
        if (success) {
            response.sendRedirect("Views/booking.jsp");
        } else {
            response.sendRedirect("Views/home.jsp");
        }
    }
	}



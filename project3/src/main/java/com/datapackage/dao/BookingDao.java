package com.datapackage.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.datapackage.model.Booking;

public class BookingDao {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/project3";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Kalani2003@#$";
    
   


    public boolean saveBooking(Booking booking) {
        boolean isSaved = false;
        String sql = "INSERT INTO bookings (name, email, phone, from_location, to_location, datetime) VALUES (?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, booking.getName());
            stmt.setString(2, booking.getEmail());
            stmt.setString(3, booking.getPhone());
            stmt.setString(4, booking.getFromLocation());
            stmt.setString(5, booking.getToLocation());
            stmt.setString(6, booking.getDatetime());

            int rows = stmt.executeUpdate();
            if (rows > 0) {
                isSaved = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isSaved;
    }

}

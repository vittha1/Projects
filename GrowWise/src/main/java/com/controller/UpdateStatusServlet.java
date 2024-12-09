package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.Dbconn;

@WebServlet("/UpdateStatusServlet")
public class UpdateStatusServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String status = request.getParameter("status");

        try {
            // Establish connection to the database
            Connection con = Dbconn.conn();
            
            // SQL query to update the status of the user
            String query = "UPDATE registration SET status = ? WHERE username = ?";
            PreparedStatement pst = con.prepareStatement(query);

            // Set the parameters in the query
            pst.setString(1, status);
            pst.setString(2, username);

            // Execute the query to update the status
            int result = pst.executeUpdate();

            if (result > 0) {
                // Redirect back to the users page with a success message
                response.sendRedirect("AdminHome.jsp?statusUpdated=true");
            } else {
                // Redirect back with an error message if no rows were updated
                response.sendRedirect("AdminHome.jsp?statusUpdated=false");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("AdminHome.jsp?statusUpdated=false");
        }
    }
}

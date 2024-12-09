package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.Dbconn;

@WebServlet("/AddDoctorServlet")
public class AddDoctorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	PrintWriter pw = response.getWriter();
    	String name = request.getParameter("name");
        String email = request.getParameter("email");
        String specialist = request.getParameter("specialist");
        String password = request.getParameter("password");
       
        try {
            Connection con = Dbconn.conn();
            String query = "INSERT INTO doctors (name, email, specialist, password) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(query);

            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, specialist);
            pst.setString(4, password);

            int result = pst.executeUpdate();

            if (result > 0) {
            	pw.println("<html><script>alert('Doctor Added Successfully...');</script><body>");
                response.sendRedirect("AdminHome.jsp?success=true");
            } else {
                response.sendRedirect("AdminHome.jsp?success=false");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("AdminHome.jsp?success=false");
        }
    }
}

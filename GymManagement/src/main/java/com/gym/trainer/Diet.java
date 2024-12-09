package com.gym.trainer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gym.database.DBConn;

@WebServlet("/DietForm")
public class Diet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("uname");
		String day=request.getParameter("day");
		String date=request.getParameter("date");
		String meal = request.getParameter("meal");
		String calories = request.getParameter("calories") ;
		
		
		
		 Connection con = null;
	        PreparedStatement pst = null;
	        RequestDispatcher dispatcher = request.getRequestDispatcher("regsuccess2.jsp");

	        try {
	            try {
					con = DBConn.conn();
				} catch (ClassNotFoundException e) {
					
					e.printStackTrace();
				}
	            if (con == null) {
	                throw new ServletException("Unable to establish a database connection.");
	            }

	            String query = "INSERT INTO diet(username,day,date,meal,calories) VALUES (?,?, ?, ?, ?)";
	            pst = con.prepareStatement(query);
	            pst.setString(1, uname);
	            pst.setString(2, day);
	            pst.setString(3, date);
	            pst.setString(4, meal);
	            pst.setString(5, calories);
	            
	            
	            
	            int rowcount = pst.executeUpdate();

	            if (rowcount > 0) {
	            	
	                request.setAttribute("status", "success");
	            } else {
	                request.setAttribute("status", "failed");
	            }

	            dispatcher.forward(request, response);
	        } catch (SQLException e) {
	            e.printStackTrace();
	            request.setAttribute("status", "error");
	            dispatcher.forward(request, response);
	        } finally {
	            try {
	                if (pst != null) pst.close();
	                if (con != null) con.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
		
		
	}

}

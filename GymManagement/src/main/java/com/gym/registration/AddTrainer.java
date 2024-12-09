package com.gym.registration;

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

@WebServlet("/AddTrainer")
public class AddTrainer extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname=request.getParameter("firstname");
		String lname=request.getParameter("lastname");
		String email=request.getParameter("email");
		String mob=request.getParameter("mobile");
		String exp=request.getParameter("experience");
		String pass=request.getParameter("password");
		
		 Connection con = null;
	        PreparedStatement pst = null;
	        RequestDispatcher dispatcher = request.getRequestDispatcher("regsuccess.jsp");

	        try {
	            try {
					con = DBConn.conn();
				} catch (ClassNotFoundException e) {
					
					e.printStackTrace();
				}
	            if (con == null) {
	                throw new ServletException("Unable to establish a database connection.");
	            }

	            String query = "INSERT INTO trainer(fname, lname,email, mobile,exp,pass) VALUES (?, ?, ?, ?, ?, ?)";
	            pst = con.prepareStatement(query);
	            pst.setString(1, fname);
	            pst.setString(2, lname);
	            pst.setString(3, email);
	            pst.setString(4, mob);
	            pst.setString(5, exp);
	            pst.setString(6, pass);
	            
	            
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

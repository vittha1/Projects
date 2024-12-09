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

@WebServlet("/AddPlan")
public class AddPlan extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pname=request.getParameter("planName");
		String duration=request.getParameter("duration");
		String priceString = request.getParameter("price");
		double price = Double.parseDouble(priceString); 
		String features=request.getParameter("features");
		
		
		 Connection con = null;
	        PreparedStatement pst = null;
	        RequestDispatcher dispatcher = request.getRequestDispatcher("regsuccess.jsp");

	        try {
	            try {
					con = DBConn.conn();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	            if (con == null) {
	                throw new ServletException("Unable to establish a database connection.");
	            }

	            String query = "INSERT INTO plans(pname, duration,price, features) VALUES (?, ?, ?, ?)";
	            pst = con.prepareStatement(query);
	            pst.setString(1, pname);
	            pst.setString(2, duration);
	            pst.setDouble(3, price);
	            pst.setString(4, features);
	            
	            
	            HttpSession session = request.getSession(true);
	            ResultSet rs=null;
	            int rowcount = pst.executeUpdate();

	            if (rowcount > 0) {
	            	session.setAttribute("price", rs.getDouble("price"));
	            	session.setAttribute("pname", rs.getString("pname"));
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

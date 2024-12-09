package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.database.Dbconn;


@WebServlet("/AddLogin")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession(false);  
	    if (session != null) {
	        session.invalidate();  
	    }
	    response.sendRedirect("index.jsp?logout=true");  
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession(true);
	    PrintWriter pw = response.getWriter();
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    String roll = request.getParameter("roll");
	    
	    
	    try {
	        if (roll.equals("Admin")) 
	        {
	            if (username.equals("admin@gmail.com") && password.equals("admin"))
	            {
	            	
	                pw.println("<html><script>alert('Login Successfully');</script><body>");
	                response.sendRedirect("AdminHome.jsp?Login");
	            } else 
	            {
	            	pw.println("<html><script>alert('Incorrect UserName and Password');</script><body>");
	                request.setAttribute("message", "Incorrect Email Id or Password.");
	                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
	                rd.include(request, response);
	            }
	        } 
	        else
	        {
	            Connection con = Dbconn.conn();
	            String query = "SELECT * FROM registration WHERE username = ? AND password = ? AND status = 'accept'";
	            PreparedStatement pst = con.prepareStatement(query);
	            pst.setString(1, username);
	            pst.setString(2, password);
	            ResultSet rs = pst.executeQuery();
	            
	            if (rs.next()) {
	                session.setAttribute("uname", rs.getString("username"));
	                session.setAttribute("fullname",rs.getString("fullname"));
	                response.sendRedirect("phome.jsp?succ");
	                pw.println("<html><script>alert('Login Successfully');</script><body>");
	            } else {
	            	pw.println("<html><script>alert('Wait for Verification');</script><body>");
	                //request.setAttribute("message", "Incorrect Email Id or Password.");
	                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
	                rd.include(request, response);
	            }
	        } 
	        
	    } 
	    catch (Exception e) 
	    {
	        e.printStackTrace();
	    }
	}


}

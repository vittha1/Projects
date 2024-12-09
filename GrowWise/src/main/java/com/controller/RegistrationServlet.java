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


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String fullname=request.getParameter("fullName");
		System.out.println(fullname);
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String address=request.getParameter("address");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		PrintWriter pw = response.getWriter();
		
		try
		{
			Connection con=Dbconn.conn();
			PreparedStatement pst=con.prepareStatement("insert into registration(fullname,email,mobile,address,username,password) values (?,?,?,?,?,?)");
			pst.setString(1, fullname);
			pst.setString(2, email);
			pst.setString(3, mobile);
			pst.setString(4, address);
			pst.setString(5, username);
			pst.setString(6, password);
			
			int i=pst.executeUpdate();
			
			if (i > 0) {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Account Created Successfully');");
				pw.println("window.location.href = \"login.jsp\";");
				pw.println("</script>");
			} else {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Error...!!!!Try Again Later..');");
				pw.println("window.location.href = \"registration.jsp\";");
				pw.println("</script>");
			}
	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}

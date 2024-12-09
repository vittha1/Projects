package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.Dbconn;


@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String mob=request.getParameter("mobile");
		String message=request.getParameter("message");
		
		PrintWriter pw=response.getWriter();
		
		try
		{
			Connection con=Dbconn.conn();
			PreparedStatement pst=con.prepareStatement("insert into contact(name,email,mobile,message) values(?,?,?,?)");
			
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, mob);
			pst.setString(4, message);
			
			int i=pst.executeUpdate();
			
			if(i>0)
			{
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Message send successfully');");
				pw.println("window.location.href= \"index.jsp\";");
				pw.println("</script>");
			}
			else
			{
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Error...!!!!Try Again Later..');");
				pw.println("window.location.href = \"index.jsp\";");
				pw.println("</script>");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
	}

}

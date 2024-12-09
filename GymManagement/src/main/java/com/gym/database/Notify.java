package com.gym.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Notify")
public class Notify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		
		String uname=request.getParameter("username");
		String msg=request.getParameter("message");
		
		Connection con = null;
		PreparedStatement ps = null;
		
		try
		{
			con=DBConn.conn();
			ps=con.prepareStatement("INSERT INTO  notify(username,message) values (?,?)");
			ps.setString(1, uname);
			ps.setString(2, msg);
			
			int i=ps.executeUpdate();
			
			if (i > 0) {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Message send Successfully');");
				pw.println("window.location.href = \"AdminHome.jsp\";");
				pw.println("</script>");
			} else {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Error...!!!!Try Again Later..');");
				pw.println("window.location.href = \"notification.jsp\";");
				pw.println("</script>");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}

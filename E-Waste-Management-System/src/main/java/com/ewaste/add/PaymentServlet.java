package com.ewaste.add;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ewaste.database.DBConn;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String amt=request.getParameter("amount");
		String name=request.getParameter("name");
		String cname=request.getParameter("cardname");
		String cno=request.getParameter("cardno");
		String cvv=request.getParameter("cvv");
		RequestDispatcher dispatcher=null;
		Connection con = null;
        PreparedStatement pst = null;

        try {
            try
            {
            	con = DBConn.conn();
            }
            catch(ClassNotFoundException e)
            {
            	e.printStackTrace();
            }
            pst = con.prepareStatement("INSERT INTO cardpay(amt, name,cname, cno, cvv) VALUES (?, ?, ?, ?, ?)");
            pst.setString(1, amt);
            pst.setString(2, name);
            pst.setString(3, cname);
            pst.setString(4, cno);
            pst.setString(5, cvv);

            int rowcount=pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("success.jsp");
			if(rowcount>0)
			{
				request.setAttribute("status","success");
			}
			else
			{
				request.setAttribute("status","failed" );
			}
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try {
				con.close();
			} 
			catch (SQLException e)
			{
				e.printStackTrace();			
			}		
		}
            }
        
		
		
	}



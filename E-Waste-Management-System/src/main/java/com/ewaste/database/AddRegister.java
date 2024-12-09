package com.ewaste.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AddRegister")
public class AddRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String address = request.getParameter("address");
        String upwd = request.getParameter("pass");
        String umobile = request.getParameter("contact");
        
        Connection con = null;
        RequestDispatcher dispatcher = null;

        try {
            
            try {
				con = DBConn.conn();
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			}
            
            
            PreparedStatement pst = con.prepareStatement("INSERT INTO persons(name, email, contact, address, password) VALUES(?, ?, ?, ?, ?)");
            pst.setString(1, uname);
            pst.setString(2, uemail);
            pst.setString(3, umobile);
            pst.setString(4, address);
            pst.setString(5, upwd);
            
           
            int rowcount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("regsuccess.jsp");
            
            
            if (rowcount > 0) {
            	 HttpSession session = request.getSession();
                 session.setAttribute("email", uemail);
                 session.setAttribute("contact", umobile);
                 session.setAttribute("address", address);
                request.setAttribute("status", "success");
                
            } 
            else 
            {
                request.setAttribute("status", "failed");
            }
            
           
            dispatcher.forward(request, response);
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

package com.ewaste.delivery;

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
//import javax.servlet.http.HttpSession;

import com.ewaste.database.DBConn;

@WebServlet("/DelReg")
public class DeliveryPersonReg extends HttpServlet 
{
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String bname = request.getParameter("bname");
        String bno = request.getParameter("bno");
        String pass = request.getParameter("password");

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
            String query = "INSERT INTO delivery(name, email, mobile, bname, bno, pass) VALUES (?, ?, ?, ?, ?, ?)";
            pst = con.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, mobile);
            pst.setString(4, bname);
            pst.setString(5, bno);
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

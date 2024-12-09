package com.gym.registration;

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

import com.gym.database.DBConn;

@WebServlet("/gymForm")
public class GymForm extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String tname = request.getParameter("trainer");
        String plan = request.getParameter("membership");
        String amt = request.getParameter("amount");
        String sdate = request.getParameter("sdate");
        String height = request.getParameter("height");
        String weight = request.getParameter("weight");
        String focus = request.getParameter("focus");
        String username = request.getParameter("username");
        String cname = request.getParameter("cname");
        String cno = request.getParameter("cno");
        String cvv = request.getParameter("cvv");

        Connection con = null;
        PreparedStatement pst = null;
        RequestDispatcher dispatcher = request.getRequestDispatcher("regsuccess1.jsp");

        try {
            try {
                con = DBConn.conn();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            if (con == null) {
                throw new ServletException("Unable to establish a database connection.");
            }

            String query = "INSERT INTO admision(trainer, plan, amt, sdate, height, weight, focus, username, cname, cno, cvv) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pst = con.prepareStatement(query);
            pst.setString(1, tname);
            pst.setString(2, plan);
            pst.setString(3, amt);
            pst.setString(4, sdate);
            pst.setString(5, height);
            pst.setString(6, weight);
            pst.setString(7, focus);
            pst.setString(8, username);
            pst.setString(9, cname);
            pst.setString(10, cno);
            pst.setString(11, cvv);

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

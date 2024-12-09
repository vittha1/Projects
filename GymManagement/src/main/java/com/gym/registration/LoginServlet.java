package com.gym.registration;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.gym.database.DBConn;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        PrintWriter pw = response.getWriter();
        String userid = request.getParameter("username");
        String pwd = request.getParameter("password");
        String roll = request.getParameter("roll");

        try 
        { 
            // Admin Login
            if (roll.equals("admin")) {
            	 Connection con = DBConn.conn();
                 Statement st = con.createStatement();
                 ResultSet rs;
                 String str = "select * from owners where email='" + userid + "' and password='" + pwd + "'";
                 
                 rs = st.executeQuery(str);
                 if (rs.next()) { 
                     session.setAttribute("id", rs.getInt("id"));
                     session.setAttribute("name",rs.getString("name"));
                     pw.println("<html><script>alert('Login Successfully');</script><body>");
                     pw.println("");
                     pw.println("</body></html>");
                     response.sendRedirect("adhome.jsp?succ");
                 } else {
                     pw.println("<html><script>alert('Incorrect Email or Password.....');</script><body>");
                     pw.println("");
                     pw.println("</body></html>");
                     RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                     rd.include(request, response);
                 }
                } else if (roll.equals("manager")) {
                	 Connection con = DBConn.conn();
                     Statement st = con.createStatement();
                     ResultSet rs;
                     String str = "select * from owners where email='" + userid + "' and password='" + pwd + "'";
                     
                     rs = st.executeQuery(str);
                     if (rs.next()) {
                         session.setAttribute("id", rs.getInt("id"));
                         session.setAttribute("name",rs.getString("name"));
                         pw.println("<html><script>alert('Login Successfully');</script><body>");
                         pw.println("");
                         pw.println("</body></html>");
                         response.sendRedirect("managerHome.jsp?succ");
                     } else {
                         pw.println("<html><script>alert('Incorrect Email or Password.....');</script><body>");
                         pw.println("");
                         pw.println("</body></html>");
                         RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                         rd.include(request, response);
                     }
            } else if (roll.equals("trainer")) {
            	 Connection con = DBConn.conn();
                 Statement st = con.createStatement();
                 ResultSet rs;
                 String str = "select * from trainer where email='" + userid + "' and pass='" + pwd + "'";

                 rs = st.executeQuery(str);
                 if (rs.next()) {
                     session.setAttribute("fname", rs.getString("fname"));
                     session.setAttribute("lname",rs.getString("lname"));
                     pw.println("<html><script>alert('Login Successfully');</script><body>");
                     pw.println("");
                     pw.println("</body></html>");
                     response.sendRedirect("trainerHome.jsp?succ");
                 } else {
                     pw.println("<html><script>alert('Incorrect Email or Password.....');</script><body>");
                     pw.println("");
                     pw.println("</body></html>");
                     RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                     rd.include(request, response);
                 }}
            else {
                Connection con = DBConn.conn();
                Statement st = con.createStatement();
                ResultSet rs;
                String str = "select * from users where username ='" + userid + "' and password='" + pwd + "'";

                rs = st.executeQuery(str);
                if (rs.next()) {
                    session.setAttribute("id", rs.getInt("id"));
                    session.setAttribute("firstname",rs.getString("firstname"));
                    session.setAttribute("username",rs.getString("username"));
                    pw.println("<html><script>alert('Login Successfully');</script><body>");
                    pw.println("");
                    pw.println("</body></html>");
                    response.sendRedirect("Uhome.jsp?succ");
                } else {
                    pw.println("<html><script>alert('Incorrect Email or Password.....');</script><body>");
                    pw.println("");
                    pw.println("</body></html>");
                    RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                    rd.include(request, response);
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

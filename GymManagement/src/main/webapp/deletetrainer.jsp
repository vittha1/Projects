
<%@page import="com.gym.database.DBConn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Waste Details</title>
    </head>
    <body>
        <%
            
            String tid = request.getParameter("tid");
            int id = Integer.parseInt(tid);
            Connection con = null;
            Statement stmt = null;
            con = DBConn.conn();
            stmt = (Statement) con.createStatement();
            String query = "delete from  trainer " + "where id = '" + id + "'";
            stmt.executeUpdate(query);
            con.close();
            RequestDispatcher rd = request.getRequestDispatcher("managerHome.jsp");
            //pw.println("<html><script>alert('Trainer Deleted Successfully');</script><body>");
            rd.forward(request, response);
        %>
    </body>
</html>

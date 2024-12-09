
<%@page import="com.ewaste.database.DBConn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Waste Details</title>
    </head>
    <body>
        <%
            
            String sid = request.getParameter("id");
            int id = Integer.parseInt(sid);
            Connection con = null;
            Statement stmt = null;
            con = DBConn.conn();
            stmt = (Statement) con.createStatement();
            String query = "delete from  addwaste " + "where id = '" + id + "'";
            stmt.executeUpdate(query);
            con.close();
            RequestDispatcher rd = request.getRequestDispatcher("mywaste.jsp");
            
            rd.forward(request, response);
        %>
    </body>
</html>

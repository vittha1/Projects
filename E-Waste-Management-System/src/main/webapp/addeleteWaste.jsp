<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.ewaste.database.DBConn"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Waste</title>
</head>
<body>
    <%
        String wasteId = request.getParameter("wasteId");
        try {
            Connection con = DBConn.conn();
            Statement st = con.createStatement();
            String sql = "DELETE FROM addwaste WHERE id = '" + wasteId + "'";
            int result = st.executeUpdate(sql);

            if (result > 0) {
                out.println("<script>alert('Waste record deleted successfully!');window.location.href='viewwaste.jsp';</script>");
            } else {
                out.println("<script>alert('Error deleting record!');window.location.href='viewwaste.jsp';</script>");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>

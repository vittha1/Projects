<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.ewaste.database.DBConn" %>

<%
    // Get the 'oid' and 'boy_name' parameters from the AJAX request
    int oid = Integer.parseInt(request.getParameter("oid"));
    String boyName = request.getParameter("boy_name");

    Connection con = null;
    PreparedStatement pstmt = null;

    try {
        // Establish a connection to the database
        con = DBConn.conn();
        
        // Update query to set the delivery boy in the 'orders' table
        String updateQuery = "UPDATE orders SET allote = ? WHERE oid = ?";
        pstmt = con.prepareStatement(updateQuery);
        pstmt.setString(1, boyName); // Set the delivery boy name
        pstmt.setInt(2, oid);        // Set the order ID (oid)

        // Execute the update and check the result
        int rowsAffected = pstmt.executeUpdate();
        if (rowsAffected > 0) {
            out.print("success");
        } else {
            out.print("error");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.print("error");
    } finally {
        // Close resources
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>

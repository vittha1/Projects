<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.gym.database.DBConn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Ending Date</title>
</head>
<body>
<%
    // Retrieve parameters from the form
    String aid = request.getParameter("aid");
    String newEndingDate = request.getParameter("endingDate");

    Connection con = null;
    PreparedStatement pstmt = null;

    try {
        // Establish a database connection
        con = DBConn.conn();

        // Update the ending date
        String updateSQL = "UPDATE admision SET edate = ? WHERE aid = ?";
        pstmt = con.prepareStatement(updateSQL);
        pstmt.setString(1, newEndingDate);
        pstmt.setInt(2, Integer.parseInt(aid));

        // Execute the update
        int rowsUpdated = pstmt.executeUpdate();

        if (rowsUpdated > 0) {
            out.println("<p>Ending date updated successfully!</p>");
        } else {
            out.println("<p>Error updating ending date.</p>");
        }

    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p>An error occurred while updating the ending date.</p>");
    } finally {
        // Close resources
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
<a href="candidate.jsp">Go Back</a>
</body>
</html>

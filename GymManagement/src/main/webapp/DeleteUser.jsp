<%@ page import="java.sql.*" %>
<%@ page import="com.gym.database.DBConn" %>
<%
    Connection con = null;
    PreparedStatement pstmt = null;
    String message = "";

    try {
       
        String id = request.getParameter("id");

        con = DBConn.conn();
       
        String query = "DELETE FROM users WHERE id = ?";
        pstmt = con.prepareStatement(query);
        pstmt.setString(1, id);
        
        int rowsDeleted = pstmt.executeUpdate();
        
        if (rowsDeleted > 0) {
            message = "Record with ID " + id + " deleted successfully.";
        } else {
            message = "No record found with ID " + id;
        }
    } catch (SQLException e) {
        e.printStackTrace();
        message = "Error while deleting the record.";
    } finally {
       
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Delete Person</title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<style>
 .mydiv {
        text-align: center;
        margin-top: 20px;
    }

    .mydiv a {
        display: inline-block;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
        font-size: 16px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .mydiv a:hover {
        background-color: #45a049;
    }
</style>
<body>
    <h2 style="text-align: center; color:red;"><%= message %></h2>
    <div class="mydiv">
     <a href="users.jsp">Go Back</a>
    </div> 
</body>
</html>

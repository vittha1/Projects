<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="com.ewaste.database.DBConn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Success</title>
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
    <div style="text-align: center; margin-top: 100px;">
        <h1>Payment Successful!</h1>
        <p>Your payment has been processed successfully.</p>
        <button onclick="goHome()">Go to Home</button>
    </div>

    <script>
        function goHome() {
            window.location.href = "UserHome.jsp"; // Change to your home page URL
        }

        // Show success alert
        swal("Congrats", "Your payment was successful!", "success");
    </script>
    
    <%
        // Retrieve session variables
        HttpSession sess = request.getSession();
        int uid = (int) sess.getAttribute("id");
        String mob=(String) sess.getAttribute("contact");
        String category = (String) sess.getAttribute("category");
        String email= (String) sess.getAttribute("email");
        String address = (String) sess.getAttribute("address");

        // Get current date
        LocalDate localDate = LocalDate.now();
        Date date = Date.valueOf(localDate); 

        // Print variables to console (for debugging purposes)
        System.out.println(uid);
        System.out.println(category);
        System.out.println(email);
        System.out.println(address);
        System.out.println(date);
        System.out.println(mob);

        Connection con = null;
        PreparedStatement pst = null;
        
        try {
            // Establish a database connection
            con = DBConn.conn();
            
            // Prepare the SQL statement for inserting an order
            pst = con.prepareStatement("INSERT INTO orders(email, mobile,category, address, date) VALUES(?, ?, ?, ?,?)");
            pst.setString(1, email);
            pst.setString(2, mob);		
            pst.setString(3, category);
            pst.setString(4, address);
            pst.setDate(5, date);
            
            // Execute the INSERT statement
            int rowsAffected = pst.executeUpdate();
            
            // Check if the order was inserted successfully
            if (rowsAffected > 0) {
                System.out.println("Order inserted successfully.");
            } else {
                System.out.println("Failed to insert the order.");
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            if (pst != null) {
                try { pst.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            if (con != null) {
                try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        }
    %>
</body>
</html>

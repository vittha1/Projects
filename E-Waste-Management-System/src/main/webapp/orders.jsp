<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.ewaste.database.DBConn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data</title>
<link rel="stylesheet" href="css/headfoot.css"/>
</head>
<style>
table 
{
     width: 80%;
     margin: 20px auto;
     border-collapse: collapse;
     font-family: Arial, sans-serif;
}
    th, td 
    {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th 
    {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    td, th {
        border: 1px solid #ddd;
    }

    td {
        font-size: 14px;
        color: #333;
    }

    th {
        font-size: 16px;
    }

    main {
        margin: 20px;
    }
</style>
<body>
<header>
<%
    String dname = (String) session.getAttribute("delname");
    
%>  
      <img id="e-waste" src="images/logo.png" />
      <h1>E - Waste Management</h1>
    </header>

    <nav>
      <ul class="headings">
        <li class="nav-class" id="nav1"><a href="DelHome.jsp">Home</a></li>
        <li class="nav-class" id="nav3"><a href="orders.jsp">Orders</a></li>
        
      </ul>
    </nav>
  <main> <table border="1" cellpadding="10">
    <tr>
        <th>Order ID</th>
         <th>Customer Email</th>
         <th>Customer Mobile</th>
         <th>Product</th>
            <th>Customer Address</th>
            <th>Date</th>
            <th>Delivery Boy</th>
    </tr>
    <%
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;

        try 
        {
            con = DBConn.conn();

            stmt = con.createStatement();
            String query = "SELECT oid, email,mobile,category,address,date,allote FROM orders WHERE allote ='" + dname + "'";
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                int id = rs.getInt("oid");
                String email = rs.getString("email");
                String mob=rs.getString("mobile");
                String cat=rs.getString("category");
                String add = rs.getString("address");
                Date date=rs.getDate("date");
                String allote=rs.getString("allote");
    %>
 <tr>
    <td><%= id %></td>
    <td><%= email %></td>
    <td><%= mob %></td>
    <td><%= cat %></td>
    <td><%= add %></td>
    <td><%= date %></td>
    <td><%= allote %></td>
</tr>


    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    %>
</table></main>
  <footer>
      <div class="footer-content">
        <p>&copy; 2023 E-Waste Management. All rights reserved.</p>
        <ul class="social-links">
          <li>
            <a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-twitter"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
          </li>
        </ul>
      </div>
    </footer>
</body>
</html>
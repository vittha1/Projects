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
      <img id="e-waste" src="images/logo.png" />
      <h1>E - Waste Management</h1>
    </header>

    <nav>
      <ul class="headings">
        <li class="nav-class" id="nav1"><a href="AdminHome.jsp">Home</a></li>
        <li class="nav-class" id="nav3"><a href="viewwaste.jsp">E-Waste</a></li>
        <li class="nav-class" id="nav3"><a href="Udata.jsp">Users Data</a></li>
      </ul>
    </nav>
  <main> <table border="1" cellpadding="10">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Amount</th>
        <th>Card Name</th>
        <th>Card No</th>
        <th>CVV</th>
        <th>Delete</th> 
    </tr>
    <%
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;

        try 
        {
            con = DBConn.conn();

            stmt = con.createStatement();
            String query = "SELECT id, name, amt, cname, cno,cvv FROM cardpay";
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String amt = rs.getString("amt");
                String cname = rs.getString("cname");
                String cno = rs.getString("cno");
                String cvv = rs.getString("cvv");
    %>
    <tr>
        <td><%= id %></td>
        <td><%= name %></td>
        <td><%= amt %></td>
        <td><%= cname %></td>
        <td><%= cno %></td>
        <td><%= cvv %></td>
        <td>
            <form action="DeletePay.jsp" method="post">
                <input type="hidden" name="id" value="<%= id %>">
                <input type="submit" value="Delete" onclick="return confirm('Are you sure you want to delete this record?');">
            </form>
        </td>
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
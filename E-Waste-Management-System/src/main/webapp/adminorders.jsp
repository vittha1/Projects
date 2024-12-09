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
/* Your existing CSS styles */
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

<main>
    <table border="1" cellpadding="10">
        <tr>
            <th>Order ID</th>
            <th>Username</th>
            <th>Product</th>
            <th>Address</th>
            <th>Date</th>
            <th>Delivery Boy</th>
            <th>Action</th>
        </tr>
        <%
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;
            ResultSet rsBoys = null;

            try {
                con = DBConn.conn();

                // Fetch orders
                stmt = con.createStatement();
                String query = "SELECT oid, email, category, address, date,allote FROM orders";
                rs = stmt.executeQuery(query);

                while (rs.next()) {
                    int oid = rs.getInt("oid");
                    String email = rs.getString("email");
                    String product = rs.getString("category");
                    String add = rs.getString("address");
                    Date date = rs.getDate("date");
                    String allote=rs.getString("allote");
                    
        %>
        <tr>
            <td><%= oid %></td>
            <td><%= email %></td>
            <td><%= product %></td>
            <td><%= add %></td>
            <td><%= date %></td>
            <td>
                <%= allote == null ? "Not Assigned" : allote %>
            </td>
            <td>
                <!-- Dropdown for delivery boys -->
                <select onchange="updateDeliveryBoy(<%= oid %>, this.value)" required style="width: 200px; height: 30px;">
                    <option value="" disabled selected>--Select--</option>
                    <%
                        // Fetch delivery boys
                        Statement boyStmt = con.createStatement();
                        rsBoys = boyStmt.executeQuery("SELECT name FROM delivery");
                        while (rsBoys.next()) {
                            String boyName = rsBoys.getString("name");
                    %>
                    <option value="<%= boyName %>"><%= boyName %></option>
                    <%
                        }
                        rsBoys.close();
                        boyStmt.close();
                    %>
                </select>
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
    </table>
</main>

<footer>
    <div class="footer-content">
        <p>&copy; 2023 E-Waste Management. All rights reserved.</p>
        <ul class="social-links">
            <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
            <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
            <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
            <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
        </ul>
    </div>
</footer>

<script>
    function updateDeliveryBoy(orderId, boyName) {
        if (boyName) {
            // Send AJAX request to update the delivery boy in the database
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "UpdateDeliveryBoy.jsp", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    alert('Delivery boy updated successfully!');
                    // Optionally, reload the page or update the row without refreshing
                    location.reload(); // Reload to see changes
                }
            };
            xhr.send("oid=" + orderId + "&boy_name=" + boyName);         
        }
    }
</script>

</body>
</html>

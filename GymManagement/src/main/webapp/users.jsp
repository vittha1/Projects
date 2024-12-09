<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.gym.database.DBConn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users Table</title>
<link rel="stylesheet" href="css/users.css"/>
<style>
body {
    background-image: url('images/userb.png'); /* Replace with your image path */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    color: white;
}

</style>
</head>
<body>


<!-- HEADER -->
<header>
    <nav class="navbar">
        <div class="logo">
            <a href="#home">
                <img src="images/mainlogo.jpeg" alt="Logo">
            </a>
        </div>
        <ul class="nav-links">
            <li><a href="adhome.jsp">Home</a></li>
            <li><a href="trainers.jsp">Trainers</a></li>
            <li><a href="users.jsp">Users</a></li>
            <li><a href="candidate.jsp">Candidates</a></li>
           <li style="text-transform: uppercase;"><a href="logout"><%=session.getAttribute("name")%>-Logout</a></li> 
        </ul>
    </nav>
</header>


<!-- MAIN -->
<main> 
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Address</th>
                <th>Gender</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <%
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                con = DBConn.conn();
                stmt = con.createStatement();
                String query = "SELECT id, firstname,lastname,mobile, email, address,gender FROM users";
                rs = stmt.executeQuery(query);

                while (rs.next()) 
                {
                    int id = rs.getInt("id");
                    String fname = rs.getString("firstname");
                    String lname = rs.getString("lastname");
                    String email = rs.getString("email");
                    String phone = rs.getString("mobile");
                    String add = rs.getString("address");
                    String gender = rs.getString("gender");
        %>
        <tr>
            <td><%= id %></td>
            <td><%= fname %></td>
            <td><%= lname %></td>
            <td><%= phone %></td>
            <td><%= email %></td>
            <td><%= add %></td>
            <td><%= gender %></td>
            <td>
                <form action="DeleteUser.jsp" method="post">
                    <input type="hidden" name="id" value="<%=id %>">
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
        </tbody>
    </table>
</main>


<!-- FOOTER -->
<footer>
    <div class="footer-container">
        <div class="footer-section">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </div>
        
        <div class="footer-section">
            <h3>Contact Us</h3>
            <p>Email: example@example.com</p>
            <p>Phone: 123-456-7890</p>
        </div>
        
        <div class="footer-section">
            <h3>Follow Us</h3>
            <ul class="social-media">
                <li><a href="#"><img src="images/face.png" alt="Facebook"></a></li>
                <li><a href="#"><img src="images/twit.png" alt="Twitter"></a></li>
                <li><a href="#"><img src="images/insta.png" alt="Instagram"></a></li>
            </ul>
        </div>
    </div>
</footer>
</body>
</html>

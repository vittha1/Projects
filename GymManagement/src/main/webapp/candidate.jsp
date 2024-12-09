<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.gym.database.DBConn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admissions Table</title>
<link rel="stylesheet" href="css/candi.css"/>
<style>
  body {
    background-image: url('images/machine.jpg'); /* Replace with your image path */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    color: white;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $(".updateForm").on("submit", function(e) {
            e.preventDefault(); // Prevent form from submitting normally

            var form = $(this);
            var formData = form.serialize(); // Serialize form data

            $.ajax({
                url: "updateEndingDate.jsp",
                type: "POST",
                data: formData,
                success: function(response) {
                    alert("Date updated successfully!");
                },
                error: function() {
                    alert("An error occurred while updating the date.");
                }
            });
        });
    });
</script>
</head>
<body>
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
<main>
<table border="1" cellpadding="10">
    <tr>
        <th>UserName</th>
        <th>Admission ID</th>
        <th>Trainer</th>
        <th>Plan</th>
        <th>Amount</th>
        <th>Begins</th>
        <th>Ending</th>
        <th>Send Message</th>
    </tr>
    <%
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            con = DBConn.conn();
            stmt = con.createStatement();
            String query = "SELECT aid, trainer, plan, amt, sdate, edate, username FROM admision";
            rs = stmt.executeQuery(query);
            while (rs.next()) {
                int aid = rs.getInt("aid");
                String trainer = rs.getString("trainer");
                String plan = rs.getString("plan");
                String amt = rs.getString("amt");
                String sdate = rs.getString("sdate");
                String edate = rs.getString("edate");
                String username = rs.getString("username");
    %>
    <tr>
        <td><%= username %></td>
        <td><%= aid %></td>
        <td><%= trainer %></td>
        <td><%= plan %></td>
        <td><%= amt %></td>
        <td><%= sdate %></td>
        <td>
            <form class="updateForm" action="updateEndingDate.jsp" method="post">
                <input type="hidden" name="aid" value="<%= aid %>" />
                <input type="date" name="endingDate" value="<%= edate != null ? edate : "" %>" required />
                <button type="submit">Update</button>
            </form>
        </td>
        <td><a href="notification.jsp">Send</a></td>
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

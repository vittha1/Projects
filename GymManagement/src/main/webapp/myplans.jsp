<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.gym.database.DBConn" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/myplans.css">
</head>
<style>
body {
    background-image: url('images/gym1.jpg'); /* Replace with your image path */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    color: white;
}
</style>
<body>
<header>
        <nav class="navbar">
            <div class="logo">
                <a href="index.jsp">
                    <img src="images/mainlogo.jpeg" alt="Logo">
                </a>
            </div>
            <ul class="nav-links">
                <li><a href="Uhome.jsp">Home</a></li>
                <li><a href="allplans.jsp">All Plans</a></li>
                <li><a href="myplans.jsp">My Plans</a></li>
                <li><a href="mydiet.jsp">My Diet</a></li>
                <li><a href="myworkout.jsp">My Workout</a></li>
                <li><a href="chatbot.jsp">ChatBoat</a></li>
                <li><a href="messages.jsp">Notifications</a></li>
                <li style="text-transform: uppercase;"><a href="logout"><%=session.getAttribute("firstname")%>-Logout</a></li> 
            </ul>
        </nav>
</header>
<main>
<div id="membership" class="content">
        
            <h2>My Plans</h2>
            <section class="container">
                <div class="row">
                 <%
                HttpSession sess = request.getSession(false);
                String uname=(String)sess.getAttribute("username");
                System.out.println(uname);
            %>
                    <%
                        try {
                            Connection con = DBConn.conn();
                            String s = "SELECT * FROM admision where username ='" + uname + "'";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(s);
                            while (rs.next()) {
                                int aid = rs.getInt(1);
                    %>

                    <div class="card-body">
                        <ul class="list-group">
                          
                            <li class="list-group-item"><b>Plan Name:&nbsp;&nbsp;</b><%= rs.getString(3) %></li>
                            <li class="list-group-item"><b>Trainer Name:&nbsp;&nbsp;</b><%= rs.getString(2) %></li>
                            <li class="list-group-item"><b>Amount:&nbsp;&nbsp;</b><%= rs.getString(4) %></li>
                            <li class="list-group-item"><b>Start Date:&nbsp;&nbsp;</b><%= rs.getString(5) %></li>
                            <li class="list-group-item"><b>End Date:&nbsp;&nbsp;</b><%= rs.getString(13) %> </li>
                        </ul>
                        
                    </div>

                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </div>
            </section>
        </div>
</main>
<footer>
        <div class="footer-container">
            
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Contact</a></li>
                    <!-- Add more links as needed -->
                </ul>
            </div>
            
            <div class="footer-section">
                <h3>Contact Us</h3>
                <p>Email: example@example.com</p>
                <p>Phone: 123-456-7890</p>
            </div>
            
            <div class="footer-section" >
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
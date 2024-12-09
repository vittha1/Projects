<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.gym.database.DBConn" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trainer Info</title>
    <link rel="stylesheet" href="css/mhome.css"/>
    <style>
       body {
    background-image: url('images/gymbc.gif'); /* Replace with your image path */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    color: white;
}
    </style>
</head>
<body>
<header>
    <nav class="navbar">
        <div class="logo">
            <a href="#home">
                <img src="images/mainlogo.jpeg" alt="Logo">
            </a>
        </div>
        <div class="navbar-title">
            <h1>Gym Management System</h1>
        </div>
        <ul class="nav-links">
            <li><a href="managerHome.jsp">Home</a></li>
            <li><a href="addtrainer.jsp">Add Trainer</a></li>
            <li><a href="addplans.jsp">Add Plans</a></li>
            <li style="text-transform: uppercase;"><a href="logout"><%=session.getAttribute("name")%>-Logout</a></li> 
        </ul>
    </nav>
</header>

<main>
    <div class="main-container">
        <div class="box box1">
            <h2 style="color: white;">Trainer Info</h2>
            <section class="container">
                <div class="row">
                    <%
                        try {
                            Connection con = DBConn.conn();
                            String s = "SELECT * FROM trainer";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(s);
                            while (rs.next()) {
                                int tid = rs.getInt(1);
                    %>

                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item"><b>ID:&nbsp;&nbsp;</b><%= rs.getInt(1) %></li>
                            <li class="list-group-item"><b>First Name:&nbsp;&nbsp;</b><%= rs.getString(2) %></li>
                            <li class="list-group-item"><b>Last Name:&nbsp;&nbsp;</b><%= rs.getString(3) %></li>
                            <li class="list-group-item"><b>Email:&nbsp;&nbsp;</b><%= rs.getString(4) %></li>
                            <li class="list-group-item"><b>Mobile:&nbsp;&nbsp;</b><%= rs.getString(5) %></li>
                            <li class="list-group-item"><b>Experience:&nbsp;&nbsp;</b><%= rs.getInt(6) %> years</li>
                        </ul>
                        <div class="card-body">
                            
                            <a href="deletetrainer.jsp?id=<%= tid %>" class="card-link">Delete</a>
                        </div>
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
        <div class="box box2">
            <h2 style="color: white;">Membership Plans</h2>
            <section class="container">
                <div class="row">
                    <%
                        try {
                            Connection con = DBConn.conn();
                            String s = "SELECT * FROM plans";
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery(s);
                            while (rs.next()) {
                                int pid = rs.getInt(1);
                    %>

                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item"><b>ID:&nbsp;&nbsp;</b><%= rs.getInt(1) %></li>
                            <li class="list-group-item"><b>Plan Name:&nbsp;&nbsp;</b><%= rs.getString(2) %></li>
                            <li class="list-group-item"><b>Duration:&nbsp;&nbsp;</b><%= rs.getString(3) %> Months</li>
                            <li class="list-group-item"><b>Price:&nbsp;&nbsp;</b><%= rs.getString(4) %></li>
                            <li class="list-group-item"><b>Features:&nbsp;&nbsp;</b><%= rs.getString(5) %></li>
                            
                        </ul>
                        <div class="card-body">
                            
                            <a href="deletetrainer.jsp?id=<%= pid %>" class="card-link">Delete</a>
                        </div>
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
    </div>
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

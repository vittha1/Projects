<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.gym.database.DBConn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trainer Plans</title>
    <link rel="stylesheet" href="css/thome.css"/>
    <style>
        body {
    background-image: url('images/trainer.jpg'); /* Replace with your image path */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    color: white;
}
    </style>
    <script>
        function showContent(type) {
            // Hide previous content
            document.querySelectorAll('.form-container').forEach(div => {
                div.style.display = 'none'; // Hide all form containers
            });
            document.querySelectorAll('.card-body').forEach(card => {
                card.style.display = 'none'; // Hide all previous cards
            });

            // Show the relevant content
            document.getElementById(type).style.display = 'block'; // Show the clicked form
        }

        function goBack() {
            // Hide all forms
            document.querySelectorAll('.form-container').forEach(div => {
                div.style.display = 'none'; // Hide all form containers
            });

            // Show all cards again
            document.querySelectorAll('.card-body').forEach(card => {
                card.style.display = 'block'; // Show all card bodies
            });
        }
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
        <div class="navbar-title">
            <h1>Gym Management System</h1>
        </div>
        <ul class="nav-links">
            <li><a href="trainerHome.jsp">Home</a></li>
            <li style="text-transform: uppercase;"><a href="logout"><%=session.getAttribute("fname")%>-Logout</a></li> 
        </ul>
    </nav>
</header>

<main>
    <h2>Your Students</h2>
    <div class="cards-container">
        <%
            HttpSession sess = request.getSession(false);
            String fname = (String) sess.getAttribute("fname");
            String lname = (String) sess.getAttribute("lname");
            String str = fname + " " + lname;
        %>

        <%
            try {
                Connection con = DBConn.conn();
                String s = "SELECT * FROM admision WHERE trainer ='" + str + "'";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(s);
                int count = 0;
                while (rs.next()) {
                    count++;
        %>

        <div class="card-body">
            <ul class="list-group">
                <li class="list-group-item"><b>ID:</b> <%= rs.getString(1) %></li>
                <li class="list-group-item"><b>Candidate UserName:</b> <%= rs.getString(9) %></li>
                <li class="list-group-item"><b>Trainer Name:</b> <%= rs.getString(2) %></li>
                 <li class="list-group-item"><b>Candidate Height:</b> <%= rs.getString(6) %></li>
                  <li class="list-group-item"><b>Candidate Weight:</b> <%= rs.getString(7) %></li>
                   <li class="list-group-item"><b>Candidate Preference:</b> <%= rs.getString(8) %></li>
                <li class="list-group-item"><b>Plan Name:</b> <%= rs.getString(3) %></li>
                <li class="list-group-item"><b>Start Date:</b> <%= rs.getString(5) %></li>
                <li class="list-group-item"><b>End Date:</b> <%= rs.getString(13) %></li>
            </ul>
            <div class="card-body1">
                <div class="box" onclick="showContent('workout')"><a>Workout Plan</a></div>
                <div class="box" onclick="showContent('diet')"><a>Diet Plan</a></div>
            </div>
        </div>

        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>

    <!-- Hidden Forms -->
    <div id="workout" class="form-container">
        <form action="WorkOut" method="post" >
            <h3 style="color: black;">Workout Form</h3>
            <label for="uname">Candidate Username:</label>
            <input type="text" id="uname" name="uname" placeholder="Enter candidate username" required>
            
            <label for="day">Day:</label>
            <input type="number" id="day" name="day" placeholder="Enter day number" required>
            
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
            
            <label for="exercise">Exercise:</label>
            <input type="text" id="exercise" name="exercise" placeholder="Enter exercise name" required>
            
            <label for="duration">Duration (minutes):</label>
            <input type="number" id="duration" name="duration" placeholder="Enter duration" required>
            
            <label for="note">Note:</label>
            <textarea id="note" name="note" rows="4" placeholder="Enter any additional notes..." required></textarea>

            <button type="submit">Submit Workout Plan</button>
            <button type="button" onclick="goBack()">Go Back</button> 
        </form>
    </div>

    <div id="diet" class="form-container">
        <form action="DietForm" method="post">
            <h3 style="color: black;">Diet Form</h3>
            <label for="uname">Name of Candidate:</label>
            <input type="text" id="uname" name="uname" placeholder="Enter candidate username" required>
            
            <label for="day">Day:</label>
            <input type="number" id="day" name="day" placeholder="Enter day number" required>
            
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
            
            <label for="meal">Meal:</label>
            <input type="text" id="meal" name="meal" placeholder="Enter meal name" required>
            
            <label for="calories">Calories:</label>
            <input type="number" id="calories" name="calories" placeholder="Enter calorie count" required>

            <button type="submit">Submit Diet Plan</button>
            <button type="button" onclick="goBack()">Go Back</button> <!-- Go Back button -->
        </form>
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

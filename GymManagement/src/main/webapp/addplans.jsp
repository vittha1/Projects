<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gym Management System - Responsive Form</title>
<link rel="stylesheet" href="css/addp.css"/>
<style>
body {
    background-image: url('images/chest3.gif'); /* Replace with your image path */
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
    <div class="form-container">
        <h2>Add Membership Plan</h2>
        <form action="AddPlan" method="post">
            <div class="form-group">
                <label for="planName">Plan Name:</label>
                <input type="text" id="planName" name="planName" required>
            </div>

            <div class="form-group">
                <label for="duration">Duration (months):</label>
                <input type="number" id="duration" name="duration" min="1" required>
            </div>

            <div class="form-group">
                <label for="price">Price (Rs):</label>
                <input type="number" id="price" name="price" min="0" required>
            </div>

            <div class="form-group">
                <label for="features">Features:</label>
                <textarea id="features" name="features" rows="4" required></textarea>
            </div>

            <button type="submit">Add Plan</button>
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

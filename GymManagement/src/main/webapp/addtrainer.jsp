<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gym Management System - Responsive Form</title>
<link rel="stylesheet" href="css/addt.css"/>
<style>

  body {
    background-image: url('images/bicep2.gif'); /* Replace with your image path */
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
        <h2>Trainer Registration Form</h2>
        <form action="AddTrainer" method="POST">
            <label for="firstname">First Name:</label>
            <input type="text" id="firstname" name="firstname"  placeholder="First Name" required>

            <label for="lastname">Last Name:</label>
            <input type="text" id="lastname" name="lastname" placeholder="Last Name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Email" required>

            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" pattern="[0-9]{10}" placeholder="Mobile No" required>

            <label for="experience">Experience (in years):</label>
            <input type="number" id="experience" name="experience" min="0" placeholder="Exp" required>
            
             <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <br><br>
            <input type="submit" value="Submit">
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

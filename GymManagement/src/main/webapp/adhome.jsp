<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/adhome.css"/>
</head>
<style>
body {
    background-image: url('images/legday.webp'); /* Replace with your image path */
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
            <a href="#home">
                <img src="images/mainlogo.jpeg" alt="Logo">
            </a>
        </div>
        <ul class="nav-links">
            <li><a href="AdminHome.jsp">Home</a></li>
            
            <li style="text-transform: uppercase;"><a href="logout"><%=session.getAttribute("name")%>-Logout</a></li> 
        </ul>
    </nav>
</header>

<main style="height: auto;">
    <div class="image-content">
        <h1>Admin Home</h1>
    </div>
    <div class="cards-container">
        <div class="card">
            <img src="images/trainer.jpg" alt="Card 1 Image">
            <h2><button class="styled-button"><a href="trainers.jsp">Trainers</a></button></h2>
        </div>
        <div class="card">
            <img src="images/candi.jpg" alt="Card 2 Image">
            <h2><button class="styled-button"><a href="candidate.jsp">Candidates</a></button></h2>
            
        </div>
         <div class="card">
            <img src="images/users.jpg" alt="Card 2 Image">
            <h2><button class="styled-button"><a href="users.jsp">Users</a></button></h2>
            
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

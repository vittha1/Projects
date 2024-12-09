<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/hedfoot.css">
<style>
    main {
        height: 500px; 
        background-image: url('images/trainer.jpg'); 
        background-size: cover; 
        background-position: center; 
        background-repeat: no-repeat;
    }

    .image-content {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
        color: white;
        text-align: center;
    }
</style>
</head>
<body>
<header>
    <nav class="navbar">
        <div class="logo">
            <a href="#home">
                <img src="images/file.png" alt="Logo">
            </a>
        </div>
        <ul class="nav-links">
            <li><a href="AdminHome.jsp">Home</a></li>
            <li><a href="trainers.jsp">Trainers</a></li>
            <li><a href="users.jsp">Users</a></li>
            <li><a href="candidate.jsp">Candidates</a></li>
            <li style="text-transform: uppercase;"><a href="logout"><%=session.getAttribute("name")%>-Logout</a></li> 
        </ul>
    </nav>
</header>

<main>
    <div class="image-content">
        <!-- Any content you want to overlay on the image -->
        <h1 style="color: black; background-color: white;">Admin Home</h1>
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

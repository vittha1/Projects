<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="stylesheet" href="css/contact.css">
<link rel="stylesheet" href="css/headfoot.css">
<link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getParameter("status") %>">

<header>
    <div class="logo">
        <img src="img/logo.png" alt="Logo">
    </div>
    <ul class="navbar">
        <a href="index.jsp">Home</a>
        <a href="LoginPage.jsp">Login</a>
        <a href="RegisterPage.jsp">Register</a>
        <a href="contact.jsp">Contact</a>
    </ul>
</header>

<main>
    <div class="container">
        <h2>Contact Us</h2>
        <form action="ContactServlet" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
            </div>
            <div class="form-group">
                <button class="animated-button">
                    <svg viewBox="0 0 24 24" class="arr-2" xmlns="http://www.w3.org/2000/svg">
                      <path d="M16.1716 10.9999L10.8076 5.63589L12.2218 4.22168L20 11.9999L12.2218 19.778L10.8076 18.3638L16.1716 12.9999H4V10.9999H16.1716Z"></path>
                    </svg>
                    <span class="text">Send</span>
                    <span class="circle"></span>
                    <svg viewBox="0 0 24 24" class="arr-1" xmlns="http://www.w3.org/2000/svg">
                      <path d="M16.1716 10.9999L10.8076 5.63589L12.2218 4.22168L20 11.9999L12.2218 19.778L10.8076 18.3638L16.1716 12.9999H4V10.9999H16.1716Z"></path>
                    </svg>
                </button>
            </div>
        </form>
    </div>
</main>

<footer>
    <div class="footer-container">
        <div class="footer-section">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
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
                <li><a href="#"><img src="img/face.png" alt="Facebook"></a></li>
                <li><a href="#"><img src="img/twit.png" alt="Twitter"></a></li>
                <li><a href="#"><img src="img/insta.png" alt="Instagram"></a></li>
            </ul>
        </div>
    </div>
</footer>

<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
    var status = document.getElementById("status").value;

    if (status === "success") {
        swal("Congrats", "Message sent successfully", "success");
    } else if (status === "error") {
        swal("Oops", "There was an error sending your message", "error");
    }
});
</script>
</body>
</html>

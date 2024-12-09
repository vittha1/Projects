<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delivery Registration</title>
<link rel="stylesheet" href="css/headfoot.css"/>
<link rel="stylesheet" href="css/delreg.css"/> 
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>

<!-- Form Validation Script -->
<script>
    function validateForm() {
        const formElements = document.querySelectorAll('input[required]');
        for (let element of formElements) {
            if (!element.value) {
                alert("All fields are required.");
                return false;
            }
        }
        return true;
    }
</script>
</head>
<body>
<header>
    <img id="e-waste" src="images/logo.png" />
    <h1>E - Waste Management</h1>
</header>

<nav>
    <ul class="headings">
        <li class="nav-class" id="nav1"><a href="index.jsp">Home</a></li> 
        <li class="nav-class" id="nav3"><a href="login.jsp">Login</a></li>
        <li class="nav-class" id="nav4"><a href="contact.jsp">Contact</a></li>
    </ul>
</nav>

<br />
<div class="container">
    <div class="image-container">
        <img src="images/delreg.png" alt="Registration Image">
    </div>
    <div class="form-container">
        <h2>Register</h2>
        <form action="DelReg" method="post" onsubmit="return validateForm();">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="mobile">Mobile</label>
                <input type="number" id="mobile" name="mobile" required>
            </div>
            <div class="form-group">
                <label for="bname">Your Bike Name</label>
                <input type="text" id="bname" name="bname" required>
            </div>
            <div class="form-group">
                <label for="bno">Bike No</label>
                <input type="text" id="bno" name="bno" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Register</button>
        </form>
    </div>
</div>

<footer>
    <div class="footer-content">
        <p>&copy; 2023 E-Waste Management. All rights reserved.</p>
        <ul class="social-links">
            <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
            <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
            <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
            <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
        </ul>
    </div>
</footer>
</body>
</html>

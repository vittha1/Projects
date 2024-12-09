<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ureg.css">
</head>
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
<body>
<header>
        <nav class="navbar">
            <div class="logo">
                <a href="#home">
                    <img src="images/file.png" alt="Logo">
                </a>
            </div>
             <div class="navbar-title">
                <h1>Gym Management System</h1>
            </div>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="login.jsp">SignIn</a></li>
                
            </ul>
        </nav>
    </header>
   <main>
      
        <div class="form-container">
            <h2>Registration Form</h2>
            <form action="UserRegistration" method="post" enctype="multipart/form-data">
                <div class="form-row">
                    <label for="firstname">First Name:</label>
                    <input type="text" id="firstname" name="firstname" placeholder="First Name" required>
                </div>
                <div class="form-row">
                    <label for="lastname">Last Name:</label>
                    <input type="text" id="lastname" name="lastname" placeholder="Last Name" required>
                </div>
                <div class="form-row">
                    <label for="mobile">Mobile:</label>
                    <input type="tel" id="mobile" name="mobile" pattern="[0-9]{10}" placeholder="Mobile No" required>
                </div>
                <div class="form-row">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" placeholder="Email" required>
                </div>
                <div class="form-row">
                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" placeholder="Address" required>
                </div>
                <div class="form-row">
                    <label for="gender">Gender</label>
            <select id="gender" name="gender">
                <option value="" disabled selected>Select your Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
                </div>
                 <div class="form-row">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" placeholder="Username" required>
                </div>
                <div class="form-row">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                </div>
                <div class="form-row" style="width: 100%; display: flex; justify-content: center;">
                    <input type="submit" value="Register">
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
                    <li><a href="services.jsp">Services</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                   
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
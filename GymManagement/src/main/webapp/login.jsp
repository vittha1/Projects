<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<style>
body {
    background-image: url('images/gymbc.gif'); 
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    color: white;
}
main {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
     .navbar-title {
        flex-grow: 1;
        text-align: center;
    }

    .navbar-title h1 {
        font-size: 2rem;
        font-family: 'Times New Roman', serif;
        color: cyan;
        margin: 0;
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
            <div class="navbar-title">
                <h2>Gym Management System</h2>
            </div>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
               
                <li><a href="UserRegister.jsp">SignUp</a></li>
               
                
            </ul>
        </nav>
    </header>

    <main>
        <div class="container">
            <h2 style="color: black;">Login Form</h2>
            <form action="LoginServlet" method="post">
                <div class="form-row">
                    <label for="roll">Role:</label>
                    <select id="roll" name="roll" required>
                        <option value="" disabled selected>Select your role</option>
                        <option value="admin">Admin</option>
                        <option value="user">User</option>
                        <option value="manager">Manager</option>
                        <option value="trainer">Trainer</option>
                        
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
                <div class="form-row">
                    <input type="submit" value="Login">
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

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="css/home1.css">
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
                <a href="index.jsp">
                    <img src="images/mainlogo.jpeg" alt="Logo">
                </a>
            </div>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
               
                <li><a href="UserRegister.jsp">SignUp</a></li>
                <li><a href="login.jsp">SignIn</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section id="hero">
            <h1 id="welcome-text">
                Welcome to
                <b
                    style="color: cyan; text-shadow: 1px 1px 3px rgb(19, 4, 62); text-decoration: underline;"
                >Gym Management System</b>
            </h1>
            <br><br>
            <div class="temp">Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus consequuntur cum illum! Nobis eius corporis possimus similique voluptas id natus ad, est voluptates cumque perspiciatis numquam velit totam, voluptatibus aut quaerat itaque iure debitis officia, quasi dolorum. Ad maxime enim nostrum dolorem alias officia magni quam quibusdam obcaecati. Perspiciatis, ut?</div>
            <button class="btn btn-primary ">Explore</button>
        </section>
        
        <h2 style="text-align: center; color: lightblue; ">Our Features</h2>
        <!-- Cards Section -->
         <br>
        <div class="cards-container">
            <div class="card">
                <img src="images/bodu.gif" alt="Card 3">
               <h3>Daily Workout Plan</h3>
            </div>
            <div class="card">
                <img src="images/back1.gif" alt="Card 4">
                
                <h3>Best Gym Services</h3>
                
            </div>
            <div class="card">
                <img src="images/diet3.jpg" alt="Card 1">
                <h3>Daily Diet Plan</h3>
            </div>
            <div class="card">
                <img src="images/pr.jpg" alt="Card 2">
                <h3>Healthy Diet Plan</h3>
            </div>
            
        </div>
    </main>
    
    
    <footer>
        <div class="footer-container">
            
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <!-- Add more links as needed -->
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


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
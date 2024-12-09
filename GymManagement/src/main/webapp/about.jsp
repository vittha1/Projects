<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>about us</title>
 <link rel="stylesheet" href="css/home1.css">
</head>
<style>
  main {
            padding: 50px;
            text-align: center;
            background-image: url('images/bac.jpg'); 
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            color: white;
            min-height: auto;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .about-section {
            padding: 40px;
            border-radius: 10px;
            background-color: rgba(0, 0, 0, 0.7); 
            color: white;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .about-section:hover {
            transform: scale(1.05);
        }

        .about-section h2 {
            margin-bottom: 30px;
            font-size: 2rem;
        }

        .about-section p {
            font-size: 1.2rem;
        }

        .about-section h4 {
            font-size: 1.4rem;
            margin-bottom: 10px;
        }

        .about-section .col-md-6 {
            margin-bottom: 20px;
        }
</style>
<body>
<header>
        <nav class="navbar">
            <div class="logo">
                <a href="#index.jsp">
                    <img src="images/file.png" alt="Logo">
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
    <div class="about-section container">
        <h2>About our system</h2>
        <p>Our gym management system streamlines gym operations by enabling managers to easily create workout plans and assign trainers. With our intuitive platform, managing your fitness facility has never been easier.</p>
        <div class="row">
            <div class="col-md-6">
                <h4>Workout Plan Management</h4>
                <p>Create and manage customized workout plans tailored to individual members, ensuring they have a structured path to reach their fitness goals.</p>
            </div>
            <div class="col-md-6">
                <h4>Trainer Assignments</h4>
                <p>Easily assign trainers to members or specific workout plans, ensuring personalized training experiences for all clients.</p>
            </div>
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
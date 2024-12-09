
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/login.css">
  <link rel="stylesheet" href="css/headfoot.css">  
  <style>
  /* Reset and base styles */
  
  </style>
</head>
<body>
    <%
	if(request.getParameter("invalid")!=null)
	{
	out.println("<script>alert('Invalid input Credential ...!')</script>");	
	}
   %>
    <header>
        <div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
        <nav class="navbar">
            <a href="index.jsp">Home</a>
            <a href="LoginPage.jsp">Login</a>
            <a href="RegisterPage.jsp">Register</a>
            <a href="contact.jsp">Contact</a>
        </nav>
    </header>
    <main>
        <div class="background">
            <div class="shape"></div>
            <div class="shape"></div>
        </div>
        <form class="login-form"  action="AddRegister" method="post" >
            <h3>Register Here</h3>
            <label for="roll">Select Roll</label>
            <select id="roll" name="roll" required>
                <option value="" disabled selected>---- Select Roll ----</option>
                <option value="User">Student</option>
                <option value="Admin">Admin</option>
                <option value="Company">Company</option>
            </select>
            <label for="email">Username</label>
            <input type="text" id="username" name="username" placeholder="Username" required>
            <label for="email">Email ID</label>
            <input type="text" id="email" name="email" placeholder="Email" required>
            

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Password" required>

            <label for="password">Mobile No</label>
            <input type="tel" name="MbNo" id="MbNo" name="MbNo" placeholder="Mobile No" required>
            <br>
            <input class="button" type="submit" value="Register" style="width:100%; height:42px; font-size:large; background-color:white; color:black;"/>
            
            <p class="links">
                <a href="LoginPage.jsp">Sign in</a> | 
                <a href="ForgetPassword.jsp">Forgot Password</a>
            </p>
        </form>	
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
                            <li><a href="#"><img src="img/face.png" alt="Facebook"></a></li>
                            <li><a href="#"><img src="img/twit.png" alt="Twitter"></a></li>
                            <li><a href="#"><img src="img/insta.png" alt="Instagram"></a></li>
                        </ul>
                    </div>
        </div>
        
    </footer>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Log in</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/headfoot.css">
</head>
<body onload="n1()">
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
<header>
      <img id="e-waste" src="images/logo.png" />
      <h1>E - Waste Management</h1>
    </header>

    <nav>
      <ul class="headings">
        <li class="nav-class" id="nav1"><a href="index.jsp">Home</a></li>
        <li class="nav-class" id="nav2"><a href="about.jsp">About</a></li>
        <li class="nav-class" id="nav3"><a href="login.jsp">Login</a></li>
        <li class="nav-class" id="nav3"><a href="register.jsp">Register</a></li>
        <li class="nav-class" id="nav4"><a href="contact.jsp">Contact</a></li>
      </ul>
    </nav>
 <br />
	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/login.png" alt="sign up image">
						</figure>
						<a href="register.jsp" class="signup-image-link">Create an
							account</a>
						
					</div>
					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						<form method="post" action="AddLogin" class="register-form"
							id="login-form">
							<div class="form-group">
							 <label for="roll"><b>Select Roll : </b></label>
							 <br><br><br>
            <select id="roll" name="roll" required style="width: 300px; height: 30px;">
                <option value="" disabled selected>---- Select Roll ----</option>
                <option value="User">User</option>
                <option value="Admin">Admin</option>
                <option value="DeliveryBoy">DeliveryBoy</option>
            </select>
							</div>
							<div class="form-group">
								<label for="email"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="email" id="email"
									placeholder="Your Mail" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>
<footer>
      <div class="footer-content">
        <p style="color: white;">&copy; 2023 E-Waste Management. All rights reserved.</p>
        <ul class="social-links">
          <li>
            <a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-twitter"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
          </li>
        </ul>
      </div>
    </footer>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	
	
	
	<script type="text/javascript">
	var status=document.getElementById("status").value;
	if(status=="failed")
		{
		swal("Sorry!","wrong username and password","error");
		}
	</script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/headfoot.css">
<link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
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

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="AddRegister" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" required />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email"  required/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" required />
							</div>
							<div class="form-group">
								<label for="address"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="address" id="address" placeholder="Your Address" required/>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password"  required/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" required/>
							</div>
							
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<button class="btn-31">
                               <span class="text-container">
                               <span class="text">Register</span>
                              </span>
                            </button>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/reg1.png" alt="sing up image" style="height: 350px; width:100%">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							Registered</a>
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
	if(status=="success")
		{
		   swal("Congrats","Account created successfully","success");
		}
	</script>
	


</body>

</html>

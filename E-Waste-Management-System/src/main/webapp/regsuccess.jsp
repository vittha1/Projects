<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Success</title>

<!-- SweetAlert CSS -->
<link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">

<!-- Main CSS -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/headfoot.css">

</head>
<style>
/* General styles */


.main {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100%;
  padding: 20px;
  background-color: #ffffff;
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
  border-radius: 10px;
  max-width: 600px;
  margin: auto;
}

/* Signup section styling */
.signup {
  width: 100%;
  text-align: center;
}

.signup-content {
  display: block;
  margin-bottom: 20px;
}

/* Heading styling */
.signup h2.form-title {
  font-size: 24px;
  font-weight: 700;
  color: #333;
  margin-bottom: 10px;
  display: block; /* Ensure block display */
}

/* Paragraph style */
.signup p {
  font-size: 18px;
  color: #555;
  margin-bottom: 20px;
  display: block; /* Ensure block display */
}

/* Button styling */
.btn-primary {
  display: inline-block;
  padding: 12px 30px;
  font-size: 16px;
  font-weight: 600;
  background-color: #4CAF50;
  color: #fff;
  text-decoration: none;
  border-radius: 25px;
  transition: background-color 0.3s ease;
  display: block; /* Ensure block display */
}

.btn-primary:hover {
  background-color: #45a049;
}

/* Responsive behavior */
@media (max-width: 768px) {
  .main {
    padding: 15px;
  }

  .signup h2.form-title {
    font-size: 20px;
  }

  .signup p {
    font-size: 16px;
  }

  .btn-primary {
    padding: 10px 25px;
    font-size: 14px;
  }
}
</style>
<body>

<input type="hidden" id="status" value="success">

<header>
  <img id="e-waste" src="images/logo.png" />
  <h1>E-Waste Management</h1>
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


  <section class="signup">
    <div class="container">
      <div class="signup-content">
        <h2 class="form-title">Account Created Successfully!</h2>
        <p>Thank you for signing up. You can now log in with your account.</p>
        <a href="login.jsp" class="btn btn-primary">Go to Login</a>
      </div>
    </div>
  </section>


<footer>
  <div class="footer-content">
    <p style="color: white;">&copy; 2023 E-Waste Management. All rights reserved.</p>
    <ul class="social-links">
      <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
      <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
      <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
      <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
    </ul>
  </div>
</footer>

<!-- JS -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>

<script type="text/javascript">
  var status = document.getElementById("status").value;
  if(status == "success") {
    swal({
      title: "Success!",
      text: "Your account has been created successfully!",
      icon: "success",
      button: "OK",
    });
  }
</script>

</body>
</html>

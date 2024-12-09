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

<link rel="stylesheet" href="css/hedfoot.css">

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
                <li><a href="managerHome.jsp">Home</a></li>
                <li><a href="addtrainer.jsp">Add Trainer</a></li>
                <li><a href="addplans.jsp">Add Plans</a></li>
                <li><a href="logout">Logout</a></li>
                
            </ul>
        </nav>
    </header>

<main>
  <section class="signup">
    <div class="container">
      <div class="signup-content">
        <h2 class="form-title">Success!</h2>
       
        <a href="managerHome.jsp" class="btn btn-primary">Go to Home</a>
      </div>
    </div>
  </section>
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



<!-- JS -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>

<script type="text/javascript">
  var status = document.getElementById("status").value;
  if(status == "success") {
    swal({
      title: "Success!",
      text: "Successfully Added!",
      icon: "success",
      button: "OK",
    });
  }
</script>

</body>
</html>

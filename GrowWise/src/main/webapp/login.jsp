<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css"/>
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
     
     <!-- font -->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Domine:wght@400..700&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Vollkorn:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
    <title>Hello, world!</title>
  </head>
   <style>
        body {
            background-image: url('https://images.pexels.com/photos/1181248/pexels-photo-1181248.jpeg?auto=compress&cs=tinysrgb&w=600'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .navbar {
            background-color: rgba(255, 255, 255, 0.8);
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px; /* Increased width */
            margin: auto;
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .footer {
            background-color: #bdb09e;
            color: black;
        }
        .btn{
   border-radius: 10rem;
   padding: 0.8rem 1.5rem !important;
}
        .create-account {
            text-decoration: none; /* Removed underline */
            color: #007bff; /* Added blue color to match Bootstrap primary color */
        }
        .create-account:hover {
            text-decoration: underline; /* Underline on hover for better UX */
        }
    </style>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
   <a class="navbar-brand" href="#">
   <img src="images/logo1.png" width="40" height="40" class="d-inline-block align-top" alt="">GrowWise</a>
   
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">SignIn</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="registration.jsp">SignUp</a>
      </li>
      
    </ul>
  </div>
    </div>
</nav>

    <div class="form-container mt-6 animate__animated animate__zoomIn wow">
        <h2>Login</h2>
        <form class="post_section" action="AddLogin" method="post">
            <div class="form-group">
                <label for="role"><b>Select Role:</b></label>
                <select class="form-control" id="role" name="roll" required>
                    <option value="" selected>---- Select Role ----</option>
                    <option value="Parents">Parents</option>
                    <option value="Admin">Admin</option>
                     
                    
                </select>
            </div>
            <div class="form-group">
                <label for="username"><b>UserName:</b></label>
                <input type="text" class="form-control" id="username" name="username" placeholder="John123" required>
            </div>
            <div class="form-group">
                <label for="password"><b>Password:</b></label>
                <input type="password" class="form-control" id="password" name="password" placeholder="eg. X8df!90EO" required>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary btn-block" style="width: 50%; margin: auto;">Log In</button>
            </div>
            <div class="text-center mt-3">
                <a href="registration.jsp" class="create-account"><h5>Create Account</h5></a>
            </div>
        </form>
    </div>
  <section class="footer bg-#b89a70">
<div class="container py-4 text-black text-center">
    <p>
        &copy; 2024 GrowWise. All Rights Reserved.
    </p>
</div>
  </section>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   <script src="js/wow.min.js"></script>
              <script>
              new WOW().init();
              </script>
  </body>
</html>

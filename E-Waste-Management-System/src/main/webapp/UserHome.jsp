<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous"
    />
<link rel="stylesheet" href="css/headfoot.css">
</head>
<style>
 
    main h1{
    text-align: center;
        font-weight: bold;
    }
    .image-container {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 20px;
    }

    .image-container img {
        max-width: 100%;
        height: auto;
        max-height: 400px; /* Adjust the maximum height as needed */
    }
</style>
<body onload="n1()">
<header>
      <img id="e-waste" src="images/logo.png" />
      <h1>E - Waste Management</h1>
    </header>

    <nav>
      <ul class="headings">
        <li class="nav-class" id="nav1"><a href="UserHome.jsp">Home</a></li>
        <!-- <li class="nav-class" id="nav2"><a href="about.jsp">About</a></li> -->
        <li class="nav-class" id="nav3"><a href="sell.jsp">Sell</a></li>
        <li class="nav-class" id="nav3"><a href="buy.jsp">Buy</a></li>
        <li class="nav-class" id="nav3"><a href="mywaste.jsp">My Waste</a></li>
        <li class="nav-class" id="nav3"><a href="myorders.jsp">My Orders</a></li>
        <li class="nav-class" id="nav3"><a href="chatboat.jsp">chatboat</a></li>
        <li class="nav-class" id="nav4"><a href="index.jsp?logout">Logout</a></li>
      </ul>
    </nav>
 <br />
 <main>
 <h1></h1>
  <div class="image-container">
        <img src="images/user.png" alt="Centered Image">
    </div>
</main>
 <footer style="height: 250px;">
      <div class="footer-content">
        <p>&copy; 2023 E-Waste Management. All rights reserved.</p>
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
     <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"
    ></script>
</body>
</html>
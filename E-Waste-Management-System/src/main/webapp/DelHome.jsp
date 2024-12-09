<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="css/headfoot.css"/>
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
        max-height: 400px; 
    }
</style>
<body>
<header>
      <img id="e-waste" src="images/logo.png" />
      <h1>E - Waste Management</h1>
    </header>
    <nav>
      <ul class="headings">
        <li class="nav-class" id="nav1"><a href="DelHome.jsp">Home</a></li>
         <li class="nav-class" id="nav1"><a href="orders.jsp">Orders</a></li>
           <li class="nav-class" id="nav4"><a href="index.jsp?logout">Logout</a></li>
        
      </ul>
    </nav>
 <br/>
 <main><h1>Delivery Boy Home</h1>
  <div class="image-container">
        <img src="images/deliveryboy.png" alt="Centered Image">
    </div>
</main>
 <footer>
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
</body>
</html>
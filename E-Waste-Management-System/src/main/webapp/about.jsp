<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>
 
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
<body onload="n1()">
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
    <section id="about" style="padding: 10px; margin: 10px 100px;">
      <h2 id="about-text">
        About
        <b style="color: #002a54ef; text-shadow: 1px 1px 3px lightblue; text-decoration: underline; ">
        E-Waste Management</b>
      </h2>
      <br /><br />
      <p>
        Welcome to our e-waste management webpage! Here, we are dedicated to
        promoting responsible and sustainable practices for the disposal and
        recycling of electronic waste. Our goal is to protect the environment,
        conserve valuable resources, and raise awareness about the impact of
        e-waste on our planet.
        <br />
        <br />
        We understand the growing concern surrounding the improper handling of
        electronic waste and its detrimental effects on both human health and
        the environment. With our expertise in e-waste management, we offer
        comprehensive solutions to individuals, businesses, and communities,
        ensuring that their electronic devices are handled and disposed of
        responsibly.
      </p>
    </section>
    <br /><br />
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
     <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"
    ></script>
</body>
</html>
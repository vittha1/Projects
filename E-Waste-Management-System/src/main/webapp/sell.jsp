<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.ewaste.database.*"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sell Your Waste</title>
<link href="css/headfoot.css" rel="stylesheet"/>
<link href="css/sell.css" rel="stylesheet"/> 
</head>
<style>
main {
    padding: 20px;
    background-image: url('images/backmain.jpg'); /* Replace with the path to your image */
    background-size: cover; /* Ensures the image covers the whole area */
    background-position: center; /* Centers the image in the main area */
    background-repeat: no-repeat; /* Prevents the image from repeating */
}
</style>
<body>
 <header>
    <img id="e-waste" src="images/logo.png" />
    <h1>E - Waste Management</h1>
 </header>

 <nav>
    <ul class="headings">
        <li class="nav-class" id="nav1"><a href="UserHome.jsp">Home</a></li>
         <li class="nav-class" id="nav1"><a href="sell.jsp">Sell</a></li>
        <li class="nav-class" id="nav3"><a href="buy.jsp">Buy</a></li>
        <li class="nav-class" id="nav4"><a href="index.jsp?logout">Logout</a></li>
    </ul>
 </nav>

 <main>
    <%
      // Check if the session attributes are set, if not, default to an empty string
      String email = (session.getAttribute("email") != null) ? (String) session.getAttribute("email") : "";
      String mobile = (session.getAttribute("contact") != null) ? (String) session.getAttribute("contact") : "";
      String address = (session.getAttribute("address") != null) ? (String) session.getAttribute("address") : "";
      String name = (session.getAttribute("name") != null) ? (String) session.getAttribute("name") : "";
      // Log values for debugging
      System.out.println("Email: " + email);
      System.out.println("Mobile: " + mobile);
      System.out.println("Address: " + address);
    %>
    <div class="form-container">
        <form action="AddWaste" method="post" enctype="multipart/form-data">
            <h2 style="text-align:center; color:salmon">Sell Your Waste</h2>
            <div class="form-group">
                <label for="category">Category</label>
                <select id="category" name="category" required>
                    <option value="">Select a category</option>
                    <option value="mobile">Mobile</option>
                    <option value="laptop">Laptop</option>
                    <option value="tv">TV</option>
                     <option value="radio">Radio</option>
                      <option value="headphones">HeadPhones</option>
                       <option value="others">Others</option>
                </select>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" value="<%=name %>" >
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" value="<%=email %>"/>
            </div>
            <div class="form-group">
                <label for="mobile">Mobile No</label>
                <input type="text" id="mobile" name="mobile" value="<%=mobile %>">
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <textarea id="address" name="address" rows="4"><%=address %></textarea>
            </div>
            <div class="form-group">
                <label for="bname">Brand Name</label>
                <input type="text" id="bname" name="bname" required>
            </div>
            <div class="form-group">
                <label for="condition">Condition</label>
                <input type="text" id="condition" name="condition" required>
            </div>
            <div class="form-group">
                <label for="hold">How old is the item</label>
                <input type="text" id="hold" name="hold" required>
            </div>
             <div class="form-group">
                <label for="quantity">Quantity</label>
                <input type="text" id="quantity" name="quantity" required >
            </div>
             <div class="form-group">
                <label for="price">Price</label>
                <input type="text" id="price" name="price" required >
            </div>
            <div class="form-group">
                <label for="photo">Upload Image</label>
                <input type="file" id="photo" name="photo" required>
            </div>
            <div class="form-group">
                <p id="submit">
                    <button type="submit">Submit</button>
                </p>
            </div>
        </form>
    </div>
 </main>

 <footer>
    <div class="footer-content">
        <p>&copy; 2023 E-Waste Management. All rights reserved.</p>
        <ul class="social-links">
            <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
            <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
            <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
            <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
        </ul>
    </div>
 </footer>

</body>
</html>

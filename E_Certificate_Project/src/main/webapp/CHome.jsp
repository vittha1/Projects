<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>BlockChain</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<!-- <link href="plugin-frameworks/bootstrap.css" rel="stylesheet"> -->
	<!-- <link href="fonts/ionicons.css" rel="stylesheet"> -->
	<link href="css/headfoot.css" rel="stylesheet">
	
</head>
<style>
main{
height: auto;
width: auto;
}

body {
    margin: 0;
    font-family: Arial, sans-serif;
    color: #333;
    background-image: url('img/backg.png'); /* Path to your background image */
    background-size: cover; /* Cover the entire viewport */
    background-position: center; /* Center the image */
    background-attachment: fixed; /* Fix the image in place */
    background-repeat: no-repeat; /* Prevent repeating the image */
}
</style>
<body>
	<%
	if(request.getParameter("succ")!=null)
	{
	out.println("<script>alert('Congratulations....Login Successfull...!')</script>");	
	}
	if(request.getParameter("succ1")!=null)
	{
	out.println("<script>alert('Congratulations....Transaction Successfully...!')</script>");	
	}
	%>
	<header>		
		  <div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
			<ul class="navbar" >
				<li><a href="CHome.jsp" class="current" >Home</a></li>
				<li><a href="ShowQR.jsp" >Show QR-Code</a></li>
				<!-- <li><a href="AddLogin" class="current-demo">Logout</a></li> -->
				<li><a href="index.jsp?logout">Logout</a></li>
			</ul>
			
	</header>

	<main>
	<section class="ptb-0">
	<div class="mb-30 brdr-ash-1 opacty-5"></div>
		<div class="container"><br><br><br>
		 <div class="row">
		  <div class="col-sm-12 col-md-8">
			<div class="row">
				<table align="center">
				<tr>
					<td><img src="img/hr.png" width="100%" height="auto">
				</tr>
				
				<td align="center" style="font-size: 1.5rem; color: red; font-weight: bold;">
                   Welcome to HR section <br>
    <span >(by Best Company)</span> <br>
    <span >Home page</span>
</td>

            </table>			
				</div>
				</div>
				
				
			</div>
		</div>
	</section><br>
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
	<script src="plugin-frameworks/jquery-3.2.1.min.js"></script>	
	<script src="plugin-frameworks/tether.min.js"></script>	
	<script src="plugin-frameworks/bootstrap.js"></script>	
	<script src="common/scripts.js"></script>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>BlockChain</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<!-- <link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<link href="plugin-frameworks/bootstrap.css" rel="stylesheet">
	<link href="fonts/ionicons.css" rel="stylesheet"> -->
	<link href="css/headfoot.css" rel="stylesheet">
</head>
<body>
	<%
	if(request.getParameter("succ")!=null)
	{
	out.println("<script>alert('Congratulations....Login Successfull...!')</script>");	
	}
	if(request.getParameter("insert")!=null)
	{
	out.println("<script>alert('Congratulations....Profile Created Successfull...!')</script>");	
	}
	if(request.getParameter("update")!=null)
	{
	out.println("<script>alert('Student Edu Details Updated Successfull...!')</script>");	
	}
	if(request.getParameter("Sent")!=null)
	{
	out.println("<script>alert('QRCode Upload Successfull...!')</script>");	
	}
   %>
	<header>		
		    <div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
			<ul class="navbar" >
				<li><a href="Home.jsp" class="current" >Home</a></li>
				<li><a href="ProfileUpdate.jsp">Profile Update</a></li>
				<li><a href="QRCode_details.jsp">QRCode Upload</a></li>
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
						<td><img src="img/admin.jpg" width="200" height="250">
					</tr>
					<tr>
						<td><span style="font-size:22px; color: red">Welcome to User Section</span></td>
					</tr>
					<tr>
						<td align="center"><h3><b>Welcome <%=session.getAttribute("Uusername")%></b></h3></td>
					</tr>
					<tr>
						<td align="center"><span style="font-size:22px; color: red">(by Best Student)</span></td>
					</tr>
            	</table>			
				</div>
				</div>
				
				
			</div>
		</div>
	</section><br><br><br><br>
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

					
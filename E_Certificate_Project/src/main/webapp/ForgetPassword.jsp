<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Blockchain</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/headfoot.css">
	<link href="fonts/ionicons.css" rel="stylesheet">
	
</head>
<style>
 .login-container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }
        .login-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .login-header img {
            width: 80px; /* Adjust the logo size */
            height: auto;
        }
        .input-rounded-button {
            border-radius: 20px;
            background-color: #007bff;
            color: white;
            border: none;
        }
        .input-rounded-button:hover {
            background-color: #0056b3; /* Darker shade on hover */
        }
        .image-side {
            margin-top: 30px;
        }
</style>
<body>
	<%
	if(request.getParameter("Done")!=null)
	{
	out.println("<script>alert('Congratulations....Profle Added Successfully ...!')</script>");	
	}
	if(request.getParameter("invalid")!=null)
	{
	out.println("<script>alert('Invalid Login Credential ...!')</script>");	
	}
   %>
	<header>
        <div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
        <ul class="navbar">
                    

            <li><a href="index.jsp">Home</a></li>
            <li><a href="LoginPage.jsp">Login</a></li>
            <li><a href="RegisterPage.jsp">Register</a></li>
            <li><a href="contact.jsp">Contact</a></li>
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
						<td><img src="img/admin.jpg" width="100" height="240">
					</tr>
					<tr>
						<td colspan="2"><b>Login(by Best Student/Admin/HR)</b></td>
					</tr>
            	</table>			
		
						<form class="post_section" action="ForgetPassword" method="post">
							<table align="center" border="0"  cellpadding="5" cellspacing="5">
								<tr>
									<td colspan="2"><div class="cleaner" style="height: 20%">&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
								</tr>
								
								<tr>
									<td><b>Email_ID:</b></td>
									<td><input type="text" name="email" placeholder="mymail@mail.com" required /></td>
								</tr>
								
								<tr>
							     	<td colspan="1" align="center"><input class="input-rounded-button" type="submit" value="Forget" style="height: 30px;width: 80px;"/></td>
							    	
				    			</tr>
							</table>
						</form>	
					</div>
				</div>
				
				
			</div>
		</div>
	</section><br><br><br><br><br><br>
</main>	
	
	<footer>
        <div class="footer-container">
            
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="services.jsp">Services</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <!-- Add more links as needed -->
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Blockchain</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="css/headfoot.css" rel="stylesheet">
	
<style>
.container {
            margin: 0 auto;
            max-width: 1200px;
            padding: 0 15px;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            margin: 0 -15px;
        }

        .col-sm-12 {
            flex: 0 0 100%;
            max-width: 100%;
        }

        .col-md-8, .col-md-4 {
            padding: 0 15px;
        }

        .col-md-8 {
            flex: 2;
        }

        .col-md-4 {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .post_section {
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        .rcorners3 {
            border-radius: 15px;
            border: 1px solid #ccc;
            padding: 20px;
            background-color: #fff;
        }

        .rcorners3 input[type="text"],
        .rcorners3 input[type="file"] {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
        }

        .button {
            background-color: yellow;
            color: black;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        .button:hover {
            background-color: #f0f0f0;
        }

       main  img {
            max-width: 100%;
            height: auto;
            display: block;
        }

        .cleaner {
            height: 10px;
        }
</style>
</head>
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
			<ul class="navbar" >
				<li><a href="Home.jsp" >Home</a></li>
				<li><a href="ProfileUpdate.jsp" class="current">Profile Update</a></li>
				<li><a href="QRCode_details.jsp">QRCode Upload</a></li>
				<li><a href="StudentShow.jsp">Student Information</a></li>		
				
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
				<table align="center" >
					<tr>
						<td><img src="img/upload.png" width="200" height="240">
					</tr>
					<tr>
						<td colspan="2" align="center"><b>QR Code</b></td>
					</tr>
					<tr>
						<td colspan="2" align="center">(by Best Student)</td>
					</tr>
            	</table >	
            		<%
			            String emailid=(String)session.getAttribute("userid");
			        %>		
						<form class="post_section" action="QRCodeupload" method="post" enctype="multipart/form-data">
							<table align="center" class="rcorners3" cellpadding="10px" cellspacing="10px" style="border: 5px solid rgb(124 58 237);">
								
								<tr>
									<td colspan="2" align="center"><h3><b>Upload QRCode</b></h3></td>
								</tr>
								
								<tr>
									<td><b>Email_ID:</b></td>
									<td><input type="text" name="Marksheet_No" placeholder="mymail@mail.com" value="<%=emailid%>" style="width:170px" required /></td>
								</tr>
								<tr>
									<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
								<tr>
									<td><b>Upload QRCode:</b></td>
									<td><input type="file" name="qrcodefile" placeholder="Select Document" required /></td>
								</tr>
								<tr>
							     	<td colspan="2" align="center">
							     		<input type="submit" value="Update" class="button" style="width:112px;height:45px" /></td>
				    			</tr>
							</table>
						</form>	
					</div>
				</div>
				
				<div class="col-sm-12 col-md-4">
					<img src="img/Qr.png" alt="">
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
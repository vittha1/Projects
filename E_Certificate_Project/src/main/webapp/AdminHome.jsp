<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Blockchain</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<link href="plugin-frameworks/bootstrap.css" rel="stylesheet">
	<link href="fonts/ionicons.css" rel="stylesheet">
	<link href="css/headfoot.css" rel="stylesheet">
</head>
<style>
header {
    display: flex;
    justify-content: space-between;
     align-items: center; 
    padding: 20px 30px;
    color: black;
}
.logo img {
     margin-left: 10px;
    height: 120px; /* Adjust the height as needed */
    
}
.navbar {
     justify-content: right;
     list-style-type: none;
    display: flex;
    gap: 20px;
}
.navbar a {
    font-size: 1.4rem;
    color: black;
    text-decoration: none;
    font-weight: bold;
}
.navbar a:hover {
    tecolor: #f9004d;
    transition: .4s;
    box-shadow: 0 0 20px rgb(122, 11, 11);
}
    main{
        height: 400px;
      }
      main img{
     
        height: 400px;
        align-items: center;
        margin-left: 500px;
      }
      footer {
    color: black;
    padding-top: 5px;
  }
  
  .footer-container {
    display: flex;
    justify-content: space-between; /* Distribute space evenly between the sections */
    align-items: center; /* Align the sections vertically center */
    max-width: 1200px;
    margin: 0 auto;
    flex-wrap: wrap; /* Allow sections to wrap on smaller screens */
  }
  
  .footer-section {
    flex: 1; /* Equal space for each section */
    margin: 10px;
    text-align: left;
  
  }
  
  .footer-section:nth-child(2) {
    text-align: center; 
  }
  
  .footer-section:last-child {
    text-align: right; 
  }
  .footer-section h3 {
    font-size: 1.4rem;
    margin-bottom: 10px;
  
  }
  
  .footer-section ul {
    list-style: none;
    padding: 0;
    margin: 0;
  }
  
  .footer-section ul li {
    margin-bottom: 5px;
    
  }
  
  .footer-section ul li a {
    
    color: black;
    text-decoration: none;
  }
  
  .footer-section ul li a:hover {
    text-decoration: underline;
  }
  
  .social-media {
    
    display: flex; /* Use flex layout */
    flex-direction: column; /* Arrange items in a column */
    align-items: right; /* Align items to the left */
    margin-top: 10px; /* Space from the heading */
  }
  
  .social-media img {
    width: 40px;
    height: 30px;
    margin-bottom: 10px; /* Space between logos */
  }
  
  .social-media li {
    margin-right: 50px;
    list-style: none;
    margin-bottom: 20px; /* Space between list items */
  }
  
</style>
<body>
	<%
	if(request.getParameter("Login")!=null)
	{
	out.println("<script>alert('Congratulations....Login Successfull...!')</script>");	
	}
   %>
	<header>		
        <div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
			<ul class="navbar" >
			<li><a href="AdminHome.jsp" >Home</a></li>
				<li><a href="NDataShow.jsp">Data Show</a></li>
				<li><a href="StudentDataShow.jsp">Student Data Show</a></li>
				<li><a href="index.jsp?logout">Logout</a></li>
            </ul>
		
	</header>

	
    
    
	
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
	
</body>
</html> --%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link rel="stylesheet" href="css/headfoot.css"> -->
</head>
<style>
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
header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
    color: black;
}
.logo img {
    height: 120px; /* Adjust the height as needed */
}
.navbar {
  list-style-type: none;
    display: flex;
    gap: 70px;
}
.navbar a {
    font-size: 1.5rem;
    color: black;
    text-decoration: none;
    font-weight: bold;
}
.navbar a:hover {
   tecolor: #f9004d;
    transition: .4s;
    box-shadow: 0 0 20px rgb(122, 11, 11);
}

main{
        height: 400px;
      }
      main img{
        
        height: 400px;
        align-items: center;
        margin-left: 500px;
      }
     footer {
    color: black;
    padding-top: 5px;
  }
  
  .footer-container {
    display: flex;
    justify-content: space-between; /* Distribute space evenly between the sections */
    align-items: center; /* Align the sections vertically center */
    max-width: 1200px;
    margin: 0 auto;
    flex-wrap: wrap; /* Allow sections to wrap on smaller screens */
  }
  
  .footer-section {
    flex: 1; /* Equal space for each section */
    margin: 10px;
    text-align: left;
     font-size: 1.2rem;
  
  }
  
  .footer-section:nth-child(2) {
    text-align: center; 
  }
  
  .footer-section:last-child {
    text-align: right; 
  }
  .footer-section h3 {
    
    margin-bottom: 10px;
  
  }
  
  .footer-section ul {
    list-style: none;
    padding: 0;
    margin: 0;
  }
  
  .footer-section ul li {
    margin-bottom: 5px;
     font-size: 1.2rem;
    
  }
  
  .footer-section ul li a {
    font-size: 1rem;
    color: black;
    text-decoration: none;
     font-size: 1.2rem;
  }
  
  .footer-section ul li a:hover {
    text-decoration: underline;
  }
  
  /* Social media icons size */
  .social-media {
    
    display: flex; /* Use flex layout */
    flex-direction: column; /* Arrange items in a column */
    align-items: right; /* Align items to the left */
    margin-top: 10px; /* Space from the heading */
  }
  
  .social-media img {
    width: 40px;
    height: 30px;
    margin-bottom: 10px; /* Space between logos */
  }
  
  .social-media li {
    margin-right: 50px;
    list-style: none;
    margin-bottom: 20px; /* Space between list items */
  }
  
</style>
<body>
    <header>		
        <div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
			<ul class="navbar" >
			<li><a href="AdminHome.jsp" >Home</a></li>
				<li><a href="NDataShow.jsp">Data Show</a></li>
				<li><a href="StudentDataShow.jsp">Student Data Show</a></li>
				<li><a href="index.jsp?logout">Logout</a></li>
            </ul>
		
	</header>
	<main>
	 <img src="img/admin1.png" alt="admin">
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
</body>
</html>






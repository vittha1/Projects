<%@ page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.user.*" %>
<%@page import="javax.sql.*" %>
<%@page import=" java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@page import="javax.xml.bind.*"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.*" %>
<%@page import=" java.io.PrintWriter" %>
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
	<!-- <link href="common/styles.css" rel="stylesheet"> -->
	<link href="css/headfoot.css" rel="stylesheet">
	<!-- <link rel="stylesheet" type="text/css" href="demo.css" /> -->
<style>
.rcorners3 { 
  border-radius: 15px 50px 30px;
  background: url(./img/Paper22.jpg);
  padding: 20px; 
  width: 200px;
  height: 150px;
}

.button {
  padding: 10px 10px;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #898988f;
  background-color: yellow;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
  width: 50px;
  height: 50px;
}
.button:hover {background-color: #3e8e41}
.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>
<body>
	<header>		
		<div class="logo">
			<img src="img/logo.png" alt="Logo">
		</div>
			<ul class="navbar" >
				<li><a href="CHome.jsp">Home</a></li>
				<li><a href="ShowQR.jsp" class="current">Show QR-Code</a></li>
				<li><a href="index.jsp?logout">Logout</a></li>
			</ul>
			
	</header>

	<section class="ptb-0">
	<div class="mb-30 brdr-ash-1 opacty-5"></div>
		<div class="container"><br><br><br>
		 <div class="row">
		  <div class="col-sm-12 col-md-8">
			<div class="row">
				<table align="center">
					<tr>
						<td><img src="img/admin.jpg" width="200" height="240">
					</tr>
					<tr>
						<td colspan="2" align="center"><b>Home Page (Blockchain)</b></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><b><span>(by Best Company)</span></b></td>
					</tr>
            	</table>			
            	
        		<%
					  try{
						  String emailid=request.getParameter("emailid");
						  int i=1;
						  String query="select * from updateprofile where emailid='"+emailid+"'";
						  Connection conn=DBconn.conn();
						  Statement stmt=conn.createStatement();
						  ResultSet rs=stmt.executeQuery(query);
					    	while(rs.next()){
					    		{
				%>
				<table align="center" class="rcorners3" cellpadding="10" cellspacing="10">
					<tr>
						<td><b>Email_ID:</b></td>
						<td><%=rs.getString(1) %></td>
					</tr>
					<tr>
					 	<td><b>10th (%)</b></td> 
					   	<td><%=rs.getString(10) %>%</td>
					 </tr>
					 <tr>
					 	<td><b>Seat No(10th)</b></td> 
					    <td><%=rs.getString(11) %></td>
					 </tr>
					 <tr>
					 	<td><b>12th(%)</b></td>
					   	<td><%=rs.getString(14) %>%</td>
					 </tr>
					 <tr>
					 	<td><b>Seat No(12th)</b></td>
					    <td><%=rs.getString(15) %></td>
					 </tr>
					 <tr>
					 	<td><b>BE (%)</b></td>
					   	<td><%=rs.getString(18) %>%</td>
					 </tr>
					 <tr>
					 	<td><b>Seat No(BE)</b></td>
					   	<td><%=rs.getString(19) %></td>
          			</tr>
          			<tr>
					 	<td><b>View</b></td>
          				<td><a href="companyinfo?emailid=<%=rs.getString("emailid")%>" style="width:112px;height:42px;font-size: 15px;" class="button">Click Here</a></td>
           			</tr>
				<tr>
					 	<td><b>Transaction</b></td>
          				<td><a href="blockchaintran?emailid=<%=rs.getString("emailid")%>" style="width:112px;height:42px;font-size: 15px;" class="button">Click Here</a></td>
           			</tr>
					 <%}
					  	i++;
					   } %>
					  <% 
					   }
					  	catch (Exception e) {
					    e.printStackTrace();
					  }%>
			    	</table>                           
					</div>
				</div>
				
				
			</div>
		</div>
	</section><br>
	
	
        <div class="footer-container">
            
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.user.*"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>BlockChain</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<!-- <link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<link href="plugin-frameworks/bootstrap.css" rel="stylesheet">
	<link href="fonts/ionicons.css" rel="stylesheet">
	<link href="common/styles.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="demo.css" /> -->
    <link rel="stylesheet" href="css/headfoot.css">
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	 <script type="text/javascript">
		$(document).ready(function() {
    	$('#examples').DataTable( {
        "pagingType": "full_numbers"
	    } );
	} );</script>
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
height: auto;
}

</style>
<body>
    <%
	if(request.getParameter("Update")!=null)
	{
	out.println("<script>alert('Status Update Successfully...!')</script>");	
	}
   %> 
   <header>		
		<div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
			<ul class="navbar" >
				<li><a href="AdminHome.jsp">Home</a></li>
				<li><a href="NDataShow.jsp" >Data Show</a></li>
				<li><a href="StudentDataShow.jsp" >Student Data Show</a></li>
			</ul>
	</header>
	<main>
	<section class="ptb-0">
	<div class="mb-30 brdr-ash-1 opacty-5"></div>
		<div class="container">
		<h3 align="center"><b>View Information:</b></h3>
		 <div >
		  <div >
			<div>
			
				<div ><br>
				
					<table align="center" style="width: 100%; font-size: 1.1rem; color: blue;" class="displays" border="1" cellpadding="15" cellspacing="10" > 	
			<tr style="color: black; font-size: 1.3rem;" >
			<td><b>EmailId:</b></td>
			<td><b>10th (%)</b></td>
			<td><b>Seat No(10th)</b></td>
			<td><b>12th(%)</b></td>
			<td><b>SeatNo(12th)</b></td>
			<td><b>BE (%)</b></td>
			<td><b>Seat No(BE)</b></td>
			<td><b>Action</b></td>
			<td><b>View</b></td>
			</tr>
			 <%
					  try{
						  int i=1;
						  String query="select * from updateprofile where Status_Info='0'";
						  Connection conn=DBconn.conn();
						  Statement stmt=conn.createStatement();
						  ResultSet rs=stmt.executeQuery(query);
					    	while(rs.next()){
					    	{
			%> 
			
				
				
						
				<tr>
					<td><%=rs.getString(1) %></td>
				
					<td><%=rs.getString(10) %>%</td> 
				
					<td><%=rs.getString(11) %></td> 
				
					 <td><%=rs.getString(14) %>%</td>
				
					<td><%=rs.getString(15) %></td>
				
					<td><%=rs.getString(18) %>%</td>
				
					<td><%=rs.getString(19) %></td>
				
					<td> <a href="Accept?emailid=<%=rs.getString("emailid")%>">Accept</a> | 
					<a href="Reject?emailid=<%=rs.getString("emailid")%>">Reject</a> </td>
				
					<td><a href="profview?emailid=<%=rs.getString("emailid")%>" style="background: yellow;color: black;" class="button">View</a></td>
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
	
	
</body>
</html>
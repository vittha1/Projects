<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.user.*"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>BlockChain</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="css/headfoot.css" rel="stylesheet">
<style>
.button {
  padding: 10px 40px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #898988f;
  background-color: #4CAF50;
  border: none;
  border-radius: 25px;
  box-shadow: 0 9px #999;
  width: 350px;
  height: 50px;
}

.button:hover {
  background-color: #4CAF50;
  color: white;
}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
main {
            padding: 20px; /* Add padding around the main content */
            background-color: #f9f9f9; /* Light background for contrast */
        }
    
        .container {
            max-width: 1200px; /* Limit the width of the content */
            margin: 0 auto; /* Center the container */
            padding: 0 15px; /* Add padding inside the container */
        }
    
        .row {
            display: flex;
            flex-wrap: wrap; /* Allow columns to wrap */
            margin: -15px; /* Offset padding */
        }
    
        .col-sm-12,
        .col-md-8,
        .col-md-4 {
            padding: 15px; /* Add padding around columns */
            box-sizing: border-box; /* Include padding and border in element's total width and height */
        }
    
        .col-md-8 {
            flex: 0 0 66.6667%; /* Width of 8 columns out of 12 */
            max-width: 66.6667%;
        }
    
        .col-md-4 {
            flex: 0 0 33.3333%; /* Width of 4 columns out of 12 */
            max-width: 33.3333%;
        }
    
        .post_section {
            background-color: #ffffff; /* White background for form */
            padding: 20px; /* Add padding inside the form */
            border-radius: 8px; /* Rounded corners for form */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Shadow for depth */
        }
    
        table {
            width: 100%; /* Make table full-width */
            border-collapse: collapse; /* Collapse borders */
            margin-bottom: 20px; /* Space below the table */
           
        }
    
        th, td {
            padding: 10px; /* Add padding inside table cells */
            text-align: left; /* Align text to the left */
            border: 1px solid #ddd; /* Light border for table cells */
        }
    
        h2 {
            margin: 20px 0; /* Add vertical margins for headings */
            font-family: "Times New Roman", serif; /* Font style for headings */
            font-size: 22px; /* Font size for headings */
            font-weight: bold; /* Bold text for headings */
            color: #555; /* Darker color for headings */
        }
    
        .button {
            background: yellow; /* Background color for button */
            color: black; /* Text color for button */
            border: none; /* Remove border */
            padding: 10px 20px; /* Add padding inside button */
            border-radius: 5px; /* Rounded corners for button */
            cursor: pointer; /* Change cursor to pointer */
            text-transform: uppercase; /* Uppercase text */
            font-weight: bold; /* Bold text */
        }
    
        .button:hover {
            background: #f0c700; /* Darker background on hover */
        }
    
        .ptb-0 {
            padding-top: 0;
            padding-bottom: 0;
        }
    
        .mb-30 {
            margin-bottom: 30px;
        }
    
        .brdr-ash-1 {
            border: 1px solid #dcdcdc;
        }
    
        .opacty-5 {
            opacity: 0.5;
        }
        
       
</style>
</head>
<body>
	<%
	if(request.getParameter("update")!=null)
	{
	out.println("<script>alert('Student Profile Update Successfull...!')</script>");	
	}
   %>
	<header>		
		 <div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
			<ul class="navbar">
				<li><a href="Home.jsp" >Home</a></li>
				<li><a href="ProfileUpdate.jsp" class="current">Profile Update</a></li>
				<li><a href="QRCode_details.jsp">QRCode Upload</a></li>		
				<!-- <li><a href="AddLogin" class="current-demo">Logout</a></li> -->
				<li><a href="index.jsp?logout">Logout</a></li>
			</ul>
			
	</header>

	<main>
        <section class="ptb-0">
            <div class="mb-30 brdr-ash-1 opacty-5"></div>
                <div class="container">
                 <div class="row">
                  <div class="col-sm-12 col-md-8">
                    <div class="row">
                     <%
                        String emailid=(String)session.getAttribute("userid");
                     %>                
                       <form class="post_section" enctype="multipart/form-data" action="updateprofile" method="post">
                           
                           <table align="center" border="5" cellpadding="10" cellspacing="10">  	
                             <tr>
                                <td colspan="3" align="center"><b>Educational Details </b>(by Best Student)</td>
                                <td rowspan="2" align="center" style="width:150px;"><img src="img/edu.jpg" style="width:150px; height:150px"></td>
                            </tr>
                             <tr align="center">
                                <td><b>Email-Id:</b></td>
                                <td colspan="2">&nbsp;&nbsp;<b><%=emailid%></b></td>
                            </tr>
                             <tr>
                                 <td colspan="4" align="center"><h2 style="font-family: Times New Roman; font-size: 22px; font-weight: bold;">10th</h2></td>
                             </tr>
                             <tr align="center">
                                  <td><b>Percentage(%):</b></td>
                                <td><b>Seat_No:</b></td>
                                <td><b>Passing Year:</b></td>
                                <td><b>Upload MarkSheet:</b></td>
                             </tr>
                             <tr>
                                  <td><input type="text" name="tenpercentage" required="required" pattern="^[1-9]\d*(\.\d+)?$" placeholder="%" style="width:90px;" /></td>
                                  <td><input type="text" name="tenMarksheet_No" required="required" pattern="[A-Z].{0,}[0-9].{5,}" placeholder="Enter No" style="width:110px;" /></td>
                                <td><input type="text" name="tenPassingYear" required="required" pattern="[0-9].{3,}" maxlength="9" placeholder="eg.2020" style="width:120px;" /></td>
                                   <td><input type="file" id="file" name="tenfile" required="required" placeholder="Select Document" /></td>
                            </tr>
                          
                            <tr>
                                 <td colspan="4" align="center"><h2 style="font-family: Times New Roman; font-size: 22px; font-weight: bold;">12th</h2></td>
                             </tr>
                            <tr align="center">
                                  <td><b>Percentage(%):</b></td>
                                <td><b>Seat_No:</b></td>
                                <td><b>Passing Year:</b></td>
                                <td><b>Upload MarkSheet:</b></td>
                             </tr>
                             <tr>
                                  <td><input type="text" name="twelpercentage" required="required" pattern="^[1-9]\d*(\.\d+)?$" placeholder="%" style="width:90px;" /></td>
                                  <td><input type="text" name="twelMarksheet_No" required="required" pattern="[A-Z].{0,}[0-9].{5,}" placeholder="Enter No" style="width:110px;" /></td>
                                <td><input type="text" name="twelPassingYear" required="required" pattern="[0-9].{3,}" maxlength="9" placeholder="eg.2018-2019" style="width:100px;" /></td>
                                <td><input type="file" id="file" name="twelfile" required="required" placeholder="Select Document " /></td>
                            </tr>
                          
                            <tr>
                                 <td colspan="4" align="center"><h2 style="font-family: Times New Roman; font-size: 22px; font-weight: bold;">BE</h2></td>
                             </tr>
                             <tr align="center">
                                  <td><b>Percentage(%):</b></td>
                                <td><b>Seat_No:</b></td>
                                <td><b>Passing Year:</b></td>
                                <td><b>Upload MarkSheet:</b></td>
                             </tr>
                             
                             <tr>
                                  <td><input type="text" name="bepercentage" required="required" pattern="^[1-9]\d*(\.\d+)?$" placeholder="%" style="width:90px;" /></td>
                                  <td><input type="text" name="beMarksheet_No" required="required" pattern="[A-Z].{0,}[0-9].{5,}" placeholder="Enter No" style="width:110px;" /></td>
                                <td><input type="text" name="bePassingYear" required="required" pattern="[0-9].{3,}" maxlength="9" placeholder="eg.2018-2019" style="width:100px;" /></td>
                                <td><input type="file" id="file" name="befile" required="required" placeholder="Select Document " /></td>
                            </tr>
                              <tr>
                                 <td colspan="4" align="center"><h2 style="font-family: Times New Roman; font-size: 22px; font-weight: bold;">Smart Contract Minutes</h2></td>
                             </tr>
                            <tr>
                                 <td colspan="3">
                                   <label data-icon="u" ><b>Select Smart Contract Minutes:</b></label>
                                   <select id="gender" name="minutes" required="required" >
                                      <option selected="selected" style="font-size: 1rem;">Select Minutes</option>		
                                      <%
                                       try{
                                              int i=1;
                                              int flag=0;
                                              String query="select * from tblsmart_contracts";
                                              Connection conn=DBconn.conn();
                                              Statement stmt=conn.createStatement();
                                              ResultSet rs=stmt.executeQuery(query);
                                              while(rs.next())
                                              {
                                       %>
                                        <option value="<%=rs.getString("Duration_Data")%>"><%=rs.getString("MsgData")%></option>
                                        <%}
                                                  }
                                               catch(Exception e)
                                               {}
                                           %>
                                        </select>
                                      </td>
                                      <tr>
                                 <td colspan="4" align="center"><h2 style="font-family: Times New Roman; font-size: 22px; font-weight: bold;">ID Proof</h2></td>
                             </tr>
                                      <td colspan="3"><b>Student ID Proof: </b> 
                                        <input id="file" name="qrcodefile" style="width: 90%" required="required" type="file" placeholder="Select Document " /></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" align="center">
                                          <input type="submit" class="button" value="Update" style="background: yellow;color: black;" class="button button4" style="vertical-align:middle;margin:10px 50px" /></td>
                                </tr>
                         </table>                             					
                       </form>
                     </div>
                </div>
                        <div class="col-sm-12 col-md-4"><br><br><br><br>
                        <h3 align="center"><b>Educational Details</b></h3>
                        <h4 align="center">(by Best Student)</h4>
                            <img src="img/edu.png" alt="">
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
     
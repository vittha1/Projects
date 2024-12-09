<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.user.*"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blockchain</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
        .col-md-8, .col-md-4 {
            padding: 0 15px;
            box-sizing: border-box;
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
        .form-block {
            margin-bottom: 20px;
            border: 10px solid #454545;
            padding: 20px;
            border-radius: 4px;
        }
        .form-block table {
    width: 100%;
    border-collapse: collapse;
    
    border-spacing: 0 15px; 
}


.form-block td {
    padding: 25px; 
    vertical-align: middle; 
}


.form-block input[type="text"],
.form-block select,
.form-block input[type="date"] {
    width: 100%;
    padding: 10px; 
    box-sizing: border-box;
    height: 40px; 
}


.button {
    height: 50px; 
    width: 80px
    
}
        .button:hover {
           tecolor: #f9004d;
    transition: .4s;
    box-shadow: 0 0 20px rgb(122, 11, 11);
        }
        img {
            max-width: 250px;
            height: 200;
        }
        .profile-update {
            text-align: center;
            margin-top: 10px;
        }
        input{
        font-size: 1rem;
        }
      
    </style>
</head>
<body>
    <%
    if(request.getParameter("succ") != null) {
        out.println("<script>alert('Congratulations....Login Successful...!')</script>");    
    }
    %>
    <header>        
        <div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
        <ul class="navbar">
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="ProfileUpdate.jsp" class="current">Profile Update</a></li>
            <li><a href="QRCode_details.jsp">QRCode Upload</a></li>        
            <li><a href="index.jsp?logout">Logout</a></li>
        </ul>
    </header>
    <main>
        <section class="ptb-0">
            <div class="mb-30 brdr-ash-1 opacty-5"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <form action="AddProUpdate" method="post" class="form-block form-bold form-mb-20 form-h-35 form-brdr-b-grey pr-50 pr-sm-0">
                            <%
                            String emailid = (String)session.getAttribute("userid");
                            String mobileno = (String)session.getAttribute("mobile"); 
                            String First_Name = "";
                            String Middle_Name = "";
                            String Last_Name = "";
                            String Address = "";
                            String Gender = "";
                            String DOB = "";
                            try {
                                int flag = 0;
                                String query = "select * from updateprofile where emailid='" + emailid + "'";
                                Connection conn = DBconn.conn();
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery(query);
                                if (rs.next()) {
                                    flag = 1;
                                    First_Name = rs.getString(2);
                                    Middle_Name = rs.getString(3);
                                    Last_Name = rs.getString(4);
                                    Address = rs.getString(5);
                                    Gender = rs.getString(6);
                                    DOB = rs.getString(8);
                                }
                                if (flag == 1) {
                            %>
                            <table style="font-size: 1.2rem;">
                                <tr>
                                    <td><b>Email Id</b></td>
                                    <td><input type="text" name="emailid" value="<%=emailid %>" required="required" readonly="readonly" placeholder="myusername or mymail@mail.com" /></td>
                                    <td><b>First Name</b></td>
                                    <td><input type="text" name="firstname" value="<%=First_Name %>" readonly="readonly" required /></td>
                                </tr>
                                <tr>
                                    <td><b>Middle Name</b></td>
                                    <td><input type="text" name="middlename" value="<%=Middle_Name %>" readonly="readonly" placeholder="eg. Abc" required /></td>
                                    <td><b>Last Name</b></td>
                                    <td><input type="text" name="lastname" value="<%=Last_Name %>" readonly="readonly" required /></td>
                                </tr>
                                <tr>
                                    <td><b>Address</b></td>
                                    <td><input type="text" name="address" value="<%=Address %>" readonly="readonly" placeholder="Enter Address" required /></td>
                                    <td><b>Gender</b></td>
                                    <td><input type="text" name="gender" value="<%=Gender %>" readonly="readonly" required /></td>
                                </tr>
                                <tr>
                                    <td><b>Mobile Number</b></td>
                                    <td><input type="text" name="mobileno" value="<%=mobileno %>" readonly="readonly" required="required" placeholder="eg.1234567890"/></td>
                                    <td><b>DOB</b></td>
                                    <td><input type="text" name="DOB" required value="<%=DOB %>" readonly="readonly"/></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center"><input type="submit" value="Next" class="button" /></td>
                                    <td colspan="2" align="center"><input type="reset" value="Reset" class="button" /></td>
                                </tr>
                            </table>
                            <%
                                } else {
                            %>
                            <table style="font-size: 1.2rem;">
                                <tr >
                                    <td><b>Email Id</b></td>
                                    <td><input type="text" name="emailid" value="<%=emailid %>" required="required" readonly="readonly" placeholder="myusername or mymail@mail.com"/></td>
                                    <td><b>First Name</b></td>
                                    <td><input type="text" name="firstname" pattern="[A-Za-z].{1,}" title="Minimum Two  Characters  are Required For First Name" required /></td>
                                </tr>
                                <tr>
                                    <td><b>Middle Name</b></td>
                                    <td><input type="text" name="middlename" pattern="[A-Za-z].{1,}" title="Minimum Two  Characters  are Required For First Name" placeholder="eg. Abc" required /></td>
                                    <td><b>Last Name</b></td>
                                    <td><input type="text" name="lastname" pattern="[A-Za-z].{1,}" title="Minimum Two  Characters  are Required For Last Name" required /></td>
                                </tr>
                                <tr>
                                    <td><b>Address</b></td>
                                    <td><input type="text" name="address" placeholder="Enter Address" required /></td>
                                    <td><b>Gender</b></td>
                                    <td>
                                        <select id="gender" name="gender" required="required">
                                            <option selected="selected">Select Gender</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Mobile Number</b></td>
                                    <td><input type="text" name="mobileno" value="<%=mobileno %>" readonly="readonly" required="required" placeholder="eg.1234567890"/></td>
                                    <td><b>DOB</b></td>
                                    <td><input type="date" name="DOB" required /></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center"><input type="submit" value="Next" class="button" /></td>
                                    <td colspan="2" align="center"><input type="reset" value="Reset" class="button" /></td>
                                </tr>
                            </table>
                            <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            %>
                        </form>
                    </div>
                    <div class="col-md-4">
                       
                        <img src="img/xyz.png" alt="" style="height: 350px;">
                         <h3 align="center"><b>Profile Update</b></h3>
                        <h4 align="center">(by Best Student)</h4>
                    </div>
                </div>
            </div>
        </section>
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
            <div class="footer-section">
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

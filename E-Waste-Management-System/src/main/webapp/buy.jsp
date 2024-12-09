<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%
    String username = (String) session.getAttribute("email");
    int id = (int) session.getAttribute("id");
    String name = (String) session.getAttribute("name");
%>  
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="com.ewaste.database.DBConn" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="css/sb-admin-2.min.css" rel="stylesheet"> 
<link href="css/headfoot.css" rel="stylesheet">
<title>Buy</title>
</head>
 <style>   
            .Cheadline{
                color: hotpink;
                display: flex;
                align-items: center;
                justify-content: center;
                font-style: italic;
                font-size: 30px;
            }
            label{
                color: white;
                font-size: 18px;
                font-style: italic;
                font-family: cursive;
                font-weight: bold;
            }
            .card .avatar {       
                width: 285px;
                height: 100%;      
               
            }
.card .avatar img {
width: 100%;
height: 300px;
}	
         

.card-body button {
 outline: none;
 cursor: pointer;
 border: none;
 padding: 0.9rem 2rem;
 margin: 0;
 font-family: inherit;
 font-size: inherit;
 position: relative;
 display: inline-block;
 letter-spacing: 0.05rem;
 font-weight: 700;
 font-size: 17px;
 border-radius: 500px;
 overflow: hidden;
 background: #66ff66;
 color: ghostwhite;
}

.card-body button span {
 position: relative;
 z-index: 10;
 transition: color 0.4s;
}

.card-body button:hover span {
 color: black;
}

.card-body button::before,
button::after {
 position: absolute;
 top: 0;
 left: 0;
 width: 100%;
 height: 100%;
 z-index: 0;
}

.card-body button::before {
 content: "";
 background: #000;
 width: 120%;
 left: -10%;
 transform: skew(30deg);
 transition: transform 0.4s cubic-bezier(0.3, 1, 0.8, 1);
}

.card-body button:hover::before {
 transform: translate3d(100%, 0, 0);
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
          <li class="nav-class" id="nav1"><a href="buy.jsp">Buy</a></li>
        <li class="nav-class" id="nav4"><a href="contact.jsp">Contact</a></li>
      </ul>
    </nav>
 <br/>
 
 <div class="search">
                        <div class="row justify-content-center">
                            <div class="col-12 col-md-10 col-lg-8">
                                <form class="card card-sm">
                                    <div class="card-body row no-gutters align-items-center">
                                        <div class="col-auto">
                                            <i class="fas fa-search fa-2x"></i>
                                        </div>
                                     
                                        <div class="col">
                                            <input class="form-control form-control-lg form-control-borderless" type="search" name="search" placeholder="Search Category or price">
                                        </div>
                                        
                                        <div class="col-auto">
                                            <button class="btn btn-lg btn-outline-info" type="submit"  id="search"><span>Search</span></button>
                                        </div>
                                      
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="Cheadline">
                        <%  Blob blob = null;
                            byte[] imgData = null;
                            Connection con = null;
                            String image;
                            String mobile = "";
                           
                        %>
                       
                    </div>
                    <section class="container">
    <div class="row">
        <%  
            try {
                con = DBConn.conn();
                String sql = "";
                String query = request.getParameter("search");
                if (query != null) {
                    sql = "select * from addwaste where category like '%" + query + "%' or price like '%" + query + "%' or quantity like '%" + query + "%' ";
                } else {
                    sql = "select * from addwaste";
                }
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    mobile = rs.getString(4);
                    String price = rs.getString(12);
                    int wasteId = rs.getInt(11); 
        %>
        <div class="col-md-4">
            <div class="card" style="margin-bottom: 30px;">
                <div class="avatar">
                    <%  
                        blob = rs.getBlob(10);
                        byte[] imageBytes = blob.getBytes(1, (int) blob.length());
                        String encodedImage = Base64.getEncoder().encodeToString(imageBytes);
                        image = "data:image/jpg;base64," + encodedImage;
                        out.print("<img src=" + image + ">"); 
                    %>
                </div>
                <div class="card-body">
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><b>Category:&nbsp;&nbsp;</b><%=rs.getString(1)%></li>
                    <li class="list-group-item"><b>Brand Name:&nbsp;&nbsp;</b><%=rs.getString(6)%></li>
                    <li class="list-group-item"><b>Price:&nbsp;&nbsp;</b>Rs.<%=rs.getString(12)%></li>
                    <li class="list-group-item"><b>Condition:&nbsp;&nbsp;</b><%=rs.getString(7)%></li>
                    <li class="list-group-item"><b>Quantity:&nbsp;&nbsp;</b><%=rs.getString(9)%></li>
                    <li class="list-group-item"><b>How Much Old:&nbsp;&nbsp;</b><%=rs.getString(8)%></li>
                </ul>
                <%
                HttpSession ses = request.getSession();
                ses.setAttribute("category", rs.getString(1));
                ses.setAttribute("photo",rs.getBlob(10));
                ses.setAttribute("bname", rs.getString(6));
                ses.setAttribute("price", rs.getString(12));
                ses.setAttribute("id", rs.getInt(11));
                
                %>
                <div class="card-body">
           <button>
           <span><a href="pay.jsp?price=<%=rs.getString(12)%>&id=<%=rs.getInt(11)%>">Buy Now</a></span>
          </button>
            </div>

            </div>
        </div>
        <%      
                }
            } catch (Exception e) 
        {
                e.printStackTrace();
            }
        %>
    </div>
</section>

 <footer>
  <div class="footer-content">
        <p>&copy; 2023 E-Waste Management. All rights reserved.</p>
        <ul class="social-links">
          <li>
            <a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-twitter"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
          </li>
          <li>
            <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
          </li>
        </ul>
      </div>
 </footer>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
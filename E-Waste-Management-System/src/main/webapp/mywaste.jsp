<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%
    String user = (String) session.getAttribute("email");
    String mob = (String) session.getAttribute("contact");
    System.out.println("Mobile No: " + mob);
    if (user == null) {
        session.invalidate();
        response.sendRedirect("login.jsp");
    }
%>
<%@page import="com.ewaste.database.DBConn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/headfoot.css">
    <title>Waste Details</title>
    <style>
        .Cheadline {
            color: hotpink;
            display: flex;
            align-items: center;
            justify-content: center;
            font-style: italic;
            font-size: 30px;
        }
        label {
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
    </style>
</head>
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
            <li class="nav-class" id="nav4"><a href="index.jsp?logout">Logout</a></li>
        </ul>
    </nav>
    <br />

    <div class="Cheadline">
        <%
            Blob blob = null;
            byte[] imgData = null;
            Connection con = null;
            String image;
        %>
        <%
            HttpSession sess = request.getSession(false);
            String name = (String) sess.getAttribute("name");
        %>
        <h1><%= name != null ? name : "Waste Details" %></h1>
    </div>
    
    <section class="container">
        <div class="row">
            <%
                try {
                    con = DBConn.conn();
                    String s = "select * from addwaste where mobile like '%" + mob + "%' ";
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery(s);
                    while (rs.next()) {
                        int id = rs.getInt(11);
            %>

            <div class="col-md-4" style="margin-bottom: 20px;">
                <div class="card">
                    <div class="avatar">
                        <%
                            blob = rs.getBlob(10);
                            byte[] imageBytes = blob.getBytes(1, (int) blob.length());
                            String encodedImage = Base64.getEncoder().encodeToString(imageBytes);
                            image = "data:image/jpg;base64," + encodedImage;
                            out.print("<img src='" + image + "' class='card-img-top'>");
                        %>
                    </div>
                    <div class="card-body">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><b>Category:&nbsp;&nbsp;</b><%= rs.getString(1) %></li>
                            <li class="list-group-item"><b>BrandName:&nbsp;&nbsp;</b><%= rs.getString(6) %></li>
                            <li class="list-group-item"><b>Price:&nbsp;&nbsp;</b>Rs.<%= rs.getString(12) %></li>
                            <li class="list-group-item"><b>Condition:&nbsp;&nbsp;</b><%= rs.getString(7) %></li>
                            <li class="list-group-item"><b>Quantity:&nbsp;&nbsp;</b><%= rs.getString(9) %></li>
                            <li class="list-group-item"><b>Mobile:&nbsp;&nbsp;</b><%= rs.getString(4) %></li>
                        </ul>
                        <div class="card-body">
                            <a href="UpdateWaste.jsp?id=<%= id %>" class="card-link">Edit</a>
                            <a href="DeleteWaste.jsp?id=<%= id %>" class="card-link">Delete</a>
                        </div>
                    </div>
                </div>
            </div>

            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </div>
    </section>
    
    <footer>
        <div class="footer-content">
            <p>&copy; 2023 E-Waste Management. All rights reserved.</p>
            <ul class="social-links">
                <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
                <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
                <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
            </ul>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

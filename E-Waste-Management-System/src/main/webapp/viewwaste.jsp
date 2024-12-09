<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.ewaste.database.DBConn"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Waste</title>
    <link rel="stylesheet" href="css/headfoot.css">
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
<header>
    <img id="e-waste" src="images/logo.png" />
    <h1>E - Waste Management</h1>
</header>

<nav>
    <ul class="headings">
        <li class="nav-class" id="nav1"><a href="AdminHome.jsp">Home</a></li>
        <li class="nav-class" id="nav1"><a href="Udata.jsp">Users Data</a></li>
        <li class="nav-class" id="nav1"><a href="viewwaste.jsp">Waste Data</a></li>
        <li class="nav-class" id="nav4"><a href="index.jsp?logout">Logout</a></li>
    </ul>
</nav>
<br />
<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Waste List</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Waste Category</th>
                            <th>Brand Name</th>
                            <th>Mobile</th>
                            <th>Quantity</th>
                            <th>Condition</th>
                            <th>Old</th>
                            <th>Price</th>
                            <th>Delete</th> <!-- Added Delete Column -->
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Waste Category</th>
                            <th>Brand Name</th>
                            <th>Mobile</th>
                            <th>Quantity</th>
                            <th>Condition</th>
                            <th>Old</th>
                            <th>Price</th>
                            <th>Delete</th> <!-- Added Delete Column -->
                        </tr>
                    </tfoot>
                    <tbody>
                        <%
                            try {
                                Connection con = DBConn.conn();
                                Statement st = con.createStatement();
                                String sql = "select * from addwaste";
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                                    String wasteId = rs.getString("id"); // Assuming `id` is the primary key
                        %>
                        <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(9)%></td>
                            <td><%=rs.getString(7)%></td>
                            <td><%=rs.getString(8)%></td>
                            <td><%=rs.getString(12)%>&nbsp;RS</td>
                            <td>
                                <form action="addeleteWaste.jsp" method="post">
                                    <input type="hidden" name="wasteId" value="<%=wasteId%>">
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </td> <!-- Added Delete Button -->
                        </tr>
                        <%
                                }
                                con.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
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
</body>
</html>

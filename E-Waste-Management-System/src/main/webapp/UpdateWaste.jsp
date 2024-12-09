<%@page import="java.io.PrintWriter" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="com.ewaste.entity.*" %>
<%@page import="com.ewaste.database.*" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/sell.css" rel="stylesheet"/>
        <link href="css/headfoot.css" rel="stylesheet">
        <title>House Registration</title>
        
    </head>
    <style>
main {
    padding: 20px;
    background-image: url('images/backmain.jpg'); 
    background-size: cover;
    background-position: center; 
    background-repeat: no-repeat;
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
        <li class="nav-class" id="nav4"><a href="index.jsp?logout">Logout</a></li>
      </ul>
    </nav>
 <br />

        <div class="Cheadline">
            <%
                HttpSession sess = request.getSession(false);
                String name=(String)sess.getAttribute("name");
            %>
            <h1 style="text-align: center; font-weight: bold; color:red;" ><%= name != null ? name : "Waste Details" %></h1>
        </div>
        <%
            String sid = request.getParameter("id");
            System.out.println(sid);
            int id = Integer.parseInt(sid);
            request.setAttribute("id", sid);
            try {
                Connection con = DBConn.conn();
                String s = "select * from addwaste where id like '%" + id + "%' ";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(s);
                while (rs.next()) {

        %>
        <div class="form-container">
       <form action="UpdateWaste?id=<%=id%>" method="post">
    <h2 style="text-align:center; color:salmon">Sell Your Waste</h2>
    
    <div class="form-group">
        <label for="category">Category</label>
        <select id="category" name="category" required>
            <option value="">Select a category</option>
            <option value="mobile" <%= "mobile".equals(rs.getString("category")) ? "selected" : "" %>>Mobile</option>
            <option value="laptop" <%= "laptop".equals(rs.getString("category")) ? "selected" : "" %>>Laptop</option>
            <option value="tv" <%= "tv".equals(rs.getString("category")) ? "selected" : "" %>>TV</option>
            <option value="radio" <%= "radio".equals(rs.getString("category")) ? "selected" : "" %>>Radio</option>
            <option value="headphones" <%= "headphones".equals(rs.getString("category")) ? "selected" : "" %>>HeadPhones</option>
            <option value="others" <%= "others".equals(rs.getString("category")) ? "selected" : "" %>>Others</option>
        </select>
    </div>
    
    <div class="form-group">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="<%= rs.getString("name") %>" required>
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="<%= rs.getString("email") %>" required>
    </div>
    <div class="form-group">
        <label for="mobile">Mobile No</label>
        <input type="text" id="mobile" name="mobile" value="<%= rs.getString("mobile") %>" required>
    </div>
    <div class="form-group">
        <label for="address">Address</label>
        <textarea id="address" name="address" rows="4" required><%= rs.getString("address") %></textarea>
    </div>
    <div class="form-group">
        <label for="bname">Brand Name</label>
        <input type="text" id="bname" name="bname" value="<%= rs.getString("bname") %>" required>
    </div>
    <div class="form-group">
        <label for="condition">Condition</label>
        <input type="text" id="condition" name="condition" value="<%= rs.getString("condition") %>" required>
    </div>
    <div class="form-group">
        <label for="hold">How old is the item</label>
        <input type="text" id="hold" name="hold" value="<%= rs.getString("hold") %>" required>
    </div>
    <div class="form-group">
        <label for="quantity">Quantity</label>
        <input type="text" id="quantity" name="quantity" value="<%= rs.getString("quantity") %>" required>
    </div>
    <div class="form-group">
        <label for="price">Price</label>
        <input type="text" id="price" name="price" value="<%= rs.getString("price") %>" required>
    </div>
    
    <div class="form-group">
        <p id="submit">
            <button type="submit">Submit</button>
        </p>
    </div>
</form>

    </div>
        <%
                }
            } catch (Exception e) {

            }
        %>

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
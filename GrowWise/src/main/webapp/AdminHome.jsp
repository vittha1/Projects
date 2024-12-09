<%@ page import="java.sql.*" %>
<%@ page import="com.database.Dbconn" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/adhome.css"/>
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
     
     <!-- font -->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Domine:wght@400..700&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Vollkorn:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
    <title>Hello, world!</title>
  </head>
  <style>
 

        #doctor-form {
           
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        #doctor-form h3 {
            color: #007bff;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .form-group label {
            font-weight: bold;
            color: #495057;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            font-weight: bold;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
        .alert {
            font-size: 0.9rem;
            margin-bottom: 20px;
        }
        
        .adddoc{
	background-image: linear-gradient(to top, #fdcbf1 0%, #fdcbf1 1%, #e6dee9 100%);
}
.user{
    margin-top: 50px;
	background-image: linear-gradient(to top, #cfd9df 0%, #e2ebf0 100%);
}
.doclist{
	background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);
	
}
    </style>
 
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
   <a class="navbar-brand" href="#">
   <img src="images/logo1.png" width="40" height="40" class="d-inline-block align-top" alt="">GrowWise</a>
   
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto menus">
      <li class="nav-item active">
        <a class="nav-link" href="AdminHome.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#users">Users</a>
      </li>
       
      
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">LOGOUT</a>
      </li>
    </ul>
  </div>
    </div>
</nav>
<header class="header">
<div class="container h-100">
<div class="row h-100 align-items-center">
<div class="col-md-12 text-center">
<h1 class="animate__animated animate__bounceInDown wow" style="font-weight: bold;">Welcome to Admin Home</h1>
<!-- <p class="animate__animated animate__fadeIn wow" data-wow-delay="800ms">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam earum illum modi minus voluptatum architecto laboriosam optio, consequuntur inventore incidunt maiores adipisci facere nihil officia assumenda ab odit laborum. Eum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem optio quisquam quaerat laboriosam, architecto iure. Voluptate dolore optio assumenda ex</p> -->
<button class="btn btn-primary animate__animated animate__bounceInUp wow" style=" border-radius: 10rem;
   padding: 1rem 1rem !important;">Explore</button>

</div>
</div>
</div>
</header>


<!-- Display user which are present in resgistration table i want to show this table using bootstrap 4 -->
 
        <!-- Users Section -->
         <div class="container mt-5 user">
        <section  id="users">
            <h3 class="text-center mb-4">Users</h3>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Full Name</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        try {
                            Connection con = Dbconn.conn();
                            String query = "SELECT * FROM registration";
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery(query);
                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("username") %></td>
                        <td><%= rs.getString("email") %></td>
                        <td><%= rs.getString("fullname") %></td>
                        <td><%= rs.getString("status") %></td>
                        <td>
                            <!-- Accept/Reject buttons -->
                            <form action="UpdateStatusServlet" method="post" style="display:inline;">
                                <input type="hidden" name="username" value="<%= rs.getString("username") %>">
                                <input type="hidden" name="status" value="accept">
                                <button type="submit" class="btn btn-success btn-sm">Accept</button>
                            </form>
                            <form action="UpdateStatusServlet" method="post" style="display:inline;">
                                <input type="hidden" name="username" value="<%= rs.getString("username") %>">
                                <input type="hidden" name="status" value="reject">
                                <button type="submit" class="btn btn-danger btn-sm">Reject</button>
                            </form>
                        </td>
                    </tr>
                    <% 
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </tbody>
            </table>
        </section></div>
    





  <section class="footer bg-#b89a70">
<div class="container py-4 text-black text-center">
    <p>
        &copy; 2024 GrowWise. All Rights Reserved.
    </p>
</div>
  </section>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   <script src="js/wow.min.js"></script>
   <script src="js/script.js"></script>
              <script>
              new WOW().init();
              </script>
  </body>
</html>

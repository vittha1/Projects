<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/safe.css"/>
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
     
     <!-- font -->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Domine:wght@400..700&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Vollkorn:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
    
    <!-- Owl carousel -->
    <link rel="stylesheet" href="css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="css/owl.theme.default.css"/>
    
    <title>Hello, world!</title>
  </head>
  
  <style>
  body{
  background-image: linear-gradient(to top, #dfe9f3 0%, white 100%);}
        #start {
           background: linear-gradient(to bottom, #D5DEE7 0%, #E8EBF2 50%, #E2E7ED 100%), linear-gradient(to bottom, rgba(0,0,0,0.02) 50%, rgba(255,255,255,0.02) 61%, rgba(0,0,0,0.02) 73%), linear-gradient(33deg, rgba(255,255,255,0.20) 0%, rgba(0,0,0,0.20) 100%);
           background-blend-mode: normal,color-burn;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            max-width: 600px; /* Set maximum width */
            margin: 0 auto; /* Center the container */
        }
        .btn-primary {
            background: #007bff;
            border: none;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background: #0056b3;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-control:focus {
            border-color: #6c757d;
            box-shadow: none;
        }
        .alert-heading {
            font-size: 1.5rem;
        }
</style>
  <body>
  
  <%
  String fname=(String) session.getAttribute("fullname");
  String uname=(String) session.getAttribute("uname");
  System.out.println(uname);
  System.out.println(fname);
  %>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="images/logo1.png" width="40" height="40" class="d-inline-block align-top" alt=""> GrowWise
        </a>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto menus">
                <li class="nav-item active">
                    <a class="nav-link" href="phome.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                
                
                <!-- Dropdown for username and logout -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-uppercase" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <%= session.getAttribute("uname") %>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                        <li><a class="dropdown-item" href="AddLogin">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

  <div class="container mt-5" id="start">
        <h2 class="text-center mb-3 text-primary">Child Monthly Activity Tracker</h2>
        <form action="tracking.jsp" method="post">
            <!-- Eating Habits -->
            <div class="form-group mb-3">
                <label for="breakfast">Did the child eat breakfast every day last month?</label>
                <select class="form-control" id="breakfast" name="breakfast" required>
                    <option value="">Select</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
            </div>

            <div class="form-group mb-3">
                <label for="lunch">Did the child eat lunch every day last month?</label>
                <select class="form-control" id="lunch" name="lunch" required>
                    <option value="">Select</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
            </div>

            <div class="form-group mb-3">
                <label for="dinner">Did the child eat dinner every day last month?</label>
                <select class="form-control" id="dinner" name="dinner" required>
                    <option value="">Select</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
            </div>

            <!-- Physical Activity -->
            <div class="form-group mb-3">
                <label for="play">Did the child play or engage in physical activity regularly last month?</label>
                <select class="form-control" id="play" name="play" required>
                    <option value="">Select</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
            </div>

            <!-- Study Habits -->
            <div class="form-group mb-3">
                <label for="study">Did the child study or complete their schoolwork on time last month?</label>
                <select class="form-control" id="study" name="study" required>
                    <option value="">Select</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
            </div>

            <!-- Screen Time -->
            <div class="form-group mb-3">
                <label for="screenTime">Was the child's screen time (TV, mobile, etc.) limited to 2 hours or less daily last month?</label>
                <select class="form-control" id="screenTime" name="screenTime" required>
                    <option value="">Select</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
            </div>

            <!-- Social Interactions -->
            <div class="form-group mb-3">
                <label for="social">Did the child interact socially with family or friends regularly last month?</label>
                <select class="form-control" id="social" name="social" required>
                    <option value="">Select</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary w-100">Submit</button>
            
            
        </form>

        <hr>

        <% 
            String breakfast = request.getParameter("breakfast");
            String lunch = request.getParameter("lunch");
            String dinner = request.getParameter("dinner");
            String play = request.getParameter("play");
            String study = request.getParameter("study");
            String screenTime = request.getParameter("screenTime");
            String social = request.getParameter("social");

            if (breakfast != null && lunch != null && dinner != null && play != null 
                    && study != null && screenTime != null && social != null) {
                int score = 0;

                score += "yes".equals(breakfast) ? 1 : 0;
                score += "yes".equals(lunch) ? 1 : 0;
                score += "yes".equals(dinner) ? 1 : 0;
                score += "yes".equals(play) ? 1 : 0;
                score += "yes".equals(study) ? 1 : 0;
                score += "yes".equals(screenTime) ? 1 : 0;
                score += "yes".equals(social) ? 1 : 0;

                String status;
                if (score == 7) {
                    status = "Perfect";
                } else if (score >= 5) {
                    status = "Good";
                } else if (score >= 3) {
                    status = "Average";
                } else {
                    status = "Bad";
                }
        %>
        <div class="alert alert-info mt-4" role="alert">
            <h4 class="alert-heading text-center">Tracking Status</h4>
            <p class="text-center">Your child's tracking status for the last month is: <strong><%= status %></strong></p>
        </div>
        <% 
            }
        %>
    </div>

<br><br>
 <section class="footer bg-#D3D3D3" style="background-color: white;">
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
   <script src="js/owl.carousel.min.js"></script>
   <script src="js/script.js"></script>
   <script>
   $(document).ready(function(){
       $(".owl-carousel").owlCarousel(
           {
               autoplay: true,
               loop:true,
               margin:10,
               responsive:{
                   0:{
                       items:1,
                       nav:true
                   },
                   600:{
                       items:3,
                       nav:false
                   },
                   1000:{
                       items:3,
                       nav:true,
                       loop:false
                   }
           }
       }
       );
     });
   </script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
              <script>
              new WOW().init();
              </script>
   
  </body>
</html>

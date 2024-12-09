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
</nav><br><br>

 <body>
   <section>
    <div class="container d-flex align-items-center justify-content-center min-vh-100">
        <div class="card p-4">
            <h1 class="text-center mb-4">Child Symptom Checker</h1>
            <form action="SymptomServlet" method="post">
                <div class="form-group">
                    <label for="childName">Child's Name</label>
                    <input type="text" class="form-control" id="childName" name="childName" placeholder="Enter child's name" required>
                </div>

                <!-- Symptom Input Fields -->
                <div class="form-group">
                    <label for="symptomSet1">Respiratory Symptoms</label>
                    <select class="form-control" id="symptomSet1" name="symptomSet1">
                        <option value="">Select</option>
                        <option value="fever">Fever</option>
                        <option value="cough">Cough</option>
                        <option value="breathing">Difficulty Breathing</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="symptomSet2">Skin-Related Symptoms</label>
                    <select class="form-control" id="symptomSet2" name="symptomSet2">
                        <option value="">Select</option>
                        <option value="rash">Skin Rash</option>
                        <option value="itching">Itching</option>
                        <option value="redness">Redness</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="symptomSet3">Digestive Symptoms</label>
                    <select class="form-control" id="symptomSet3" name="symptomSet3">
                        <option value="">Select</option>
                        <option value="vomiting">Vomiting</option>
                        <option value="diarrhea">Diarrhea</option>
                        <option value="stomachPain">Stomach Pain</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="symptomSet4">General Symptoms</label>
                    <select class="form-control" id="symptomSet4" name="symptomSet4">
                        <option value="">Select</option>
                        <option value="fatigue">Fatigue</option>
                        <option value="headache">Headache</option>
                        <option value="lossAppetite">Loss of Appetite</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary btn-block">Check</button>
            </form></section>
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

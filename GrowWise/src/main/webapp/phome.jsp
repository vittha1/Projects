<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/phome1.css"/>
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
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#explore">Explore</a>
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

<header class="header">
<div class="container h-100">
<div class="row h-100 align-items-center">
<div class="col-md-12 text-center">
<h1 class="animate__animated animate__bounceInDown wow" style="font-weight: bold;">Welcome <%=fname %> to GrowWise </h1>
<p class="animate__animated animate__fadeIn wow" data-wow-delay="800ms" >Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam earum illum modi minus voluptatum architecto laboriosam optio, consequuntur inventore incidunt maiores adipisci facere nihil officia assumenda ab odit laborum. Eum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem optio quisquam quaerat laboriosam, architecto iure. Voluptate dolore optio assumenda ex</p>
<button class="btn btn-primary animate__animated animate__bounceInUp wow" style=" border-radius: 10rem; padding: 1rem 1rem !important;">Explore</button>
</div>
</div>
</div>
</header>

<section class="features animate__animated animate__zoomIn wow" id="explore">
<h1 class="text-center py-5">Features</h1>
    <div class="container">
        <div class="owl-carousel owl-theme">
            <div> 
                <div class="card text-center">
                    <div class="card-body">
                        <img src="https://recipes.net/wp-content/uploads/2024/01/how-to-eat-right-for-kids-1706149484.jpg" class="rounded-circle mx-auto" style="max-width: 170px; height:170px;" alt="iamges">
                      <h3>Diet Manager</h3>
                      <p>We provide personalized diet plans for children, ensuring their nutrition is balanced and tailored to their growth and developmental needs.</p>
                      <div class="container">
                        <button class="btn btn-primary"><a href="diet.jsp" style="color:white;">Diet</a></button>
                      </div>
                    </div>
                  </div>
            </div>
            <div>
                <div class="card text-center">
                    <div class="card-body">
                        <img src="https://bambinos.live/images/blog/1713531414m.jpg" class="rounded-circle mx-auto" style="max-width: 170px;" alt="iamges">
                      <h3>Safety Education</h3>
                      <p>Our platform offers educational videos and precautions from trusted sources like YouTube to teach children about safety in an engaging way.</p>
                      <div class="container">
                         <button class="btn btn-primary"><a href="safety.jsp" style="color:white;">Safety</a></button>
                      </div>
                    </div>
                  </div> 
            </div>
            <div> 
                <div class="card text-center">
                    <div class="card-body">
                        <img src="https://kokorokids.app/wp-content/uploads/2021/03/06-BRAIN-GAMES.png" class="rounded-circle mx-auto" style="max-width: 170px; height:170px;" alt="iamges">
                      <h3>IQ Boosting</h3>
                      <p>  We provide interactive IQ-enhancing games that stimulate problem-solving, critical thinking, and creativity in children, making learning fun and engaging.</p>
                      <div class="container">
                         <button class="btn btn-primary"><a href="iqboost.jsp" style="color:white;">IQ Boost</a></button>
                      </div>
                    </div>
                  </div>  
            </div>
            <div> 
                <div class="card text-center">
                    <div class="card-body">
                        <img src="https://images.pexels.com/photos/7014765/pexels-photo-7014765.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="rounded-circle mx-auto" style="max-width: 170px; height:170px;" alt="iamges">
                      <h3>Wisdom</h3>
                      <p>We offer videos and knowledge about fascinating topics like the universe, helping children broaden their horizons and satisfy their curiosity.</p>
                      <div class="container">
                         <button class="btn btn-primary"><a href="wisdom.jsp" style="color:white;">Wisdom</a></button>
                      </div>
                    </div>
                  </div>
            </div>
            <div> 
                <div class="card text-center">
                    <div class="card-body">
                        <img src="https://sa1s3optim.patientpop.com/filters:format(webp)/assets/images/provider/photos/2729728.jpeg" class="rounded-circle mx-auto" style="max-width: 170px; height:170px;" alt="iamges">
                      <h3>Overall Tracking</h3>
                      <p>Parents can track their child's monthly diet and activity plans by entering input details and receiving a comprehensive tracking status.</p>
                      <div class="container">
                         <button class="btn btn-primary"><a href="tracking.jsp" style="color:white;">Tracking</a></button>
                      </div>
                    </div>
                  </div>
             </div>
            <div> 
                <div class="card text-center">
                    <div class="card-body">
                        <img src="https://www.metropediatrics.com/wp-content/uploads/2024/10/Comprehensive-Pediatric-Medical-Care.jpg" class="rounded-circle mx-auto" style="max-width: 170px; height:170px;" alt="iamges">
                      <h3>CheckUp</h3>
                      <p>In this section, we identify potential diseases in children based on the symptoms provided.  
        This helps parents take steps to ensure their child's health.</p>
                      <div class="container">
                        <button class="btn btn-primary"><a href="medicalreport.jsp" style="color:white;">Report</a></button>
                      </div>
                    </div>
                  </div>
            </div>
            
          </div>
    </div>
</section> 


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

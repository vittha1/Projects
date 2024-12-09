<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/iq.css"/>
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
.video{
background-image: linear-gradient(to top, #f3e7e9 0%, #e3eeff 99%, #e3eeff 100%);
}</style>
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
                <li class="nav-item">
                    <a class="nav-link" href="#games">Games</a>
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

</div>
</div>
</div>
</header>

<section class="container my-5 image" id="games">
    <h2 class="text-center mb-5">IQ Boosting Games</h2>
    <div class="row">
        <!-- Card 1 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://play-lh.googleusercontent.com/VKQlVqQ7EgyQzvawEFamRKL-dczwlHoB_KY2OTuoD_38DgGnuVYrN8O_vr192AOC0alD" class="card-img-top" alt="Image 1">
                <div class="card-body text-center">
                    <h5 class="card-title">Jigsaw Puzzles - Puzzle Games</h5>
                    <a href="https://play.google.com/store/apps/details?id=com.easybrain.jigsaw.puzzles&pcampaignid=web_share" class="btn btn-primary" target="_blank">Download</a>
                </div>
            </div>
        </div>

        <!-- Card 2 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://play-lh.googleusercontent.com/fAURM4IpQBllXhJYJXzx7HRPTB9DU9CoAA_5TnYP_HDZj2GBuwcZxVhTtXBfKwYOOOk=w240-h480-rw" class="card-img-top" alt="Image 2">
                <div class="card-body text-center">
                    <h5 class="card-title">Train your Brain. Memory Games</h5>
                    <a href="https://play.google.com/store/apps/details?id=com.tellmewow.senior.memory&pcampaignid=web_share" class="btn btn-primary" target="_blank">Download</a>
                </div>
            </div>
        </div>

        <!-- Card 3 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://play-lh.googleusercontent.com/8yCHyFbCf2JJ48NRXxfVCJxqTku2qPJy2acdDzbzxj1P12lp7uva3XZ4_PlV8yhbfwg" alt="Image 3">
                <div class="card-body text-center">
                    <h5 class="card-title">Chess for Android</h5>
                    <a href="https://play.google.com/store/apps/details?id=com.google.android.chess&pcampaignid=web_share" class="btn btn-primary" target="_blank">Download</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <!-- Card 4 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://play-lh.googleusercontent.com/cIZKSJYB81r84u0YPOX6xxSM2wJuM4UfOFxoUzg4zRpkgnLUWWkPsqaP-z8uNDRbPw8=w240-h480-rw" class="card-img-top" alt="Image 4">
                <div class="card-body text-center">
                    <h5 class="card-title">The Simon Says - Memory Game</h5>
                    <a href="https://play.google.com/store/apps/details?id=androidkotlin.training.simon&pcampaignid=web_share" class="btn btn-primary" target="_blank">Download</a>
                </div>
            </div>
        </div>

        <!-- Card 5 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://market-resized.envatousercontent.com/codecanyon.net/files/409402567/inline_preview.jpg?auto=format&q=94&cf_fit=crop&gravity=top&h=8000&w=590&s=eb388939417d239db8879ad0a2a9031edd784c97ca01a5a8d7bf385773301366" style="height:345px;" class="card-img-top" alt="Image 5">
                <div class="card-body text-center">
                    <h5 class="card-title">Checkers</h5>
                    <a href="https://play.google.com/store/apps/details?id=com.dimcoms.checkers&pcampaignid=web_share" class="btn btn-primary" target="_blank">Download</a>
                </div>
            </div>
        </div>

        <!-- Card 6 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://play-lh.googleusercontent.com/BcgEzPWPYOLh8jixhjzUB7fKKyGmLg3oVCvfno8722I-PAHDJAp7KpFqA5Zh4sLHuGg=w2560-h1440-rw" style="height:345px;" class="card-img-top" alt="Image 6">
                <div class="card-body text-center">
                    <h5 class="card-title">Sudoku.com - Classic Sudoku</h5>
                    <a href="https://play.google.com/store/apps/details?id=com.easybrain.sudoku.android&pcampaignid=web_share" class="btn btn-primary" target="_blank">Download</a>
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

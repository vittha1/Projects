<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/diet.css"/>
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
 header{
    height: 90vh;
    width: 100%;
    color: white;
    background:  url('images/dietback.jpg');
    background-size: cover;
    background-blend-mode: overlay;
}
 </style>
  <body>
  <%
  String uname=(String) session.getAttribute("uname");
  %>
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
        <a class="nav-link" href="phome.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#first">Diet(1-5)</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#second">Diet(5-12)</a>
      </li>
       <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle text-uppercase" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <%= session.getAttribute("uname") %>
    </a>
    <div class="dropdown-menu" aria-labelledby="userDropdown">
        <a class="dropdown-item" href="AddLogin">Logout</a>
    </div>
</li>
       
    </ul>
  </div>
    </div>
</nav>

<header class="header">
<div class="container h-100">
<div class="row h-100 align-items-center">
<div class="col-md-12 text-center">
<h1 class="animate__animated animate__bounceInDown wow" style="font-weight: bold; background-color:black; display:inline-block; padding: 5px 10px; color: white;">
    Diet Section
</h1>

</div>
</div>
</div>
</header>

<!-- Main Content Starts -->
<section class="diet1" id="first">
<!-- Age Group 1 - 5 Years-->
  <!-- Cards Section -->
    <div class="container mt-4">
       <h2 class="text-center">Age Group 1-5 years</h2>
        <div class="row">
            <!-- Breakfast Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://www.eatthis.com/wp-content/uploads/sites/4/2022/03/healthy-breakfast-foods.jpg?quality=82&strip=all" alt="Breakfast Image" style="height:205px">
                    <div class="card-body">
                        <h5 class="card-title">Breakfast</h5>
                        <p class="card-text">Whole-grain cereal or oats with milk and fresh fruits.
A boiled egg with a slice of whole-wheat toast.
Pancakes made with banana or sweet potato.</p>
                    </div>
                </div>
            </div>

            <!-- Mid-Morning Snack Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://i.pinimg.com/originals/36/ef/9b/36ef9b00c6bfefea3429ac5b7184454b.jpg" alt="Mid-Morning Snack Image" style="height:185px;">
                    <div class="card-body">
                        <h5 class="card-title">Mid-Morning Snack</h5>
                        <p class="card-text">A small bowl of yogurt topped with chopped fruits or honey (for kids above 1 year).
A handful of soft-cut fruits like bananas, watermelon, or papaya.
Vegetable sticks (carrot, cucumber) with hummus.</p>
                    </div>
                </div>
            </div>

            <!-- Lunch Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://1.bp.blogspot.com/-h_14n7sxRg8/UAU_r213wvI/AAAAAAAAOL0/ms8nM2Cz7eQ/s1600/Dal+Khichdi+(2)+-+1.jpg" alt="Lunch Image" style="height:163px">
                    <div class="card-body">
                        <h5 class="card-title">Lunch</h5>
                        <p class="card-text">Soft-cooked rice or chapati with mashed dal (lentils) and a small serving of cooked vegetables (e.g., carrots, spinach).
Khichdi (a mix of rice, lentils, and vegetables).
Small pieces of grilled fish or chicken (optional) for protein..</p>
                    </div>
                </div>
            </div>

            <!-- Afternoon Snack Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://cdn.cdnparenting.com/articles/2020/02/27162541/MIX-FRUIT-MILKSHAKE-1024x700.webp" alt="Afternoon Snack Image" style="height:210px;">
                    <div class="card-body">
                        <h5 class="card-title">Afternoon Snack</h5>
                        <p class="card-text">A glass of milk or a milkshake made with fruits (e.g., banana or mango).
A slice of cheese with crackers.
Homemade cookies or puffed rice (murmura) mixed with peanuts.
</p>
                    </div>
                </div>
            </div>

            <!-- Dinner Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://brooklynfarmgirl.com/wp-content/uploads/2022/07/Tomato-Rice-Soup-Featured-Image.jpg" alt="Dinner Image" style="height: 230px">
                    <div class="card-body">
                        <h5 class="card-title">Dinner</h5>
                        <p class="card-text">A small portion of mashed potatoes or soft rice with a vegetable stew or curry.
Soups (tomato soup, lentil soup) with bread or roti.
Scrambled eggs or paneer cubes.</p>
                    </div>
                </div>
            </div>

            <!-- Evening Snack Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://www.vegrecipesofindia.com/wp-content/uploads/2016/08/turmeric-milk-recipe03.jpg" alt="Evening Snack Image" style="height: 250px;">
                    <div class="card-body">
                        <h5 class="card-title">Evening Snack</h5>
                        <p class="card-text">A glass of warm milk with a pinch of turmeric or cocoa.
A few soft biscuits or a slice of soft bread with butter/jam.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>

<section class="diet2" id="second">
<!-- Age Group of 5 - 12 Years  -->

    <!-- Cards Section -->
    <div class="container mt-4">
    <h1 class="text-center">Age Group 5-12 years</h1>
        <div class="row">
            <!-- Breakfast Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCk4Vxs9GrijIJlFEWNCk1DLpTINZzQpMsVw&s" alt="Breakfast Image">
                    <div class="card-body">
                        <h5 class="card-title">Breakfast</h5>
                        <p class="card-text">Start your day with whole-grain cereal, fresh fruits, or eggs for a nutritious energy boost to kick-start your morning.</p>
                    </div>
                </div>
            </div>

            <!-- Mid-Morning Snack Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://hips.hearstapps.com/hmg-prod/images/766/the-10-best-morning-snacks-for-weight-loss-1494419537.jpg" alt="Mid-Morning Snack Image">
                    <div class="card-body">
                        <h5 class="card-title">Mid-Morning Snack</h5>
                        <p class="card-text">Refuel with nuts, yogurt, or a granola bar for sustained energy until lunchtime.</p>
                    </div>
                </div>
            </div>

            <!-- Lunch Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://i.pinimg.com/736x/a8/39/c8/a839c8dda8a8f2c1d4991444d92bb7db.jpg" alt="Lunch Image" style="height:176px">
                    <div class="card-body">
                        <h5 class="card-title">Lunch</h5>
                        <p class="card-text">Enjoy a balanced meal with grilled proteins, whole grains, and a side of vegetables to stay energized for the rest of the day.</p>
                    </div>
                </div>
            </div>

            <!-- Afternoon Snack Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://img.freepik.com/premium-photo/smoothie-bowl-with-fresh-fruits-nuts-seeds_1022456-322994.jpg" alt="Afternoon Snack Image">
                    <div class="card-body">
                        <h5 class="card-title">Afternoon Snack</h5>
                        <p class="card-text">Stay productive with a light snack like a veggie sandwich, fruit smoothie, or boiled egg.</p>
                    </div>
                </div>
            </div>

            <!-- Dinner Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://easydinnerideas.com/wp-content/uploads/2024/07/Lentil-Soup-7.jpeg" alt="Dinner Image" style="height: 210px" >
                    <div class="card-body">
                        <h5 class="card-title">Dinner</h5>
                        <p class="card-text">End your day with a light meal featuring lentil soup, roasted vegetables, or whole-grain pasta for better digestion and restful sleep.</p>
                    </div>
                </div>
            </div>
            <!-- Evening Snack Card -->
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf7j59O7pgnsGTQgU--JhedwU9w4ECYscexJnTI5uCfavp3PBwgNjjzk8VaK7QD8bfObE&usqp=CAU" alt="Evening Snack Image" style="height: 230px;">
                    <div class="card-body">
                        <h5 class="card-title">Evening Snack</h5>
                        <p class="card-text">Wrap up with a warm glass of milk or herbal tea alongside light snacks like biscuits or fruits.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- Main content Ends -->



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
   <script src="js/script1.js"></script>
              <script>
              new WOW().init();
              </script>
  </body>
</html>

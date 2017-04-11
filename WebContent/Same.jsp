<!DOCTYPE html>
<html>
<title>PudhuEzuthu</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="First.css">
<link rel="stylesheet" href="Second.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<style>

body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.bookMy-sidenav a {padding:20px}
</style>
<body >

<!-- Sidenav (hidden by default) -->
<nav class="bookMy-sidenav bookMy-card-2 bookMy-top bookMy-xlarge bookMy-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidenav">
  <a href="javascript:void(0)" onclick="bookMy_close()"
  class="bookMy-closenav">Close Menu</a>
  <a href="index.html" onclick="bookMy_close()">Pudhu Ezuthu</a>
  <a href="AddBook.jsp" onclick="bookMy_close()">Add Book</a>
 <!-- <!--  <a href="Register.html" onclick="bookMy_close()">Register</a>
   -->  <a href="ViewProfile.jsp" onclick="bookMy_close()">View Profile</a>
 <!--  <a href="login.html" onclick="bookMy_close()">Log In</a> -->
  <a href="LogOutServlet" onclick="bookMy_close()">Log out</a>
<!--   <a href="SubscriptionPage.jsp" onclick="bookMy_close()">Subscribe</a> -->
  <a href="ViewOtherSubscription.jsp" onclick="bookMy_close()">View Subscription</a>
</nav>

<!-- Top menu -->
<div class="bookMy-top">
  <div class="bookMy-white bookMy-xlarge bookMy-padding-xlarge" style="max-width:1200px;margin:auto">
    <div class="bookMy-left bookMy-opennav bookMy-hover-text-grey" onclick="bookMy_open()"><i class="fa fa-bars" aria-hidden="true"></i></div>
    <div class="bookMy-right">
    <i class="fa fa-heart " aria-hidden="true"></i>
    <a href="path/to/shopping/cart" class="btn btn-primary" aria-label="View 3 items in your shopping cart">
  <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i>
</a></div>



    <div class="bookMy-center">Pudhu Ezuthu </div>
  </div>
</div>
  
<!-- <!-- !PAGE CONTENT! -->
<div class="bookMy-main bookMy-content bookMy-padding" style="max-width:1200px;margin-top:100px">
<!-- 
  First Photo Grid
  <div class="bookMy-row-padding bookMy-padding-16 bookMy-center" id="food">
    <div class="bookMy-quarter">
      <img src="Book1.jpg" alt="Sandwich" style="width:100%">
      <form action="AngProVeiwBook.jsp" method="get">
       <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-paper-plane"></i> View
        </button> 
        </form>
      <h3>Poems</h3>
      
    </div>
    <div class="bookMy-quarter">
      <img src="b2.jpg" alt="Book1" style="width:100%">
      <form action="AngProVeiwBook.jsp" method="get">
       <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-paper-plane"></i> View
        </button>
        </form>
      <h3>Stories</h3>
     
    </div>
    <div class="bookMy-quarter">
      <img src="b3.jpg" alt="Cherries" style="width:100%">
      <form action="AngProVeiwBook.jsp" method="get">
       <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-paper-plane"></i> View
        </button>
        </form>
      <h3>Novels</h3>
      <p>book3 is good.</p>
      <p>What else?</p>
    </div>
    <div class="bookMy-quarter">
      <img src="/b4.jpg" alt="Pasta and Wine" style="width:100%">
      <form action="AngProVeiwBook.jsp" method="get">
       <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-paper-plane"></i> View
        </button>
        </form>
      <h3>Miscellaneous</h3>
      <p>book4 is okay.</p>
    </div>
  </div>
  
  Second Photo Grid
  <div class="bookMy-row-padding bookMy-padding-16 bookMy-center">
    <div class="bookMy-quarter">
      <img src="b5.jpg" alt="Popsicle" style="width:100%">
      <form action="AngProVeiwBook.jsp" method="get">
       <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-paper-plane"></i> View
        </button>
        </form>
      <h3>History</h3>
      <p>this is okay.</p>
    </div>
    <div class="bookMy-quarter">
      <img src="b6.jpg" alt="Salmon" style="width:100%">
      <form action="AngProVeiwBook.jsp" method="get">
       <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-paper-plane"></i> View
        </button>
        </form>
      <h3>Archeology</h3>
      <p>Once again, some random text to this book.</p>
    </div>
    <div class="bookMy-quarter">
      <img src="b7.jpg" alt="Sandwich" style="width:100%">
     <form action="AngProVeiwBook.jsp" method="get">
       <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-paper-plane"></i> View
        </button>
        </form>
      <h3>Science</h3>
      <p>Just some random text, </p>
    </div>
    <div class="bookMy-quarter">
      <img src="b8.jpg" alt="Croissant" style="width:100%">
     <form action="AngProVeiwBook.jsp" method="get">
       <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-paper-plane"></i> View
        </button>
        </form>
      <h3>Children Interest</h3>
      <p>isnt the book good.</p>
    </div>
  </div> -->

 <!--  Pagination -->
 <!--  <div class="bookMy-center bookMy-padding-32">
    <div class="bookMy-bar">
      <a href="#" class="bookMy-bar-item bookMy-button bookMy-hover-black">«</a>
      <a href="#" class="bookMy-bar-item bookMy-black bookMy-button">1</a>
      <a href="https://99designs.com/blog/trends/top-web-design-trends-2015/" class="bookMy-bar-item bookMy-button bookMy-hover-black">2</a>
      <a href="#" class="bookMy-bar-item bookMy-button bookMy-hover-black">3</a>
      <a href="#" class="bookMy-bar-item bookMy-button bookMy-hover-black">4</a>
      <a href="#" class="bookMy-bar-item bookMy-button bookMy-hover-black">»</a>
    </div>
  </div> -->
  
  <!-- <hr id="about">

  About Section
  <div class="bookMy-container bookMy-padding-32 bookMy-center">  
    <h3>About Me, The book Man</h3><br>
    <img src="/bookMyimages/chef.jpg" alt="Me" class="bookMy-image" style="display:block;margin:auto" width="800" height="533">
    <div class="bookMy-padding-32">
      <h4><b>I am Who I Am!</b></h4>
      <h6><i>With Passion For Real, Good books</i></h6>
      <p>Just me, myself and I, exploring the universe of unknownment. I have a heart of love and an interest of lorem ipsum and mauris neque quam blog. I want to share my world with you. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
    </div>
  </div>
  <hr> -->
  <!-- critical section 2 start -->
<!-- <div class="bookMy-content bookMy-container bookMy-padding-64" id="contact">
  <h3 class="bookMy-center">WHERE I WORK</h3>
  <p class="bookMy-center"><em>I'd love your feedback!</em></p>
 
  <div class="bookMy-col m8 bookMy-container bookMy-section">
      <div class="bookMy-large bookMy-margin-bottom">
        <i class="fa fa-map-marker fa-fw bookMy-hover-text-black bookMy-xlarge bookMy-margin-right"></i>2/205 Anna Nagar,Kaveripattinam,Krishnagiri-635112<br>
        <i class="fa fa-phone fa-fw bookMy-hover-text-black bookMy-xlarge bookMy-margin-right"></i> Phone: +91 9842647101<br>
        <i class="fa fa-envelope fa-fw bookMy-hover-text-black bookMy-xlarge bookMy-margin-right"></i> Email: pudhuezuthu@gmail.com<br>
      </div>
      <p>Swing by for a cup of <i class="fa fa-coffee"></i>, or leave me a note:</p>
      <form action="/action_page.php" target="_blank">
        <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="text" placeholder="Name" required name="Name">
          </div>
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="text" placeholder="Email" required name="Email">
          </div>
        </div>
        <input class="bookMy-input bookMy-border" type="text" placeholder="Message" required name="Message">
        <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </form>
    </div>
  
       </div>
  
  Footer
  <footer class="bookMy-row-padding bookMy-padding-32">
    <div class="bookMy-third">
      <h3>FOOTER</h3>
      <p>YOU RECHED THE END OF.</p>
      
    </div>
  
    <div class="bookMy-third">
      <h3>BLOG POSTS</h3>
      <ul class="bookMy-ul bookMy-hoverable">
        <li class="bookMy-padding-16">
          <img src="b11.jpg" class="bookMy-left bookMy-margin-right" style="width:50px">
          <span class="bookMy-large">Lorem</span><br>
          <span>Sed mattis nunc</span>
        </li>
        <li class="bookMy-padding-16">
          <img src="b10.jpg" class="bookMy-left bookMy-margin-right" style="width:50px">
          <span class="bookMy-large">Ipsum</span><br>
          <span>Praes tinci sed</span>
        </li> 
      </ul>
    </div>
       

    <div class="bookMy-third bookMy-serif">
      <h3>POPULAR TAGS</h3>
      <p>
        <span class="bookMy-tag bookMy-black bookMy-margin-bottom">Nisaptham</span> <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">New York</span> <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">Dinner</span>
        <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">publications</span> <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">France</span> <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">Drinks</span>
        <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">Ideas</span> <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">Flavors</span> <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">Cuisine</span>
        <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">Chicken</span> <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">Dressing</span> <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">Fried</span>
        <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">Fish</span> <span class="bookMy-tag bookMy-dark-grey bookMy-small bookMy-margin-bottom">Duck</span>
      </p>
    </div>
  </footer>

End page content
</div> -->

<script>
// Script to open and close sidenav
function bookMy_open() {
    document.getElementById("mySidenav").style.display = "block";
}
 
function bookMy_close() {
    document.getElementById("mySidenav").style.display = "none";
}
</script>

</body>
</html>

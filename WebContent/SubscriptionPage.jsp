<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="en">
<head>
<title>Subscription Page</title>
<!-- Meta tag Keywords -->
<style type="text/css"></style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Smart Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link href="First.css" rel="stylesheet" type="text/css" media="all">
<link href="Second.css" rel="stylesheet" type="text/css" media="all">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://jsfiddle.net/laelitenetwork/puJ6G/">

<style>

body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.bookMy-sidenav a {padding:20px}
</style>
<body>

 <!--  <div class="bookMy-content bookMy-container bookMy-padding-64" id="contact">
  
 
  <div class="bookMy-col m8 bookMy-container bookMy-section">
  <h3>
  <i class="fa fa-check-circle-o" aria-hidden="true"></i>Su
  </h3>
      
      <form action="LogInServlet" target="_self">
        <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          
            <a href="#annual">Annual Subscription</a>
            </div> <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
           <a href="#lifeTime">Lifetime Subscription</a></div>
            <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
           <a href="#agency">Agency/Distributor Subscription</a>
          </div>
          <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
         
         
        <button class="bookMy-btn bookMy-black bookMy-center bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-envelope-o" aria-hidden="true"> </i>subscribe
        </button>
      </form>
    </div>
  
       </div> -->
  
  <hr id="annual">

  <!-- About Section -->
  <div class="bookMy-container bookMy-padding-32 bookMy-center">  
    <h3>Annual Subscription</h3><br>
    <img src="/bookMyimages/chef.jpg" alt="Me" class="bookMy-image" style="display:block;margin:auto" width="800" height="533">
    <div class="bookMy-padding-32">
    <h5>Duration: 1 year
    
    </h5>
    <h5>Amount: RS.350</h5>
    <form action="InsertSubscription.jsp"> <button class="bookMy-btn bookMy-black bookMy-center bookMy-padding bookMy-section" type="submit"  name="join" value="annualSub">
          <i class="fa fa-envelope-o" aria-hidden="true"> </i>JOIN
        </button>
    </form>
      </div>
  </div>
 

  <hr id="lifeTime">

  <!-- About Section -->
  <div class="bookMy-container bookMy-padding-32 bookMy-center">  
    <h3>lIFETIME Subscription</h3><br>
    <img src="/bookMyimages/chef.jpg" alt="Me" class="bookMy-image" style="display:block;margin:auto" width="800" height="533">
    <div class="bookMy-padding-32">
    <h5>Duration: LIFE TIME
    
    </h5>
    <h5>Amount: RS.1250</h5>
    <form action="InsertSubscription.jsp"> <button class="bookMy-btn bookMy-black bookMy-center bookMy-padding bookMy-section" type="submit" name="join" value="lifetimeSub">
          <i class="fa fa-envelope-o" aria-hidden="true"> </i>JOIN
        </button>
    </form>
      </div>
  </div>

  <hr id="agency">

  <!-- About Section -->
  <div class="bookMy-container bookMy-padding-32 bookMy-center">  
    <h3>Agency Subscription</h3><br>
    <img src="/bookMyimages/chef.jpg" alt="Me" class="bookMy-image" style="display:block;margin:auto" width="800" height="533">
    <div class="bookMy-padding-32">
   
    
    <form action="InsertSubscription.jsp">
    <input type="text" placeholder="Quantity" name="quantity">
     <button class="bookMy-btn bookMy-black bookMy-center bookMy-padding bookMy-section" type="submit"  name="join" value="agencySub">
          <i class="fa fa-envelope-o" aria-hidden="true"> </i>JOIN
        </button>
    </form>
      </div>
  </div>

</body>
</html>
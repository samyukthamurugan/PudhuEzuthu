<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>
<title> Register Form </title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Event Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="First.css">
<link rel="stylesheet" href="Second.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
</head>
<body>
<script type="text/javascript">
function validateform(){  

if(password.length<6){  
	  alert("Password must be at least 6 characters long."); }}
</script>
<div class="bookMy-content bookMy-container bookMy-padding-64" id="contact">
  <h3 class="bookMy-center">Register Here</h3>
  <p class="bookMy-center"><em>Awaiting your participation!</em></p>

  <div class="bookMy-row bookMy-padding-32 bookMy-section">
    <div class="bookMy-col m4 bookMy-container">
      
      <form action="ProfileServlet" target="_self" method="post" >
        <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="text" placeholder="First  Name" required name="Firstname">
          </div>
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="text" placeholder="Last  Name" required name="LastName">
          </div>
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="text" placeholder="Address Line1" required name="Addressline1">
          </div>
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="text" placeholder="Address Line 2" required name="Addressline2">
          </div>
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="text" placeholder="city" required name="City">
          </div>
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="text" placeholder="Phone Number" required name="PhoneNumber">
          </div>
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="text" placeholder="Email" required name="email">
          </div>
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="text" placeholder="zip Code" required name="ZipCode">
          </div>
          <div class="bookMy-half">
            <input class="bookMy-input bookMy-border" type="password" placeholder="Password" required name="password">
          </div>
          
        </div>
       
        <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit" onsubmit="validateform()">
          <i class="fa fa-lock"></i> Register
        </button>
      </form>
    </div>
  </div>
</div>
  
</body>
</html>
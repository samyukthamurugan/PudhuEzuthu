
<!DOCTYPE html>
<html lang="en">
<head>
<title>Smart Login Form</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Smart Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link href="CSS/First.css" rel="stylesheet" type="text/css" media="all">
<link href="CSS/Second.css" rel="stylesheet" type="text/css" media="all">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">function logInFile() {
    alert("logged in successfully");
}
function RegisterFile() {
  alert("logged in successfully");
}</script>
<style>

body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.bookMy-sidenav a {padding:20px}
</style>
<body>

  <div class="bookMy-content bookMy-container bookMy-padding-64" id="contact">
  
 
  <div class="bookMy-col m8 bookMy-container bookMy-section">
  Your Password seems to be incorrect,please try again
  <h3>
  <i class="fa fa-check-circle-o" aria-hidden="true"></i>SMART LOGIN FORM
  </h3>
      
      <form action="LogInServlet" target="_self" method="post">
        <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          
            <input class="bookMy-input bookMy-border" type="text"  placeholder="Name" required name="userName">
        
          </div>
          <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
         <input class="bookMy-input bookMy-border" type="password"  placeholder="password" required name="psw">
       </div>
        <button class="bookMy-btn bookMy-black bookMy-center bookMy-padding bookMy-section" type="submit" onsubmit="logInFile()">
          <i class="fa fa-user-o" aria-hidden="true"> </i>LOG IN
        </button>
      </form>
    </div>
  
       </div>
  

</body>
</html>
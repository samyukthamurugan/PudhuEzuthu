<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.xbbnhfk.DeliveryStatus.CourierDao"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>
<%-- <%@ include file="seperate.jsp"%> --%>

<%@ page import="com.xbbnhfk.DeliveryStatus.CourierBean"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Event Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script> -->
<link rel="stylesheet" href="First.css">
<link rel="stylesheet" href="Second.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
<!-- js -->
<!-- <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script> -->
<title>Courier Details</title>
</head>
<body>

    <form action="InsertCourier.jsp" name="confirmationForm" method="post">
    <div class="bookMy-content bookMy-container bookMy-padding-64" id="contact">
  <h3 class="bookMy-center">The consignment has been sent</h3>
  <p class="bookMy-center"><em>Awaiting your acknowledgement</em></p>

  <div class="bookMy-row bookMy-padding-32 bookMy-section">
    <div class="bookMy-col m4 bookMy-container"><div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">

      
     
          
           <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          
            <input class="bookMy-input bookMy-border" type="text" placeholder="Courier Service Name" required name="courierName"> </div>
          <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
            <input class="bookMy-input bookMy-border" type="text" placeholder="Consignment Number" required name="consignmentNumber">
          
        </div>
        <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
     
            <input class="bookMy-input bookMy-border" type="text" placeholder="Sent Date" required name="sentDate">
          </div>
          <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
            <input class="bookMy-input bookMy-border" type="text" placeholder="Sent Time" required name="sentTime">
          </div>
        
        <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
        
            <input class="bookMy-input bookMy-border" type="text" placeholder="Courier Address" required name="courierAddress">
          </div>
           <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
            <input class="bookMy-input bookMy-border" type="text" placeholder="number Of Books" required name="numberOfBooks">
          </div>
          <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
        
            
           <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
            <input class="bookMy-input bookMy-border" type="text" placeholder="sent To" required name="sentTo">
          </div></div>
           <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
    <textarea id="confirmationText" class="text" cols="86" rows ="10" name="confirmationText"></textarea>
  </div>
   <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-paper-plane"></i>ADD COURIER DETAILS
        </button>
</form>
      </div>
          
    </div>
  </div>
</div>

</body>
</html>
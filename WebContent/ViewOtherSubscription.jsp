<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.xbbnhfk.Subscription.SubscriptionDao"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>
<%@ include file="Same.jsp"%>
<%@ page import="com.xbbnhfk.Subscription.SubscriptionDetails"%>

    
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
<title>Profile</title>
</head>
<body>
<div class="bookMy-content bookMy-container bookMy-padding-64" id="contact">
  <h3 class="bookMy-center">Thank you for joining with us</h3>
  <p class="bookMy-center"><em>Awaiting your participation!</em></p>

  <div class="bookMy-row bookMy-padding-32 bookMy-section">
    <div class="bookMy-col m4 bookMy-container"><div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
<%  SubscriptionDao SubscriptionDao=new SubscriptionDao();String name= (String)session.getAttribute("uname");
ArrayList<SubscriptionDetails> viewList =(ArrayList<SubscriptionDetails>)SubscriptionDao.viewSubscriptions();
 Iterator<SubscriptionDetails> itr =  viewList.iterator();
               		while(itr.hasNext()){
               			 
               			SubscriptionDetails SubscriptionBeanObj=itr.next();

String email=SubscriptionBeanObj.getEmail();

          String subType=SubscriptionBeanObj.getSubType();
          float amount=SubscriptionBeanObj.getAmount();
          String username=SubscriptionBeanObj.getUserName();
          String lastname=SubscriptionBeanObj.getLastName();
         
          
          
%>
      
      <form action="index.html" target="_self">
         <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half"> 
           <label>SubscriptionType</label>
          <input class="bookMy-input bookMy-border" type="text" name="subType" value=<%=subType%> readonly >
          </div>
          
          <div class="bookMy-half">
           <label>amount:</label>
          <input class="bookMy-input bookMy-border" type="text" name="amount" value=<%=amount%> readonly>
          </div></div>
          </div> 
           <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half"> 
           <label>email</label>
          <input class="bookMy-input bookMy-border" type="text" name="email" value=<%=email%> readonly >
          </div>
          
          <div class="bookMy-half">
           <label>First name:</label>
          <input class="bookMy-input bookMy-border" type="text" name="username" value=<%=username%> readonly>
          </div></div>
          </div> 
           <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half"> 
           <label>Last Name</label>
          <input class="bookMy-input bookMy-border" type="text" name="lastname" value=<%=lastname%> readonly >
          </div>
          
          
          </div> 
        <%}%> 
      </form>
       </div>
    </div>
  </div>
</div>

</body>
</html>
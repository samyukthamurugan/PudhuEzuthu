<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.xbbnhfk.profile.ProfileDao"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>
<%@ include file="Same.jsp"%>
<%@ page errorPage="error.jsp" %> 
<%@ page import="com.xbbnhfk.profile.ProfileBean"%>

    
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
<% ProfileDao profileDao=new ProfileDao();
String name= (String)session.getAttribute("uname");
/* out.print(name); */

	ArrayList<ProfileBean> viewList = profileDao.viewProfile(name);

Iterator<ProfileBean> itr =  viewList.iterator();
while(itr.hasNext()){

ProfileBean profileBeanObj=itr.next();





          String fname=profileBeanObj.getName();
          String lname=profileBeanObj.getLastName();
          String pnum=profileBeanObj.getPhoneNumber();
          String email=profileBeanObj.getEmailId();
          String ad1=profileBeanObj.getAddressLine1();
          String ad2=profileBeanObj.getAddressLine2();
          String city=profileBeanObj.getCity();
          String zip=profileBeanObj.getZipCode();
          
%>
      
      <form action="index.html" target="_self">
         <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half"> 
           <label>First Name:</label>
          <input class="bookMy-input bookMy-border" type="text" name="firstName" value=<%=fname%> readonly >
          </div>
          
          <div class="bookMy-half">
           <label>Last Name:</label>
          <input class="bookMy-input bookMy-border" type="text" name="lastName" value=<%=lname%> readonly>
          </div></div>
           <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
           <label>Phone Number:</label>
           <input class="bookMy-input bookMy-border" type="text" name="phoneNum" value=<%=pnum%> readonly>
          </div>
          <div class="bookMy-half">
           <label>Email Id:</label>
            <input class="bookMy-input bookMy-border" type="text" name="emailId" value=<%=email%> readonly>
          </div>
          </div>
         <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
          <label>Address Line1</label>
            <input class="bookMy-input bookMy-border" type="text" name="address1" value=<%=ad1%> readonly>
          </div>
          <div class="bookMy-half">
           <label>Address Line2:</label>
            <input class="bookMy-input bookMy-border" type="text" name="address2" value=<%=ad2%> readonly>
          </div></div><div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
           <label>city:</label>
            <input class="bookMy-input bookMy-border" type="text" name="city" value=<%=city%> readonly>
          </div>
        <div class="bookMy-half">
         <label>Zip Code:</label>
        <input class="bookMy-input bookMy-border" type="text" name="zip" value=<%=zip%> readonly >
        </div></div>  <div class="bookMy-half">
        <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit" >
        
          <i class="fa fa-lock"></i> Edit Profile
        </button>  
        
        
        </div>
        <%}%>
      </form>
       </div>
    </div>
  </div>
</div>
 
</body>
</html>
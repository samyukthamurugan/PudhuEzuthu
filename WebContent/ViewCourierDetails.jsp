<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.xbbnhfk.DeliveryStatus.CourierDao"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>
<%--  <%@ include file="seperate.jsp"%> --%>

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
<link rel="stylesheet" href="CSS/First.css">
<link rel="stylesheet" href="CSS/Second.css">

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
<%  CourierDao courierDao=new CourierDao();
ArrayList<CourierBean> viewList =(ArrayList<CourierBean>)courierDao.viewCourier();
 Iterator<CourierBean> itr =  viewList.iterator();
               		while(itr.hasNext()){
               			 
                        CourierBean CourierBeanObj=itr.next();

String consignmentNumber=CourierBeanObj.getConsignmentNumber();

          String courierName=CourierBeanObj.getCourierName();
          String sentDate=CourierBeanObj.getSentDate();
          String coDescription=CourierBeanObj.getCoDescription();
          String sentTime=CourierBeanObj.getSentTime();
          int numberOfBooks=CourierBeanObj.getNumberOfBooks();
          String courierAddress=CourierBeanObj.getCourierAddress();
          String sentTo=CourierBeanObj.getSentTo();
          
          
%>
      
      <form action="CourierPage.html" target="_self">
      <hr>
         <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half"> 
           <label>consignment Number:</label>
          <input class="bookMy-input bookMy-border" type="text" name="bookName" value=<%=consignmentNumber%> readonly >
          </div>
          
          <div class="bookMy-half">
           <label>courierName:</label>
          <input class="bookMy-input bookMy-border" type="text" name="author" value=<%=courierName%> readonly>
          </div></div>
           <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
           <label>sentDate:</label>
           <input class="bookMy-input bookMy-border" type="text" name="copyType" value=<%=sentDate%> readonly>
          </div>
          <div class="bookMy-half">
           <label>coDescription:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Dimension" value=<%=coDescription%> readonly>
          </div>
          </div>
         <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
          <label>sentTime:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Genre" value=<%=sentTime%> readonly>
          </div>
          <div class="bookMy-half">
           <label>numberOfBooks:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Bid" value=<%=numberOfBooks%> readonly>
          </div></div><div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
           <label>courierAddress:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Weight" value=<%=courierAddress%> readonly>
          </div>
       
        </div><div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
           <label>sentTo:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Weight" value=<%=sentTo%> readonly>
          </div>
       
        </div></div> 
        <%}%> <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
        <div class="bookMy-half">
        <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit" >
        
          <i class="fa fa-backward"></i>back
        </button>  
        </div></div>
      </form>
       </div>
    </div>
  </div>
</div>

</body>
</html>
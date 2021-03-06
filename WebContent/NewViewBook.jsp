<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.xbbnhfk.book.BookDao"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>

<%@ page import="com.xbbnhfk.book.BookBean"%>

    
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
<%  BookDao bookDao=new BookDao();
ArrayList<BookBean> viewList =(ArrayList<BookBean>)bookDao.viewBook();
 Iterator<BookBean> itr =  viewList.iterator();
               		while(itr.hasNext()){
               			 
                        BookBean BookBeanObj=itr.next();%>

          <%

String author=BookBeanObj.getAuthor();

          String bname=BookBeanObj.getBookDesc();
          String copyType=BookBeanObj.getCopyType();
          String dim=BookBeanObj.getDimensions();
          String genr=BookBeanObj.getGenre();
          int bid=BookBeanObj.getBookid();
          float price=BookBeanObj.getPrice();
          float weight=BookBeanObj.getWeight();
%>
      
      <form action="index.html" target="_self">
         <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half"> 
           <label>Book Name:</label>
          <input class="bookMy-input bookMy-border" type="text" name="bookName" value=<%=bname%> readonly >
          </div>
          
          <div class="bookMy-half">
           <label>Author:</label>
          <input class="bookMy-input bookMy-border" type="text" name="author" value=<%=author%> readonly>
          </div></div>
           <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
           <label>Copy Type:</label>
           <input class="bookMy-input bookMy-border" type="text" name="copyType" value=<%=copyType%> readonly>
          </div>
          <div class="bookMy-half">
           <label>Dimension:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Dimension" value=<%=dim%> readonly>
          </div>
          </div>
         <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
          <label>Genre:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Genre" value=<%=genr%> readonly>
          </div>
          <div class="bookMy-half">
           <label>Book Id:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Bid" value=<%=bid%> readonly>
          </div></div><div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
           <label>Weight:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Weight" value=<%=weight%> readonly>
          </div>
        <div class="bookMy-half">
         <label>Price:</label>
        <input class="bookMy-input bookMy-border" type="text" name="Price" value=<%=price%> readonly >
        </div></div>  
         <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half"> 
        <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-lock"></i> Add To Cart
        </button>  
        <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit">
          <i class="fa fa-lock"></i> Add to WishList
        </button>
        </div></div>
        </div>
        <%}%>
      </form>
       </div>
    </div>
  </div>
</div>
 <div class="bookMy-center bookMy-padding-32">
    <div class="bookMy-bar">
      <a href="#" class="bookMy-bar-item bookMy-button bookMy-hover-black">�</a>
      <a href="#" class="bookMy-bar-item bookMy-black bookMy-button">1</a>
      <a href="https://99designs.com/blog/trends/top-web-design-trends-2015/" class="bookMy-bar-item bookMy-button bookMy-hover-black">2</a>
      <a href="#" class="bookMy-bar-item bookMy-button bookMy-hover-black">3</a>
      <a href="#" class="bookMy-bar-item bookMy-button bookMy-hover-black">4</a>
      <a href="#" class="bookMy-bar-item bookMy-button bookMy-hover-black">�</a>
    </div>
  </div>
</body>
</html>
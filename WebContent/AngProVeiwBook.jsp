<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="com.xbbnhfk.book.BookDao"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>
<%@ include file="Same.jsp"%>
<%@ page import="com.xbbnhfk.book.BookBean"%>

<!DOCTYPE html>
<html ng-app="myApp">
<head>

<link rel="stylesheet" href="First.css">
<link rel="stylesheet" href="Second.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<script>
// JS code 
myApp = angular.module('myApp',[]);
<%@ page import = "java.sql.*" %> 
<%  BookDao bookDao=new BookDao();
ArrayList<BookBean> viewList =(ArrayList<BookBean>)bookDao.viewBook();
 Iterator<BookBean> itr =  viewList.iterator();
               		
 %>

          
// JS code 
myApp.controller('empCtl',function($scope) 
   {
    $scope.empData = [
<%
while(itr.hasNext()){
          BookBean BookBeanObj=itr.next();
String author=BookBeanObj.getAuthor();

         String bname=BookBeanObj.getBookDesc();
          String copyType=BookBeanObj.getCopyType();
          String dim=BookBeanObj.getDimensions();
          String genr=BookBeanObj.getGenre();
          int bid=BookBeanObj.getBookid();
          float price=BookBeanObj.getPrice();
          float weight=BookBeanObj.getWeight();
%> 
{
	"Book_Name" : "<%=bname%>",
	"Author"  : "<%=author%>",
	"Copy_Type":"<%=copyType%>" ,
	"Dimension": "<%=dim%>" ,
	"Genre": "<%=genr%>" ,
	"Book_Id": "<%=bid%>" ,
	"price": "<%=price%>" ,
	"weight": "<%=weight%>" 
}
<%if(itr.hasNext()) {%>
,  
<%}else break;%><%}%>
         ];
$scope.sortField='Book_Name';
$scope.reverse=true;
});

</script>
<script>
function previewFile() {
    alert("Book Added Successfully");
  }

</script>
</head>
<body ng-controller="empCtl">




<!-- <form action="index.html" target="_self"> -->
         <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half"> 
          Search : <input ng-model="query" type="text" />
           </div> </div>
           
<!-- <table border=1 cellpadding=5>
<tr> --><div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half"> 
  <!-- <th> --><a href="" ng-click="sortField = 'Book_Name'; reverse=!reverse">Book_Name</a><!-- </th> -->
  <!-- <th> --><a href="" ng-click="sortField = 'Copy_Type'; reverse=!reverse">Copy_Type</a><!-- </th> -->
<!--   <th> --><a href="" ng-click="sortField = 'Dimension'; reverse=!reverse">Dimension</a><!-- </th> -->
<!--   <th> --><a href="" ng-click="sortField = 'Genre';reverse=!reverse">Genre</a><!-- </th> -->
 <!--  <th> --><a href="" ng-click="sortField = 'Book_Id'; reverse=!reverse">Book_Id</a><!-- </th> -->
  <!-- <th> --><a href="" ng-click="sortField = 'price';reverse=!reverse">price</a><!-- </th> -->
  <!-- <th> --><a href="" ng-click="sortField = 'weight';reverse=!reverse">weight</a><!-- </th> -->
  <!-- </tr>  -->
  <!-- <tr ng-repeat="emp in empData | filter:query | orderBy:sortField:reverse"> -->
  <!-- </table> -->
  </div></div>
  <div ng-repeat="emp in empData | filter:query | orderBy:sortField:reverse">
  <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
  <label>Book Name:</label>
          <input class="bookMy-input bookMy-border" type="text" name="bookName" value={{emp.Book_Name}} readonly >
          </div>
          
          <div class="bookMy-half">
           <label>Author:</label>
          <input class="bookMy-input bookMy-border" type="text" name="author" value="{{emp.Author}}" readonly>
          </div></div>
           <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
           <label>Copy Type:</label>
           <input class="bookMy-input bookMy-border" type="text" name="copyType" value="{{emp.Copy_Type}}" readonly>
          </div>
          <div class="bookMy-half">
           <label>Dimension:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Dimension" value="{{emp.Dimension}}" readonly>
          </div>
          </div>
         <div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
          <label>Genre:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Genre" ng-model="emp.Genre" value={{emp.Genre}} readonly>
          </div>
          <div class="bookMy-half">
           <label>Book Id:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Bid" value="{{emp.Book_Id}}" readonly>
          </div></div><div class="bookMy-row-padding" style="margin:0 -16px 8px -16px">
          <div class="bookMy-half">
           <label>Weight:</label>
            <input class="bookMy-input bookMy-border" type="text" name="Weight" value="{{emp.weight}}" readonly>
          </div>
        <div class="bookMy-half">
         <label>Price:</label>
        <input class="bookMy-input bookMy-border" type="text" name="Price" value="{{emp.price}}" readonly >
        </div></div>  <div class="bookMy-half">
        <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit" onclick="previewFile()">
        
          <i class="fa fa-cart-plus"></i> Add To Cart
        </button>  
        <button class="bookMy-btn bookMy-black bookMy-right bookMy-padding bookMy-section" type="submit" onclick="previewFile()">
          <i class="fa fa-lock"></i> Add to WishList
        </button>
         <div class="bookMy-third">
   
      <div ng-app="APP" ng-controller="ExampleController"><div ng-social-buttons
             data-url="'http://www.tutorialspoint.com/'"
             data-title="current_title"
             data-description="'{{ current_description }}'"
             data-image="'http://s3.mistinfo.com/32/d8/32d8eab76f4c242f665bda66b5edc6c5.jpg'">
              
              
            
          
              <a class="ng-social-facebook">
          <i class="fa fa-facebook-official"></i> 
        </a>
        <a class="ng-social-facebook">
          <i class="fa fa-twitter"></i> 
        </a>
        <a class="ng-social-facebook">
          <i class="fa fa-google-plus-official"></i> 
        </a>
        <a class="ng-social-facebook">
          <i class="fa fa-linkedin"></i> 
        </a>
        <a class="ng-social-facebook">
          <i class="fa fa-instagram"></i> 
        </a>
            </div>
  
    
      
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.3/angular.min.js"></script>
	<script src="JS/social.js"></script>
	<script>
	angular.module("APP",["ngSocial"]).
	controller("ExampleController",['$scope',function($scope){
		 $scope.current_title = 'www.tutorialspoint.com/';
         $scope.current_description = 'www.tutorialspoint.com/';
	}])
	</script></div>
        </div> 
  
  
  <div></div>
  
  
  

</body>
</html>


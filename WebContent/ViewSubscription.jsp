<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.xbbnhfk.Subscription.SubscriptionDao"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>
<%@ include file="Same.jsp"%>

<%@ page import="com.xbbnhfk.Subscription.SubscriptionDetails"%>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
    
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
 <script type="text/javascript">
 myApp = angular.module('myApp',[]);

 myApp.controller('empCtl',function($scope,$http){             
        $http.get("http://localhost:8080/uPDATED/subscription/all")
        .then(function mySucces(response) {
                     $scope.myWelcome = response.data;
                   }, function myError(response) {
                     $scope.myWelcome = response.statusText;
                 });
               
            $scope.sortField='email';
            $scope.reverse=true;
           });
</script>
<!-- js -->
<!-- <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script> -->
<title>Profile</title>
</head>
<body ng-app="myApp" ng-controller="empCtl">
Search: <input ng-model="query12" type="text" />
<table  cellpadding=5 border-collapse=collapse border=0>
<tr>
  <th><a href="" ng-click="sortField = 'email'; reverse=!reverse">Email id</a></th>
  <th><a href="" ng-click="sortField = 'subType'; reverse=!reverse">Subscription Type</a></th>
    <th><a href="" ng-click="sortField = 'amount' ; reverse=!reverse">amount</a></th>
  <th><a href="" ng-click="sortField = 'userName' ; reverse=!reverse">userName</a></th>  
   <th><a href="" ng-click="sortField = 'lastName' ; reverse=!reverse">lastName</a></th>
    
  </tr> 
  <tr ng-repeat="emp in myWelcome | filter:query12 | orderBy:sortField:reverse">
  
  <td>{{emp.email}}</td>
  <td>{{emp.subType}}</td>
   <td>{{emp.amount}}</td>
     <td>{{emp.userName}}</td>
        <td>{{emp.lastName}}</td>
           
             
 </tr>
</table>
      <br>

</body>



</body>
</html>
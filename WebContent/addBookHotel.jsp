<html ng-app="myApp">
  <head>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.8/angular.js"></script>
    <script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
   <%@ page import="com.xbbnhfk.book.BookBean"%>
    <%@ page import="java.util.*"%>
   <jsp:useBean id="obj" class="com.xbbnhfk.book.BookDao"/> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script>
function previewFile() {
    var file    = document.querySelector('input[type=file]').files[0];
    var reader  = new FileReader();
    reader.addEventListener("load", function () {
    	document.getElementById("hiddenId").name="image";
    	document.getElementById("hiddenId").value=reader.result;

      alert(reader.result);
    }, false);
    if (file) {
      reader.readAsDataURL(file);
    }
  }

</script>
      <script>
    var myApp = angular.module('myApp', []);
    <%
    String name=(String)session.getAttribute("user_id");

    List<BookBean> bl=obj.viewBook();
    Iterator<BookBean> itr =  bl.iterator();
    %>
    myApp.controller('CartController', ['$scope', function($scope) {
      $scope.cartData = [
<%
while(itr.hasNext()){
BookBean hb = itr.next();

 float weight=hb.getWeight();
 float price=hb.getPrice();

float pages=hb.getPages();

String author =hb.getAuthor();
String bookDesc =hb.getBookDesc();
String dimensions=hb.getDimensions();
String copyType=hb.getCopyType();
String genre=hb.getGenre();


%>     
       
        {
              
              'Bookname':'<%=bookDesc%>',
              'price':'<%=price%>',
              'copyType':'<%=copyType%>',
              'genre':'<%=genre%>',
              'pages':'<%=pages%>',
              'author':'<%=author%>',
              'dimensions':'<%=dimensions%>',
            	  'weight':'<%=weight%>'
              }
        
        <%if(itr.hasNext()){%>
        ,
        <%}else
               break;}
        %>
        ];
      
      $scope.remove = function(index) {
        $scope.cartData.splice(index, 1);
      }
      
      $scope.add = function() {
        var newbook = {
          "Bookname": $scope.Bookname, 
          "copyType": $scope.copyType, 
         "genre": $scope.genre,
         "author": $scope.author,
         "dimensions": $scope.dimensions,
          "pages":$scope.pages,
          "weight":$scope.weight,
          "price":$scope.price
        };
        
        $scope.cartData.push(newbook);
      }
    }]);
    </script>
  </head>
  <body ng-controller="CartController" class="container">
    <form action="InsertBook.jsp">
    <div class="panel panel-default">
      <div class="panel-heading">New book</div>
      <div class="panel-body">
        <form ng-submit="add()" class="form-horizontal">
               <div class="form-group">
                         <label class="col-sm-2 control-label">Book Name</label>
                                <div class="col-sm-10">
                            <input type="text" class="form-control" ng-model="Bookname" name="name" required/>
                                </div>
              </div>
              
           <div class="form-group">
            <label class="col-sm-2 control-label">author</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" ng-model="author" name="author" required/>
                          </div>
          </div>
          
          
          <div class="form-group">
            <label class="col-sm-2 control-label">copyType</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" ng-model="copyType" name="copy" required/>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label">genre</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" ng-model="genre" name="genre" required/>
            </div>
          </div>
          
           <div class="form-group">
            <label class="col-sm-2 control-label">pages</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" ng-model="pages"  name="pages" required/>
            </div>
          </div>
          
          
           <div class="form-group">
            <label class="col-sm-2 control-label">dimensions</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" ng-model="dimensions" name="dimension"  required/>
                          </div>
          </div>
          
          
                 <div class="form-group">
                      <label class="col-sm-2 control-label">price</label>
                          <div class="col-sm-10">
                        <input type="text" class="form-control" ng-model="price" name="price" required/>
                          </div>
                </div>
                
                
                
           <div class="form-group">
            <label class="col-sm-2 control-label">weight</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" ng-model="weight" name="weight" required/>
                          </div>
          </div>
          
          
          
          
          
 <div class="form-group">
            <label class="col-sm-2 control-label">Add Image:</label>
            <div class="col-sm-10">
              <input type="file" onchange="previewFile()" name="artimage" id="artimage">
<input type="hidden" id="hiddenId" name="h" value="" >
                          </div>
          </div>  
          
          
          
          
          
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
               <input type="submit" class="btn btn-default" value="Add a book" />
            </div>
          </div>  
        </form>
        
      </div>
    </div>
   </form>
    <table class="table" ng-show="cartData.length > 0">
      <thead>
        <tr>
          <th>Bookname</th>
          <th>copyType</th>
           <th>genre</th>
            <th>author</th>
             <th>dimensions</th>
              <th>pages</th>
               <th>weight</th>
             <th>price</th>
            
        
        </tr>
      </thead>
      <tbody>
        <tr ng-repeat="book in cartData">
           <td>{{book.Bookname}}</td>
          <td>{{book.copyType}}</td>
          <td>{{book.genre}}</td>
          <td>{{book.author}}</td> 
          <td>{{book.dimensions}}</td>
          <td>{{book.pages}}</td>
          <td>{{book.weight}}</td> 
        <td>{{book.price}}</td> 
          <td>
            <button ng-click="remove($index)" class="btn btn-default">Remove</button>
          </td>
        </tr>
      </tbody>
    </table>
  
  </body>
</html>

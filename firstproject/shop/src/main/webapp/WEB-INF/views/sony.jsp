<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js"> --> 

<script>
 angular.module('myApp', [])
 .controller('MyController', [ '$scope', '$http', function($scope, $http) {
	 /* $scope.searchFish   = ''; */
		alert("hi i am in ctlr");
    $http.get("viewall").success(function(data){
    	alert("hi i am in get");
         $scope.person = data;
    });
 }]);
</script>
</head>
<body>
 
<div class="container" ng-app="myApp" ng-controller="MyController">
<form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>

        <input type="text" class="form-control" placeholder="Search da Fish" ng-model="searchFish">

      </div>      
    </div>
  </form>
<table class="table table-bordered table-striped">
    
    <thead>
      <tr>
        <td>
            name 
        </td>
        <td>
          price 
        </td>
        
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="roll in person | filter:searchFish">
        <td>{{ roll.name }}</td>
        <td>{{ roll.productprice }}</td>
        
      </tr>
    </tbody>
    
  </table>
  <%-- <div ng-repeat="roll in person | filter:searchFish">
  <img src="<c:url value = '/resources/images/{{roll.name}}.jpg'/>"alt="{{role.name}}" class="img-responsive" width="400" />
  </div>
  --%>
    
<%-- <p>failed</p>
<c:url value="/login?logout" var="logoutUrl" />
<h3><a href="${logoutUrl}">Logout</a></h3>
<img src="<c:url value = '/resources/images/${img}.jpg'/>"alt="pree" class="img-responsive" /> --%>
</body>
</html>
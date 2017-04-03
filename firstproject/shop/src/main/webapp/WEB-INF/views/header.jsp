<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<html lang="en">
<head>
<title>Mobile World</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/jquery/jquery-3.1.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style>
.carousel-inner img {
    width: 100%;
    max-height: 500px
}
 div.c-wrapper{
    width: 100%; 
    margin: auto;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}
</style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="<c:url value="/home"/>"><img class="img-responsive logo" src="<c:url value="resources/images/smart-phone-cartoon-23970162.jpg"/>" alt="" width="30" height="30">
    </a>
      <a class="navbar-brand" href="#">MOBILE WORLD</a>
    </div>
    <ul class="nav navbar-nav navbar-left">
      <li><a href="index"><span class="glyphicon glyphicon-home"></span> HOME</a></li>
      <!-- <li><a href="category"><span class="glyphicon glyphicon-log-in"></span>CATEGORY</a></li> -->
   <!-- < <li><a href="memberShip.obj"><span class="glyphicon glyphicon-log-in"></span>Checkout</a></li> -->
   <li class="dropdown">
          <a href="#" style="color:white" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><b>Catogories</b> <span class="caret"></span></a>
          <ul class="dropdown-menu">
         
        <c:forEach items="${categoryList}" var="user">
        
        <li><a href="productpage?pdt=${user.categoryname}">${user.categoryname}</a></li>
           
   
   </c:forEach>
        </ul>
        </li>
         <sec:authorize access="hasRole('ROLE_ADMIN')">
        <li class="dropdown">
          <a href="#" style="color:white" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><b>Admin</b> <span class="caret"></span></a>
          <ul class="dropdown-menu">
        <li><a href="product">Add Product</a></li>
        <li><a href="category">Add Category</a></li>
        </ul>
        </li>
        </sec:authorize>
       <li ><a href="viewall" style="color:white"><b>View All</b></a></li>
   </ul>
   <%-- <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
    <!-- <span class="caret"></span> --></button>
    <ul class="dropdown-menu">
      
       <c:forEach items="${categoryList}" var="user">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      <li><a href="productpage?pdt=${user.categoryname}">${user.categoryname}</a></li>
     
     </tr>
     
    </c:forEach> 
  
    </ul>
  </div> --%>
  
    <ul class="nav navbar-nav navbar-right"> 
    <sec:authorize access="isAnonymous()">
    
    <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>LOGIN</a></li>
     </sec:authorize>
    <%-- <c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
              <!-- <li><a href="cart" class="btn btn-default btn-sm"> <span
							class="glyphicon glyphicon-shopping-cart"></span><i><b></b></i></a>    -->
                
   
   
    <sec:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN')"> 
    <li class="active"><a><b>Welcome: ${pageContext.request.userPrincipal.name}</b></a></li> 
    <%-- <li><a href="<c:url value="logout"/>"> LOGout</a></li> --%>
    <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>LOGOUT</a></li>
    </sec:authorize>
   
   <%-- </c:if> --%>

<sec:authorize access="isAnonymous()">
    
   	<li><a href="<c:url value="/register.obj"/>"><span class="glyphicon glyphicon-user"></span>REGISTER</a></li>
   	</sec:authorize>
   
   	<!-- <li><a href="product"><span class="glyphicon glyphicon-log-in"></span>ADD PRODUCT</a></li> -->
   	
     <li><a href="cart1" style="color: white"><span class="glyphicon glyphicon-shopping-cart"><span class="badge"> ${cartlength} </span></span> Cart</a>
				</li>
    </li> 
	</ul>
  </div>

   
<%-- <form class="navbar-form" role="search">
<center>
    <input type="search" class="form-control id="search" placeholder="Search for a Product">
    </center>
	</form> --%>
</nav>



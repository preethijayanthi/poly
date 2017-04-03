<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
<script src="resources/jquery/jquery-3.1.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/js.txt"></script>
<title>Insert title here</title>
<style>
  .glyphicon { margin-right:5px; }
.thumbnail
{
    margin-bottom: 20px;
    padding: 0px;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
}

.item.list-group-item
{
    float: none;
    width: 100%;
    background-color: #fff;
    margin-bottom: 10px;
}
.item.list-group-item:nth-of-type(odd):hover,.item.list-group-item:hover
{
    background: #428bca;
}

.item.list-group-item .list-group-image
{
    margin-right: 10px;
}
.item.list-group-item .thumbnail
{
    margin-bottom: 0px;
}
.item.list-group-item .caption
{
    padding: 9px 9px 0px 9px;
}
.item.list-group-item:nth-of-type(odd)
{
    background: #eeeeee;
}

.item.list-group-item:before, .item.list-group-item:after
{
    display: table;
    content: " ";
}

.item.list-group-item img
{
    float: left;
}
.item.list-group-item:after
{
    clear: both;
}
.list-group-item-text
{
    margin: 0 0 11px;
}
  </style>
</head>
<body>
<div class="row">
<c:forEach items="${productList}" var="product">
		<div class="col-xs-3">
			<div class="thumbnail zoom" id="ex1">
				<img src="<c:url value="resources/images/${product.name}.jpg"/>"
					class="img-responsive" >

				<div class="caption">
					<div class="row">
						<div class="font-effect-wallpaper" class="col-md-12 col-xs-12" style="color:black">
						
							<center><h3>${product.productname}</h3></center>
							
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-xs-12 price">

							<h3>
								<hr>
								<center><label><i class="fa fa-inr" style="color:black" ><strike><fmt:formatNumber value="${product.productprice}" type="currency" pattern="#,##,##,##,###.00"/></strike></i></label></center>
								
							</h3>
							<%-- <h2>
							<center><label><i class="fa fa-inr" style="color:black" ><fmt:formatNumber value="${product.discountPrice}" type="currency" pattern="#,##,##,##,###.00"/></i></label></center>
							</h2> --%>
							<hr>
						</div>
					</div>
					 <security:authorize access="hasAnyRole('ROLE_ADMIN')"> 
					<div class="row">
						<div class="col-md-12">
						<h4>
						<center> Qty:${product.quantity}</center>
						</h4>
						</div>
					</div>
					</security:authorize> 
					<security:authorize access="hasAnyRole('ROLE_ANONYMOUS')"> 
					<div class="row">
						<div class="col-md-12">
						<center><a href="<c:url value='productdetails?dt=${product.id}'/>" class="btn btn-default  "><span class="glyphicon glyphicon-th-list"></span> view in detail</a></center>
						</div>
					</div>
					
					</security:authorize> 
					<security:authorize access="hasRole('ROLE_USER')"> 
					<div class="row">
						<div class="col-md-12">
							<center><a href="<c:url value='productdetails?dt=${product.id}'/>" class="btn btn-default "><span class="glyphicon glyphicon-th-list"></span>view in detail</a></center>
						</div>
					</div>
					</security:authorize> 
					
		
				<%-- <security:authorize access="hasRole('ROLE_ADMIN')">
					<div class="row">
						<div class="col-md-6">
							<a href="<c:url value='edit'/>" class="btn btn-default "><span
								class="		glyphicon glyphicon-pencil"></span> edit</a>
						</div>
						
						<div class="col-md-6">
							<a href="<c:url value='delete/${product.id}'/>" class="btn btn-default"><span
								class="	glyphicon glyphicon-trash"></span> Delete</a>
						</div>
					</div>
				</security:authorize> --%> 
				</div>
			</div>
		</div>
		</c:forEach>
	</div>	

</html>
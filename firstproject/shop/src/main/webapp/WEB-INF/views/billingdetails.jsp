<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing Details</title>
<style>
	  hr {
width: 100%;
height: 8px;
margin-left: auto;
margin-right: auto;
background-color:#FF0066;
color:#FF0066;
border: 0 none;
}
	  </style>
	  



</head>
<body>
<a href="${flowExecutionUrl}&_eventId_home">Home</a>
        
				<form:form modelAttribute="bs"><br />

        <h3>Billing Address:</h3>
        <hr />
        <form class="form-horizontal">
<div class="container">
        <div class="form-group">
            <label class="col-md-8 control-label" for="billingStreet">Street Name</label>
             <div class="col-md-8">
            <form:input path="streetName" id="billingStreet" class="form-Control" />
            					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('streetName')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-8 control-label" for="billingPlotNumber">Plot Number</label>
             <div class="col-md-8">
            <form:input path="plotNo" id="billingApartmentNumber" class="form-Control" />
        					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('plotNo')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
        </div>
        </div>

        <div class="form-group">
            <label class="col-md-8 control-label" for="billingCity">City</label>
             <div class="col-md-8">
            <form:input path="city" id="billingCity" class="form-Control" />
       					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
       </div>
        </div>

        <div class="form-group">
            <label class="col-md-8 control-label" for="billingState">State</label>
             <div class="col-md-8">
            <form:input path="state" id="billingState" class="form-Control" />
            					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('State')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-8 control-label" for="billingCountry">Country</label>
             <div class="col-md-8">
            <form:input path="country" id="billingCountry" class="form-Control" />
        </div>
        </div>

       <%--  <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="zipcode" id="billingZip" class="form-Control" />
        </div>
 --%>
        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_submit" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
        </div>
</form>
        </form:form>
      


</body>
</html>
<%@ include file="footer.jsp" %>
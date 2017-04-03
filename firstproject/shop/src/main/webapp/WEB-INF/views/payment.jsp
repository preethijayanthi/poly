<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>"rel="stylesheet">
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">
  <h2>PAYMENT</h2><hr>
  <p>Please choose the Payment Method</p>
  <form>
    <label class="radio-inline">
      <input type="radio" name="optradio">Cash On Delivery
    </label>
    <br>
    <label class="radio-inline">
      <input type="radio" name="optradio">NetBanking
    </label>
    <br>
    <label class="radio-inline">
      <input type="radio" name="optradio">Credit/Debit Card
    </label>
    <br>
  </form>
  <a href="finish"> <button type="button" class="btn btn-success">Submit</button></a>
</div>
</body>
<jsp:include page="footer.jsp" />
</html>

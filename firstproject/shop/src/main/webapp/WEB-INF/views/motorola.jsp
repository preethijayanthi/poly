<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>
<%-- <jsp:include page="includes.jsp" /> --%>
<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>"rel="stylesheet">
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="<c:url value="/resources/bootstrap/css/style.css"/>"
	rel="stylesheet">
<style>
/* @import url(https://fonts.googleapis.com/css?family=Roboto:300); */
.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: black;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
  background: black; /* fallback for old browsers */
   background-image: url("https://thumbs.dreamstime.com/z/photo-frames-christmas-ornaments-7248437.jpg");
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
</head>
<body >
<jsp:include page="header.jsp" />
	<hr>
<div class="login-page">
  <div class="form">
  <c:if test="${not empty error}"><div> <h3 class="" style="color:black">${error}</h3></div></c:if>
	<c:if test="${not empty message}"><div class="alert alert-success" role="alert" style="color:black">${message}</div></c:if>
   <form action="<c:url value='j_spring_security_check'/>"  method="POST" id="target">
   		<h1 style=color:black>Login</h1>
   		<label class="col-md-4" style=color:black>Mail Id</label>
     <input name="mail_id" type="text" style=color:black placeholder="mailid"/>
     <label class="col-md-2" style=color:black>Password</label>
      <input name="password" type="password" style=color:black placeholder="password"/>
     <%-- <a href="<c:url value='password'/>">forgot  password?</a>  --%>
     <button>login</button>
     </form>
  </div>
</div>

</body>

</html>

<%@include file="header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<style>
/* Credit to bootsnipp.com for the css for the color graph */
.wrapper {
	margin-top: 80px;
	margin-bottom: 20px;
}

.form-horizontal {
	max-width: 450px;
	padding: 30px 45px 66px;
	margin: 0 auto;
	background-color: lightblue;
	border: 3px dotted black /* rgba(0,1,1,0.1) */;
}

body {
	background: black; /* fallback for old browsers */
	background-image:
		url("https://thumbs.dreamstime.com/z/set-hand-holding-mobile-smart-phone-blank-screen-isolated-white-43475573.jpg");
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>
</head>
<body>

	<div class="container">
		<div class="wrapper">
			<form:form class="form-horizontal"
				modelAttribute="register"  method="POST" >
				<!-- <div class="row"> -->
				<!-- <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3"> -->
				<form role="form">

					<h2>
						Please Sign Up <small></small>
					</h2>

					<br>


					<div class="form-group">
						<form:input type="text" path="username" name="username" 
							id="username" class="form-control input-lg"
							placeholder="User Name" tabindex="3" />
							<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('username') }"
							var="err">
							<div>
							<span>
							${err.text}</span>
							</div>
							</c:forEach>
							
					</div>



					<div class="form-group">
						<form:input path="phonenumber" name="phonenumber"
							id="phonenumber" class="form-control input-lg"
							placeholder="Phone Number" tabindex="3" />
							<c:forEach 
							items="${flowRequestContext.messageContext.getMessagesBySource('phonenumber') }"
							var="err">
							<div>
							<span>
							${err.text}</span>
							</div>
							</c:forEach>
							<%-- title="PhoneNumber Starts with Either 7,8, or 9.Length must be 10" --%>
							
					</div>
					<div class="form-group">
						<form:input type="email" path="email" name="email" id="email"
							class="form-control input-lg" placeholder="Email Address"
							tabindex="4" />
							<%-- <form:errors path="email" cssClass="error" /> --%>
							<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('email') }"
							var="err">
							<div>
							<span>
							${err.text}</span>
							</div>
							</c:forEach>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<form:input type="password" path="password" name="password"
									id="password" class="form-control input-lg"
									placeholder="Password" tabindex="5" />
							<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('password') }"
							var="err">
							<div>
							<span>
							${err.text}</span>
							</div>
							</c:forEach>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<form:input type="password" path="repassword" name="repassword"
									id="repassword" class="form-control input-lg"
									placeholder="Confirm Password" tabindex="6" />
									<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('repassword') }"
							var="err">
							<div>
							<span>
							${err.text}</span>
							</div>
							</c:forEach>
							</div>
						</div>
					</div>
					

					<br>
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<input type="submit" name="_eventId_submit" value="Register"
								class="btn btn-primary btn-block btn-lg" tabindex="7">
						</div>
						<div class="col-xs-12 col-md-6">
							<a href="#" class="btn btn-success btn-block btn-lg">Sign In</a>
						</div>
					</div>
				</form>
			</form:form>
		</div>



	</div>
	

</body>
</html>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Mvc WebFlow Demo</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="content">
		<div>
			<form:form modelAttribute="register">

				<div class="form-group">
					<form:label class="control-label col-sm-2" path="Username">Enter YourName:</form:label>
					<div class="col-sm-10">
						<form:input type="text" path="username" class="form-control"
							required="true" placeholder="Enter Name" />
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						<br />
					</div>
				</div>


				<div class="form-group">
					<form:label class="control-label col-sm-2" path="email">Enter Email ID:</form:label>
					<div class="col-sm-10">
						<form:input path="email" class="form-control" required="true"
							type="email" placeholder="Enter Mail Id" />
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						<br />
					</div>
				</div>


				<div class="form-group">
					<form:label class="control-label col-sm-2" path="phonenumber">Enter Mobile Number</form:label>
					<div class="col-sm-10">
						<form:input type="number" path="phonenumber" class="form-control"
							required="true" placeholder="Enter Mobile Number" />
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('phonenumber')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						<br />
					</div>
				</div>

				<div class="form-group">
					<form:label class="control-label col-sm-2" path="password">Enter Password:</form:label>
					<div class="col-sm-10">
						<form:input type="password" path="password"
							class="form-control" required="true" placeholder="password" />
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						<br />
					</div>
				</div>

				<div class="form-group">
					<form:label class="control-label col-sm-2" path="repassword">Confirm Password:</form:label>
					<div class="col-sm-10">
						<form:input type="password" path="repassword"
							class="form-control" required="true"
							placeholder="Confirm Password" />
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('repassword')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						<br />
					</div>
				</div>
				<br>
				<br>
				<br>

				
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</form:form>
		</div>



	</div>
</body>
</html>
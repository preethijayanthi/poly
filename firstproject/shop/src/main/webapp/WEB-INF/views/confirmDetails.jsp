confirm:

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			 <a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
 	<form:form modelAttribute="bs">
				<form:label path="streetName">streetName:</form:label>${bs.streetName}
					<br />
				<br />
				<form:label path="plotNo">plotNo :</form:label>${bs.plotNo}
					<br />
				<br />
				<form:label path="city">city :</form:label>${bs.city}
					<br />
				<br />
				<form:label path="state">state :</form:label>${bs.state}
					<br />
				<br />
								
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</form:form>
		</fieldset>
	</div>
</body>
</html> 
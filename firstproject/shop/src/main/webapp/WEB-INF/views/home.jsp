<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<ul class="dropdown-menu">
      
       <c:forEach items="${categoryList}" var="user">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      <li><a href="/home?pdt=${user.categoryname}">${user.categoryname}</a></li>
     
     </tr>
     
    </c:forEach> 
  
    </ul>
</body>
</html>
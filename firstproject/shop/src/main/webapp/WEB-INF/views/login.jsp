<%@include file="header.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
   <head>
      <title>Spring Security Demo - jCombat</title>
     <style>
  .wrapper {    
	margin-top: 80px;
	margin-bottom: 20px;
	
}

.form-signin {
  max-width: 420px;
  padding: 30px 38px 66px;
  margin: 0 auto;
  background-color: lightblue;
  border:  3px dotted black/* rgba(0,1,1,0.1) */ ;  
  }

.form-signin-heading {
  text-align:center;
  margin-bottom: 30px;
}

.form-control {
  position: relative;
  font-size: 16px;
  height: auto;
  padding: 10px;
}

input[type="text"] {
  margin-bottom: 0px;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}

input[type="password"] {
  margin-bottom: 20px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

body {
  background: black; /* fallback for old browsers */
   background-image: url("https://thumbs.dreamstime.com/z/set-hand-holding-mobile-smart-phone-blank-screen-isolated-white-43475573.jpg"); 
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
.colorgraph {
  height: 7px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4); 
}
</style>
   </head>
   <body>
   <div class = "container">
	<div class="wrapper">
		<form action="<c:url value='/login' />" method="post" name="Login_Form" class="form-signin">       
		    <h3 class="form-signin-heading">Login Here ...</h3>
			  <hr class="colorgraph"><br>
			  
			  <input type="text" class="form-control" name="Username" placeholder="Username"  />
			  <input type="password" class="form-control" name="Password" placeholder="Password" />     		  
			 
			  <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>  			
		</form>			
	</div>
</div> 
     
        <%--  <h2>Demo login Page</h2>
         <div style="text-align: center; padding: 30px;border: 1px solid green;width: 250px;">
            <form method="post" action="<c:url value='/login' />">
               <table>
                  <tr>
                     <td colspan="2" style="color: red">${message}</td>
                  </tr> 
                  <tr>
                     <td>Username:</td>
                     <td><input type="text" name="username" /></td>
                  </tr>
                  <tr>
                     <td>Password:</td>
                     <td><input type="password" name="password" /></td>
                  </tr>
                  <tr>
                     <td colspan="2"><input type="submit" value="Login" /></td>
                  </tr>
               </table>
            </form>
         </div> --%>
      
   </body>
</html>

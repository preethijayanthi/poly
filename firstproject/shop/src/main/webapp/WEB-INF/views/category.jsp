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
	background-color: pink;
	border: 3px dotted black /* rgba(0,1,1,0.1) */;
}

body {
	background: black; /* fallback for old browsers */
	background-image:
		url("resources/images/456.jpg");
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
			<form:form class="form-horizontal" action="category.do"
				modelAttribute="category" method="POST">
				<!-- <div class="row"> -->
				<!-- <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3"> -->
				<form role="form">

					

					<div class="form-group">
						<form:input type="text" path="Categoryname" name="categoryname"
							id="categoryname" class="form-control input-lg"
							placeholder="Category Name" tabindex="3" />
					</div>
					<div class="form-group">
						<form:input type="text" path="Categorydescription" name="categorydescription"
							id="categorydescription" class="form-control input-lg"
							placeholder="Category Description" tabindex="3" />
					</div>

					
					
					
					<br>
					
						<div>
							 <input type="submit" name="action" value="Add"
								class="btn btn-primary btn-block btn-lg" tabindex="7" />
								</div>
				</form>
			</form:form>
		</div>


		

	</div>
	

</body>
</html>
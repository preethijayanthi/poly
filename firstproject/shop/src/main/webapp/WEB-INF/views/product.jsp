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
	background-image:/* <img src="resources/images/123.jpg"> */
		 url("resources/images/123.jpg"); 
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

/* .colorgraph {
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
} */
</style>
</head>
<body>

	<div class="container">
		<div class="wrapper">
			<form:form class="form-horizontal" action="product.do"
				commandName="product" enctype="multipart/form-data">
				<!-- <div class="row"> -->
				<!-- <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3"> -->
				<form role="form">
				<div class="form-group">
						<form:input type="text" path="id" name="id"
							id="id" class="form-control input-lg"
							placeholder="Id" tabindex="3" />
							
					</div>
				<div class="form-group">
  				<!-- <label class="col-lg-4 control-label" >PRODUCT CATEGORY</label> -->
 			 	<div class="col-lg-4">   
    			<form:select path="categoryname" class="form-control">
    
   			 	<c:forEach items="${categoryList}" var="user">
    
    			<form:option value="${user.categoryname}">${user.categoryname}</form:option>
  
    			</c:forEach>
    			<%-- <form:errors path="categoryname"  cssClass="error" /> --%>
 			    </form:select>
  
 				 </div>
				</div>
					


					<div class="form-group">
						<form:input type="text" path="Productname" name="productname"
							id="productname" class="form-control input-lg"
							placeholder="Productname" tabindex="3" />
							<form:errors path="Productname" cssClass="error" />
					</div>



					<div class="form-group">
						<form:input type="text" min="0" path="Productprice" name="productprice"
							id="productprice" class="form-control input-lg"
							placeholder="Enter the Productprice" tabindex="3" />
							<form:errors path="Productprice" cssClass="error" />
					</div>
					<div class="form-group">
						<form:input type="text" path="Productdescription" name="productdescription" id="productdescription"
							class="form-control input-lg" placeholder="ProductDescription"
							tabindex="4" />
					</div>
					
						
							<div class="form-group">
								<form:input type="text" path="Name" name="Name"
									id="Name" class="form-control input-lg"
									placeholder="Image Name" tabindex="5" />
							</div>
							<div class="form-group">
								<form:input type="text" path="quantity" name="quantity"
									id="quantity" class="form-control input-lg"
									placeholder="Quantity" tabindex="5" />
							</div>
						<div class="form-group">
								<%-- <form:input type="text" path="Name" name="Name"
									id="Name" class="form-control input-lg"
									placeholder="Image Name" tabindex="5" /> --%>
									<!-- File to upload: <input type="file" name="file"> -->
							  <form:input type="file" name="file" path="file" class="form-control input-lg" placeholder="Upload the file" /> 
							</div>
							<div>
							 <input type="submit" name="action" value="Add"
								class="btn btn-primary btn-block btn-lg" tabindex="7" />
								</div> 
								<div>
							 <input type="submit" name="action" value="update"
								class="btn btn-primary btn-block btn-lg" tabindex="7" />
								</div> 
						
					
					<!-- <div class="row">
				<div class="col-xs-4 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" tabindex="7">I Agree</button>
                        <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
					</span>
				</div>
				<div class="col-xs-8 col-sm-9 col-md-9">
					 By clicking <strong class="label label-primary">Register</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a> set out by this site, including our Cookie Use.
				</div>
			</div> -->

					<br>
					<!-- <div class="row">
						<div class="col-xs-12 col-md-6">
							<input type="submit" name="action" value="Register"
								class="btn btn-primary btn-block btn-lg" tabindex="7">
						</div>
						<div class="col-xs-12 col-md-6">
							<a href="#" class="btn btn-success btn-block btn-lg">Sign In</a>
						</div>
					</div> -->
				</form>
			</form:form>
		</div>


		<!-- Modal -->
		<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
					</div>
					<div class="modal-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">I
							Agree</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->

	</div>
	</div>

</body>
</html>
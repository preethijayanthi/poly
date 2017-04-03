<%@include file="header.jsp" %>
<body>

	<div class="container">
  
  <div class="col-6"> 
	<div id="myCarousel" class="carousel slide" data-ride="carousel">

		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>
				
			    	

		<div class="carousel-inner">
			<div class="item active">
				<img src="resources/images/CAROSEL.jpg" alt="Chania" />
				<!-- class="img-responsive" style="width=800px; height=400" -->
			</div>

			<div class="item">
				<img src="resources/images/CAROSEL1.jpg" alt="Chania" 
				class="img-responsive" style="width=954px; height=263px"/>
			</div>

			<div class="item">
				<img src="resources/images/general.jpg" alt="Flower" 
				class="img-responsive" style="width=954px; height=263px"/>
			</div>

			<div class="item">
				<img src="resources/images/CAROSEL3.jpg" alt="Flower" 
				style="width=954px; height=263px"/>
			</div>
		</div>


		<a class="left carousel-control" href="#myCarousel"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>
<br>
<br>
<div class="container text-center">
	<h3>MOBILE GALLERY</h3>
	<br>
	<div class="row">
		<div class="col-sm-4"><a href="productpage?pdt=LENOVO">
			<img src="resources/images/pree1.jpg" class="img-responsive"
				style="width: 100%" alt="Image"></a>
			<p>LENOVO</p>
		</div>
		<div class="col-sm-4"><a href="productpage?pdt=SONY">
			<img src="resources/images/pree2.jpg" class="img-responsive"
				style="width: 100%" alt="Image"></a>
			<p>SONY</p>
		</div>
		<div class="col-sm-4"><a href="productpage?pdt=SAMSUNG">
			<img src="resources/images/pree3.jpg" class="img-responsive"
				style="width: 100%" alt="Image"></a>
			<p>SAMSUNG</p>
		</div>
	</div>
</div>
<!-- <br>
<a href="blink">checking</a>
<a href="pdt">admin</a>
<a href="sony">PRODUCTPAGE</a>
<a href="motorola">POPUP</a> -->
<div class="container">  
<div class="col-sm-4">
			<div class="img">
				<a target="_blank" href="resources/images/r3.jpg"> <img
					src="resources/images/gif1.gif" alt="Mountains" width="300"
					height="250">
				</a>
	
 </div>
</div>
 
	<div class="col-sm-4">
 		<a href="#" > <iframe width="300" height="250"
				src="https://www.youtube.com/embed/uB8OsI3gcbo" ><!-- frameborder="0" 	allowfullscreen -->
			</iframe>
		</a>
	</div>
	
	
	

<div class="col-sm-4">
			<div class="img">
				<div class="font-effect-wallpaper" class="col-md-12 col-xs-12" style="color:#8B3A62">
			
				<a target="_blank" href="resources/images/r3.jpg"> <img
					src="resources/images/gif2.gif" alt="Mountains" width="300"
					height="250">
				</a>
	
 </div>
 </div>
 </div>
 </div>
 </div>
</body>
</html>
<%@include file="footer.jsp" %>

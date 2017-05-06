<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- //for-mobile-apps -->
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${css}/font-awesome.css" rel="stylesheet"> 
<link href="${css}/style.css" rel="stylesheet" type="text/css" media="all" />
<!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet">
<!--//web-fonts-->
</head>
<body>
<!-- gallery -->
	<div class="gallery-ban" id="gallery">
	<div class="container" id="galleryTop">
				<ul id="flexiselDemo1">			
					<li>
						<div class="wthree_testimonials_grid_main">
							
									<img src="${images}/p1.jpg" alt=" " class="img-responsive" />
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
							
									<img src="${images}/p2.jpg" alt=" " class="img-responsive" />
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
						
									<img src="${images}/p3.jpg" alt=" " class="img-responsive" />
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
						
									<img src="${images}/p6.jpg" alt=" " class="img-responsive" />
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
						
									<img src="${images}/p4.jpg" alt=" " class="img-responsive" />
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
						
									<img src="${images}/p5.jpg" alt=" " class="img-responsive" />
						</div>
					</li>
				</ul>
				
	</div><br><br><br><br>
	<!-- List Products -->
	<div class="container">
	<div class="row">
	<div class="col-md-3">
	<!-- Side Category bar -->
	<h3 class="tittle-w3 sub-head">Our Categories</h3>
				<ul class="list-unstyled">
	<c:forEach items="${categories}" var="category">
				<li><i class="fa fa-check" aria-hidden="true"></i><a href="${contextRoot}/show/category/${category.catid}/products">${category.catname}</a></li></c:forEach>
	</ul></div>
	<!-- For Products -->
	<div class="col-md-9">
	<!-- Adding breadcrumb -->
		<div class="row">
		<div class="col-lg-12">
		<c:if test="${userClickAllProducts == true}">
		<ol class="breadcrumb">
		<li><a href="${contextRoot}/main">Home</a></li>
		<li class="active">All Products</li>
		</ol>
		</c:if>
		<c:if test="${userClickCategoryProducts == true}">
		<ol class="breadcrumb">
		<li><a href="${contextRoot}/main">Home</a></li>
		<li class="active">Category</li>
		<li class="active">${category.catname}</li>
		</ol>
		</c:if>
		
		</div></div>
	
	</div>
	</div></div>
	</div>
	<!-- //gallery --><br><br><br><br><br><br><br><br><br><br><br><br>
	<a href="#gallery" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span></a>  
	<script type="text/javascript" src="${js}/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="${js}/numscroller-1.0.js"></script>
	<script src="${js}/particles.js"></script>
	<script src="${js}/app.js"></script>
	<!--gallery-->
	<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems : 4,
				animationSpeed : 1000,
				autoPlay : true,
				autoPlaySpeed : 3000,
				pauseOnHover : true,
				enableResponsiveBreakpoints : true,
				responsiveBreakpoints : {
					portrait : {
						changePoint : 480,
						visibleItems : 1
					},
					landscape : {
						changePoint : 640,
						visibleItems : 2
					},
					tablet : {
						changePoint : 768,
						visibleItems : 3
					}
				}
			});

		});
	</script>
	<script type="text/javascript" src="${js}/jquery.flexisel.js"></script>
	<!--gallery-->
	<!-- Dropdown-Menu-JavaScript -->
	<script>
		$(document).ready(function() {
			$(".dropdown").hover(function() {
				$('.dropdown-menu', this).stop(true, true).slideDown("fast");
				$(this).toggleClass('open');
			}, function() {
				$('.dropdown-menu', this).stop(true, true).slideUp("fast");
				$(this).toggleClass('open');
			});
		});
	</script>
	<!-- //Dropdown-Menu-JavaScript -->
	
	

</body>
</html>
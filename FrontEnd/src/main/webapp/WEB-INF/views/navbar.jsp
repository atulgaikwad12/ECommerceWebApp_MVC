<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
<div class="w3_navigation">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="w3_navigation_pos">
						<h1><a href="${contextRoot}/main"><span>D</span>elish <span>F</span>ood</a></h1>
					</div>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--miranda">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item" id="home"><a href="${contextRoot}/main" class="menu__link">Home</a></li>
							<li class="menu__item" id="about"><a href="${contextRoot}/about" class=" menu__link">About</a></li>
							<!-- <li class="menu__item" id="service"><a href="${contextRoot}/service" class=" menu__link">Services</a></li> -->
							<li class="menu__item" id="allproducts"><a href="${contextRoot}/show/all/products" class=" menu__link">Place Order</a></li>
							<!-- <li class="menu__item" id="book"><a href="${contextRoot}/book" class=" menu__link">Book Table</a></li>-->
							<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Activities<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li id="service"><a href="${contextRoot}/service" >Services</a></li>
							<li id="categories"><a href="${contextRoot}/categories">Categories </a></li>
							<security:authorize access="hasAuthority('ADMIN')">	
								<li id="manageProducts"><a href="${contextRoot}/manage/products">Manage Products</a></li>
							</security:authorize>
						</ul>
					</li>
							<li class="menu__item" id="contact"><a href="${contextRoot}/contact" class=" menu__link">Contact</a></li>
						  <security:authorize access="isAuthenticated()">	
							<li class="dropdown menu__item" >
			<!--  <a href="javascript:void(0)"
			class="btn btn-default dropdown-toggle"
			id="dropdownMenu1"
			data-toggle="drpdown">
		
			<span class="caret"></span></a>-->
			<a href="#" class="dropdown-toggle menu__link"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${userModel.fullname}<span class="caret"></span></a>
			<ul class="dropdown-menu">
			 <security:authorize access="hasAuthority('USER')">	
				<li>
				<a href="${contextRoot}/cart">
				<span class="glyphicon glyphicon-shopping-cart"></span>
				<span class="badge">${userModel.cart.cartLines}</span>
				- &#8377;  ${userModel.cart.grandTotal}
				</a>
				</li>
			</security:authorize>
			<li class="divider" role="separator"></li>
			<li>
			<a href="${contextRoot}/perform-logout"> Logout </a>
			</li>
			</ul>
			</li>
			</security:authorize>
	
						</ul>
					</nav>
				</div>
			</nav>	
			<div class="clearfix"></div>
	</div>
	
	<!--<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span></a>  -->
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
	<script>
	window.userRole = '${userModel.role}';
	</script>
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
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
							<li class="menu__item menu__item--current"><a href="${contextRoot}/main" class="menu__link">Home</a></li>
							<li class="menu__item"><a href="${contextRoot}/about" class=" menu__link">About</a></li>
							<li class="menu__item"><a href="${contextRoot}/service" class=" menu__link">Services</a></li>
							<li class="menu__item"><a href="${contextRoot}/show/all/products" class=" menu__link">Dishes</a></li>
							<li class="menu__item"><a href="${contextRoot}/book" class=" menu__link">Book Table</a></li>
							<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="codes.html">Short Codes</a></li>
							<li><a href="icons.html">Icons</a></li>
						</ul>
					</li>
							<li class="menu__item"><a href="${contextRoot}/contact" class=" menu__link">Contact</a></li>
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
	<!-- Calendar -->
	<link rel="stylesheet" href="${css}/jquery-ui.css" />
	<script src="${js}/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3")
					.datepicker();
		});
	</script>
	<!-- //Calendar -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="${js}/move-top.js"></script>
	<script type="text/javascript" src="${js}/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!--js for bootstrap working-->
	<script src="${js}/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- script-for-menu -->
	<script>
		$("span.menu").click(function() {
			$(".top-nav ul").slideToggle("slow", function() {
			});
		});
	</script>
	<!-- script-for-menu -->
</body>
</html>
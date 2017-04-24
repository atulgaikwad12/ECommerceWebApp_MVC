<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="fonts" value="/resources/fonts" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<html lang="en">
<head>
<title>FoodOrdering - ${title}</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Delish Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //for-mobile-apps -->
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${css}/font-awesome.css" rel="stylesheet">
<link href="${css}/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700"
	rel="stylesheet">
<!--//web-fonts-->
</head>
<body>
	<!-- Loading header -->
	<%@include file="header.jsp"%>

	<c:if test="${userClickAbout == true}"><%@include
			file="aboutus.jsp"%></c:if>
	<c:if test="${userClickContact == true}">
		<%@include file="contact.jsp"%></c:if>
	<c:if test="${userClickService == true}">
		<%@include file="service.jsp"%></c:if>
	<c:if test="${userClickBlog == true}">
		<%@include file="blogs.jsp"%></c:if>
	<c:if test="${userClickGallery == true}">
		<%@include file="gallery.jsp"%></c:if>
	<c:if test="${userClickBook == true}">
		<%@include file="book.jsp"%></c:if>

	<%@include file="footer.jsp"%>
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
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
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
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
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.js"></script>
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
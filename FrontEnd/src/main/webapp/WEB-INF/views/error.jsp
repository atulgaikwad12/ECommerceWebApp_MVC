<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<spring:url var="css" value="/resources/css" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

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
		window.menu = '${title}';
		window.contextRoot = '${contextRoot}';

</script>
<!-- DataTable bootstrap -->
	<link href="${css}/dataTables.bootstrap.css" rel="stylesheet" />
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
<div class="wrapper">
			<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<a href="${contextRoot}/main" class="navbar-brand"><font color="white">Home</font></a></li>
				</div></div>
			</nav>	
		
<div class="content">
<div class="container">
	<div class="row">
	<div class="col-xs-12">
	<div class="jumbotron">
	<h1><font color="darkorange">${errorTitle}</font></h1>
	<hr>
	<blockquote style="word-wrap:break-word">
	${errorDescription}
	</blockquote>
	</div>
	</div>
	</div><!-- row -->
</div></div><!-- content -->
		
<%@include file="footer.jsp"%>
</div><!-- wrapper -->		

</body>
</html>
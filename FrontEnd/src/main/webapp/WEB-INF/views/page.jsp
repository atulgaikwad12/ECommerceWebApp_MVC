<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="fonts" value="/resources/fonts" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
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
<!-- //for-mobile-apps -->
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
	
	<link href="${css}/font-awesome.css" rel="stylesheet">
<link href="${css}/style.css" rel="stylesheet" type="text/css"
	media="all" />
	<!-- DataTable bootstrap -->
	<link href="${css}/dataTables.bootstrap.css" rel="stylesheet" />
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
		<!-- Loading header -->
		<%@include file="header.jsp"%>
		<!-- Page content -->
		<div class="content">
		<c:if test="${userClickHome == true}"><%@include
					file="first.jsp"%></c:if>
					<c:if test="${userClickMain == true}"><%@include
					file="first.jsp"%></c:if>
			<c:if test="${userClickAbout == true}"><%@include
					file="aboutus.jsp"%></c:if>
			<c:if test="${userClickContact == true}">
				<%@include file="contact.jsp"%></c:if>
			<c:if test="${userClickService == true}">
				<%@include file="service.jsp"%></c:if>
			<c:if test="${userClickBlog == true}">
				<%@include file="blogs.jsp"%></c:if>
			<c:if
				test="${userClickAllProducts == true}">
				<%@include file="gallery.jsp"%></c:if>
				<c:if
				test="${userClickCategoryProducts == true}">
				<%@include file="gallery.jsp"%></c:if>
			<c:if test="${userClickBook == true}">
				<%@include file="book.jsp"%></c:if>
			<c:if test="${userClickRegst == true}">
				<%@include file="regst.jsp"%></c:if>
				<c:if test="${userClickShowProduct == true}"><%@include
					file="singleProduct.jsp"%></c:if>
		</div>
		<%@include file="footer.jsp"%>
	</div>
	
	
	
	<!-- Data Table Plugin -->
	<script type="text/javascript" src="${js}/jquery.dataTables.js"></script>
	<script type="text/javascript" src="${js}/myapp.js"></script>
	
	<script type="text/javascript" src="${js}/dataTables.bootstrap.js"></script>
</body>
</html>
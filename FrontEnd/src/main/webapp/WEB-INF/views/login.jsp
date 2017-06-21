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
<style type="text/css">
.help-block{
color :red;
}
</style>
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
	<!-- navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
	<div class="navbar-header">
	<a class="navbar-brand" href="${flowExecutionUrl}&_eventId_home">Home</a>
	</div>
	</div>
	</nav>
<div class="content">
<br><br><br>
<div class="container">
<!-- To display wrong username and passord msg -->
<c:if test="${not empty message}">
	<div class="row">
	<div class="col-md-offset-3 col-md-6"></div>
	<div class="alert alert-danger">
	${message}
	</div>
	</div>
</c:if>
<!-- To display msg when user is logged out-->
<c:if test="${not empty logout}">
	<div class="row">
	<div class="col-md-offset-3 col-md-6"></div>
	<div class="alert alert-success">
	${logout}
	</div>
	</div>
</c:if>
<c:if test="${not empty refresh}">
	<div class="row">
	<div class="col-md-offset-3 col-md-6"></div>
	<div class="alert alert-success">
	${logout}
	</div>
	</div>
</c:if>
<div class="row">
<div class="col-md-offset-2 col-md-8" >
<div class="panel panel-primary" style="margin-top:20px;margin-bottom:20px;margin-left:10px;margin-right:10px;">
<div class="panel-heading">
<h4><font color="white">Login </font></h4>
</div>
<div class="panel-body">
<!-- Form Elements -->
<form class="form-horizontal" id="loginForm" 
method="POST"  action="${contextRoot}/login">

<div class="form-group">
<label class="control-label col-md-4" for="email">User name:
</label>
<div class="col-md-8">
<input type="text" name="email" id="email"  placeholder="your registerd email id" class="form-control" />
</div>
</div><!-- form-group -->

<div class="form-group">
<label class="control-label col-md-4" for="password">Password:
</label>
<div class="col-md-8">
<input type="password" name="password" id="password"  placeholder="Enter password" class="form-control"/>
</div>
</div>


<div class="form-group">
<div class="col-md-offset-4 col-md-8">
<input type="submit"  value="Login" class="btn btn-primary"/>
<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
</div>
</div><!-- form-group -->

</form>

</div>
<div class="panel-footer">
<center><h5>Or</h5></center>
<div class="text-right">
New User ? -<a href="${contextRoot}/register" >Sign up Here</a>
</div>
</div><!-- panel -->
</div>
</div><!-- row -->

</div>
</div>



	<%@include file="footer.jsp"%>
</div>

<!-- Jquery Validator -->
<script type="text/javascript" src="${js}/jquery.validate.js"></script>
<!-- Data Table Plugin -->
<script type="text/javascript" src="${js}/jquery.dataTables.js"></script>
<script type="text/javascript" src="${js}/dataTables.bootstrap.js"></script>
<!-- boot box -->
<script type="text/javascript" src="${js}/bootbox.min.js"></script>
<script type="text/javascript" src="${js}/myapp.js"></script>



</body>
</html>

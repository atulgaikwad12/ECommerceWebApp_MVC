<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
<div class="banner" id="home">
		<!-- header -->
		<div class="banner-top">
			<div class="well" style="float:right" id="register">
					<a href="${contextRoot}/register" class="btn btn-primary">Sign up</a>
			</div>
			<div class="well" style="float:right" id="login">
					<a href="${contextRoot}/login" class="btn btn-success">Login</a>
			</div>
			<div class="clearfix"></div>
		</div>
		
			<%@include file="navbar.jsp"%>
	
</body>
</html>
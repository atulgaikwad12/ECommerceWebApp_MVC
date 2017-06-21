    <%@taglib prefix="security" uri="http://www.springframework.org/security/tags"  %>
    <div class="banner" id="home">
		<!-- header -->
		<div class="banner-top">
		    <security:authorize access="isAnonymous()">
			<div class="btn-group btn-group-sm" style="float:right" role="group" aria-label="">
			<!-- <a href="${contextRoot}/" ><span class="glyphicon glyphicon-shopping-cart"></span></a>-->
			<a href="${contextRoot}/login" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-user
    glyphicon "> Login</span></a>
			<a href="${contextRoot}/register" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-globe"> Sign up</span></a>
			</div>
			</security:authorize>
			<!-- Left side elements -->
			<div class="clearfix">
			<a class="btn btn-social-icon btn-twitter" href="https://twitter.com/atulanilgaikwad">
    			<span class="fa fa-twitter"></span> </a>
    			<a class="btn btn-social-icon btn-facebook" href="https://www.facebook.com/vwapofficial6/">
    			<span class="fa fa-facebook"></span> </a>
				<span class="glyphicon glyphicon-cutlery"></span>
				<span class="glyphicon glyphicon-earphone">9702313731</span>
					
			</div></div>
		<%@include file="navbar.jsp"%>
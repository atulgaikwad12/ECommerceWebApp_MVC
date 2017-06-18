<%@include file="flows/shared/flows-header.jsp"%>
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

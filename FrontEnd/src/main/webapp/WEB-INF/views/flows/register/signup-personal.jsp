<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../shared/flows-header.jsp"%>
		<!-- Page content -->
<div class="content">
<br><br><br>
<div class="container">

<div class="row">
<div class="col-md-offset-2 col-md-8" >
<div class="panel panel-primary" style="margin-top:20px;margin-bottom:20px;margin-left:10px;margin-right:10px;">
<div class="panel-heading">
<h4>Sign up -Personal Details</h4>
</div>
<div class="panel-body">
<!-- Form Elements -->
<sf:form class="form-horizontal" id="registerForm" 
method="POST" modelAttribute ="user">
<div class="form-group">
<label class="control-label col-md-4" for="firstname" >Enter First Name:
</label>
<div class="col-md-8">
<sf:input type="text" path="firstname" id="firstname" placeholder="First Name" class="form-control"/>
<sf:errors path="firstname" cssClass="help-block" element="em"></sf:errors>
</div>
</div><!-- form-group -->
<div class="form-group">
<label class="control-label col-md-4" for="lastname">Last Name:
</label>
<div class="col-md-8">
<sf:input type="text" path="lastname" id="lastname" placeholder="Last Name" class="form-control"/>
<sf:errors path="lastname" cssClass="help-block" element="em"></sf:errors>
</div>
</div><!-- form-group -->



<div class="form-group">
<label class="control-label col-md-4" for="contactnumber">Enter Contact Number:
</label>
<div class="col-md-8">
<sf:input type="number" path="contactnumber" id="contactnumber"  placeholder="91-0000000000" class="form-control"/>
<sf:errors path="contactnumber" cssClass="help-block" element="em"></sf:errors>
</div>
</div><!-- form-group -->
<div class="form-group">
<label class="control-label col-md-4" for="email">Enter Email id:
</label>
<div class="col-md-8">
<sf:input type="text" path="email" id="email"  placeholder="abc@yz.com" class="form-control" />
<sf:errors path="email" cssClass="help-block" element="em"></sf:errors>

</div>
</div><!-- form-group -->
<div class="form-group">
<label class="control-label col-md-4" for="password">Create Password:
</label>
<div class="col-md-8">
<sf:input type="password" path="password" id="password"  placeholder="xxxxxxxxxx" class="form-control"/>
<sf:errors path="password" cssClass="help-block" element="em"></sf:errors>

</div>
</div>
<div class="form-group">
<label class="control-label col-md-4" for="confirmPassword">Confirm Password:
</label>
<div class="col-md-8">
<sf:input type="password" path="confirmPassword" id="confirmPassword"  placeholder="Retype password" class="form-control"/>
<sf:errors path="confirmPassword" cssClass="help-block" element="em"></sf:errors>

</div>
</div>
<!--User Selecting role -->
<div class="form-group">
<label class="control-label col-md-4" for="role">Select Role:
</label>
<div class="col-md-8">
<label class="radio-inline">
<sf:radiobutton  path="role" value="USER" checked="checked" />USER
</label>
<label class="radio-inline">
<sf:radiobutton  path="role" value="SUPPLIER" />Supplier
</label>

 <sf:errors path="role" cssClass="help-block" element="em"/>
 
  </div>
</div><!-- form-group -->

<div class="form-group">
<div class="col-md-offset-4 col-md-8">
<button type="submit" name="_eventId_billing"id="submit" class="btn btn-primary">
Next - Billing <span class="glyphicon glyphicon-chevron-right"></span>
</button>
</div>
</div><!-- form-group -->

</sf:form>
</div>
</div><!-- panel -->
</div>
</div><!-- row -->

</div>
</div>
<%@include file="../shared/flows-footer.jsp"%>	
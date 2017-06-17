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
<h4>Sign up -Billing Details</h4>
</div>
<div class="panel-body">
<!-- Form Elements -->
<sf:form class="form-horizontal" id="billingForm" 
method="POST" modelAttribute ="billing">
<div class="form-group">
<label class="control-label col-md-4" for="addressLineOne">Address Line One:
</label>
<div class="col-md-8">
<sf:input type="text" path="addressLineOne" id="addressLineOne" placeholder="Room number,BLDG" class="form-control"/>
<sf:errors path="addressLineOne" cssClass="help-block" element="em"></sf:errors>
</div>
</div><!-- form-group -->
<div class="form-group">
<label class="control-label col-md-4" for="addressLineTwo">Address Line One:
</label>
<div class="col-md-8">
<sf:input type="text" path="addressLineTwo" id="addressLineTwo" placeholder="Streat Name,Land Mark" class="form-control"/>
<sf:errors path="addressLineTwo" cssClass="help-block" element="em"></sf:errors>
</div>
</div><!-- form-group -->



<div class="form-group">
<label class="control-label col-md-4" for="city">City :
</label>
<div class="col-md-8">
<sf:input type="text" path="city" id="city"  placeholder="Enter city name" class="form-control"/>
<sf:errors path="city" cssClass="help-block" element="em"></sf:errors>
</div>
</div><!-- form-group -->
<div class="form-group">
<label class="control-label col-md-4" for="postalCode">Postal Code:
</label>
<div class="col-md-8">
<sf:input type="text" path="postalCode" id="postalCode"  placeholder="xxxxxxx" class="form-control" />
<sf:errors path="postalCode" cssClass="help-block" element="em"></sf:errors>

</div>
</div><!-- form-group -->
<div class="form-group">
<label class="control-label col-md-4" for="state">State:
</label>
<div class="col-md-8">
<sf:input type="text" path="state" id="state"  placeholder="your state name" class="form-control"/>
<sf:errors path="state" cssClass="help-block" element="em"></sf:errors>

</div>
</div><!-- form-group -->
<div class="form-group">
<label class="control-label col-md-4" for="country">Country :
</label>
<div class="col-md-8">
<sf:input type="text" path="country" id="country"  placeholder="your country name" class="form-control"/>
<sf:errors path="country" cssClass="help-block" element="em"></sf:errors>

</div>
</div>

<div class="form-group">
<div class="col-md-offset-4 col-md-8">
<button type="submit" name="_eventId_personal" id="submit" class="btn btn-primary">
 <span class="glyphicon glyphicon-chevron-left">Previous - Personal </span>
</button>
<button type="submit" name="_eventId_confirm" id="submit" class="btn btn-success">
Next - Confirm <span class="glyphicon glyphicon-chevron-right"></span>
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
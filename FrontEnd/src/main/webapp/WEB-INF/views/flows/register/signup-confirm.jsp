<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../shared/flows-header.jsp"%>
<br><br><br>
<div class="row">
<div class="col-sm-6">
<div class="panel panel-primary">
<div class="panel-heading">
<h4>Personal Details</h4>
</div>
<div class="panel-body">
<!-- To display personal details -->
<div class="text-center">

<h2>${registerModel.user.firstname} ${registerModel.user.lastname}</h2>
<h3>Email: ${registerModel.user.email}</h3>
<h3>Contact Number: ${registerModel.user.contactnumber}</h3>
<h3>Role: ${registerModel.user.role}</h3>
</div>
</div>
<div class="panel-footer">
<!-- to edit details -->
<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary">Edit</a>
</div>
</div>
</div>
<div class="col-sm-6">
<div class="panel panel-primary">
<div class="panel-heading">
<h4>Billing Details</h4>
</div>
<div class="panel-body">

<!-- To display billing details -->
<div class="text-center">

<h3>${registerModel.billing.addressLineOne}</h3>
<h3> ${registerModel.billing.addressLineTwo}</h3>
<h3>City: ${registerModel.billing.city}</h3>
<h3>Country: ${registerModel.billing.country}</h3>
<h3>State: ${registerModel.billing.state}</h3>
<h3>Postal code: ${registerModel.billing.postalCode}</h3>
</div>

</div>
<div class="panel-footer">
<!-- to edit details -->
<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary">Edit</a>
</div>
</div>
</div>
</div><!-- row -->
<div class="row">
<div class="col-sm-4 col-sm-offset-4">
<div class="text-center">
<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-success">Confirm</a>
</div>
</div>
</div>
<%@include file="../shared/flows-footer.jsp"%>	
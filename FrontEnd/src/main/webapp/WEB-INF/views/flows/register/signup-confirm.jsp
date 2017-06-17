<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@include file="../shared/flows-header.jsp"%>
<div class="row">
<div class="col-sm-6">
<div class="panel panel-primary">
<div class="panel-heading">
<h4>Personal Details</h4>
</div>
<div class="panel-body">

<!-- To display personal details -->
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
<a href="${flowExecutionUrl}&_eventId_success" class="btn btn-success">Confirm</a>
</div>
</div>
</div>
<%@include file="../shared/flows-footer.jsp"%>	
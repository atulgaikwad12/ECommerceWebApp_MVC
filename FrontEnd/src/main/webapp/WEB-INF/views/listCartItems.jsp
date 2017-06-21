<div class="row">
	<c:if test="${not empty message}">
				<div class="col-xs-12">
					<div class="alert alert-success alert-dismissible">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						${message}
					</div>
				</div>
			</c:if>
		<div class="col-xs-12">
		<div class="container-fluid">
		<div class="table-responsive">
		
		<table id="cartListTable" class="table table-striped table-borderd">
		<thead>
		<tr>
		
		<th><font color="white">Cart Id</font></th>
		<th><font color="white">Product Id</font></th>
		<th><font color="white">Buying Price</font></th>
		<th><font color="white">Quantity</font></th>
		<th><font color="white">Total</font></th>
		<th></th>
		</tr>
		</thead>
		<tfoot>
		<tr>
		
		<th><font color="white">Cart Id</font></th>
		<th><font color="white">Product Id</font></th>
		<th><font color="white">Buying Price</font></th>
		<th><font color="white">Quantity</font></th>
		<th><font color="white">Total</font></th>
		<th></th>
		</tr>
		</tfoot>
		</table>
		
		</div>
		</div>
		
		</div>
		</div>
		<hr>
		<center><a href="${conextRoot}" class="btn btn-success">Check Out</a></center>
		
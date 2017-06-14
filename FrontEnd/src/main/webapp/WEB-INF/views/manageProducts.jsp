<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<style type="text/css">
.help-block{
color :red;
}
.adminDataTableImg{
width :50px;
height:50px;
}
.switch{
width :50px;
height:30px;
position:relative;
display:inline-block;
}
.switch input{
display : none;
}
.slider{
position:absolute;
top:0;
bottom:0;
right:0;
left:0;
cursor:pointer;
background-color: #ccc;
border-radius: 30px;
transition: .5s;

}
.slider:before{
position:absolute;
width :20px;
height:20px;
content: "";
bottom:5px;
left:5px;
background-color: #fff;
border-radius: 50%;
transition: .5s;

}
input:checked+.slider{
background-color: #1863E6;
}
input:checked+.slider:before{
transform: translateX(20px);
}
</style></head>
<body>
<div class="container">
<div class="row">
<c:if test="${not empty message}">
	<div class="col-xs-12">
	<div class="alert alert-success alert-dismissible">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	${message}
	</div>
	</div>
</c:if>

<div class="col-md-offset-2 col-md-8" >
<div class="panel panel-primary" style="margin-top:20px;margin-bottom:20px;margin-left:10px;margin-right:10px;">
<div class="panel-heading">
<h4>Product Management</h4>
</div>
<div class="panel-body">
<!-- Form Elements -->
<sf:form class="form-horizontal" modelAttribute="product" action="${contextRoot}/manage/products" 
method="POST" enctype="multipart/form-data">
<div class="form-group">
<label class="control-label col-md-4" for="name">Enter Product Name:
</label>
<div class="col-md-8">
<sf:input type="text" path="name" id="name" placeholder="Product Name" class="form-control"/>
<sf:errors path="name" cssClass="help-block" element="em"></sf:errors>
</div>
</div><!-- form-group -->
<div class="form-group">
<label class="control-label col-md-4" for="brand">Select Product Type:
</label>
<div class="col-md-8">
<sf:input type="text" path="brand" id="brand" placeholder="Veg / Non Veg" class="form-control"/>
<sf:errors path="brand" cssClass="help-block" element="em"></sf:errors>
</div>
</div><!-- form-group -->
<div class="form-group">
<label class="control-label col-md-4" for="description">Enter Product Description:
</label>
<div class="col-md-8">
<sf:textarea path="description" id="description" rows="4"  placeholder="Write something interesting about Product" class="form-control"/>
<sf:errors path="description" cssClass="help-block" element="em"></sf:errors>
</div>
<div class="form-group">
<label class="control-label col-md-4" for="catid">Select Product Category:
</label>
<div class="col-md-8">
<sf:select path="catid" id="catid"  class="form-control" items="${categories}" itemLabel="catname" itemValue="catid"/>
 <c:if test="${product.id == 0}">
 <div class="text-right">
 <br/>
 <button type="button" data-toggle="modal" data-target="#myCategoryModal" class="btn btn-warning btn-xs">Add Category</button>
</div>
 </c:if>
  </div>
</div><!-- form-group -->

<div class="form-group">
<label class="control-label col-md-4" for="unitprice">Enter Price of Product:
</label>
<div class="col-md-8">
<sf:input type="number" path="unitprice" id="unitprice"  placeholder="Product price in rupies ( &#8377 )" class="form-control"/>
<sf:errors path="unitprice" cssClass="help-block" element="em"></sf:errors>
</div>
</div><!-- form-group -->
<div class="form-group">
<label class="control-label col-md-4" for="quantity">Enter Quantity per serve:
</label>
<div class="col-md-8">
<sf:input type="number" path="quantity" id="quantity" maxlength="2" placeholder="Food Quantity per serve" class="form-control"/>
<sf:errors path="quantity" cssClass="help-block" element="em"></sf:errors>

</div>
</div><!-- form-group -->
<!-- For uploading image file -->
<div class="form-group">
<label class="control-label col-md-4" for="file">Select Image File:
</label>
<div class="col-md-8">
<sf:input type="file" path="file" id="file"  class="form-control" />
 <sf:errors path="file" cssClass="help-block" element="em"/>
 
  </div>
</div><!-- form-group -->

<div class="form-group">
<div class="col-md-offset-4 col-md-8">
<input type="submit" name="submit"  value="Submit" id="submit" class="btn btn-primary"/>
</div>
</div><!-- form-group -->
<sf:hidden path="id"/>
<sf:hidden path="code"/>
<sf:hidden path="purchases"/>
<sf:hidden path="spid"/>
<sf:hidden path="active"/>
<sf:hidden path="views"/>
</sf:form>
</div>
</div><!-- panel -->
</div>
</div><!-- row -->
<br><br><br><br>


<!-- For Admin -->
<div class="row">
<div class="col-xs-12">
<h3><font color="white">Available Products</font></h3>
<hr/>
</div>
<div class="col-xs-12">
<div style="overflow:auto">
<table id="adminProductsTable" class="table table-striped table-borderd">
		<thead>
		<tr>
		<th><font color="white">ID</font></th>
		<th>&#160;</th>
		<th><font color="white">Name</font></th>
		<th><font color="white">Type</font></th>
		<th><font color="white">Price</font></th>
		<th><font color="white">Quantity</font></th>
		<th><font color="white">Active</font></th>
		<th><font color="white">Edit</font></th>
		</tr>
		</thead>
		
		<tfoot>
		<tr>
	   <th><font color="white">ID</font></th>
		<th>&#160;</th>
		<th><font color="white">Name</font></th>
		<th><font color="white">Type</font></th>
		<th><font color="white">Price</font></th>
		<th><font color="white">Quantity</font></th>
		<th><font color="white">Active</font></th>
		<th><font color="white">Edit</font></th>
		</tr>
		</tfoot>
		</table>

</div>
</div>
</div>

<!-- Modal for adding category -->
<div class="modal fade" id="myCategoryModal" role="dialog" tabindex="-1" style="width:60%;margin-left:20%;margin-top:5%;">
	<div class="moodal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
				<span>&times;</span></button>
				<h4 class="modal-title">Add new category</h4>
				</div>
				<div class="modal-body">
				<!--category form  -->
				<sf:form modelAttribute="category" action="${contextRoot}/manage/category" 
				method="POST" class="form-horizontal" >
				<div class="form-group">
				<label for="cat_name" class="control-label col-md-4">Category Name</label>
				<div class="col-md-8">
				<sf:input type="text" path="catname" id="cat_name" class="form-control"/>
				</div>
				</div>
				<div class="form-group">
				<label for="cat_desc" class="control-label col-md-4">Category Description</label>
				<div class="col-md-8">
				<sf:textarea cols="" rows="5" path="catdesc" id="cat_desc" class="form-control"/>
				</div>
				</div>
				<div class="form-group">
				<div class="col-md-offset-4 col-md-8">
				<input type="submit" value="Add Category" class="btn btn-primary"/>
				</div>
				</div>
				</sf:form>
				</div>
			</div>
	</div>
</div>


</div><!-- container -->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div class="container">
<!-- BreadCrumb -->
<div class="row">
<div class="col-xs-12">
<ol class="breadcrumb">
<li><a href="${contextRoot}/home">Home</a></li>
<li><a href="${contextRoot}/show/all/products">Products</a></li>
<li class="active">${product.name}</li>
</ol></div>
</div><!-- row -->
    <div class="info">
<div class="row">
<!-- Product Img -->
<div class="col-xs-12 col-sm-4">
<div class="thumbnail">
<img  src="${images}/${product.code}.jpg" class="img img-responsive"/>
</div>
</div>

<!-- Product Desc -->
<div class="col-xs-12 col-sm-4" style="background-color:black;height:400px">
<h3><font color="#fa3d03">${product.name}</font></h3><hr>
<p><font color="white">${product.description}</font></p><hr>
<h4><font color="white">Price:<strong> &#8377;<font color="#fa3d03"> ${product.unitprice}</font> /-</strong></font></h4><hr>
<h6><font color="white">Quntity per Serve: <span class="round-tag">${product.quantity}</span></font></h6><hr>
<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success">
<span class="glyphicon glyphicon-shopping-cart"></span>Add To Cart</a>
<a href="${contextRoot}/show/all/products" class="btn btn-primary">Back</a>
</div>

</div><!-- row -->
</div><!-- info -->
</div><!--container  -->
</body>
</html>
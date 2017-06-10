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

<div class="row">
<!-- Product Img -->
<div class="col-xs-12 col-sm-4">
<div class="thumbnail">
<img  src="${images}/${product.pimg_url}" class="img img-responsive"/>
</div>
</div>

<!-- Product Desc -->
<div class="col-xs-12 col-sm-4">
<h3>${product.name}</h3><hr>
<p>${product.description}</p><hr>
<h4>Peice:<strong> &#8377; ${product.unitprice} /-</strong></h4><hr>
<h6>Quntity per Serve: ${product.quantity}</h6><hr>
<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success">
<span class="glyphicon glyphicon-shopping-cart"></span>Add To Cart</a>
<a href="${contextRoot}/show/all/products" class="btn btn-primary">Back</a>
</div>

</div><!-- row -->
</div><!--container  -->
</body>
</html>

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
<!-- Quatity wise display -->
<c:choose>
<c:when test="${product.quantity < 1}">
<h6><span style="color:red">Out of stock</span></h6>
</c:when>
<c:otherwise>
<h6><font color="white">Quntity per Serve: <span class="round-tag">${product.quantity}</span></font></h6>
</c:otherwise>
</c:choose>
<hr>
<security:authorize access="hasAuthority('USER')">	
<c:choose>
<c:when test="${product.quantity < 1}">
<a href="javascript:void(0)" class="btn btn-success disabled"><strike>
<span class="glyphicon glyphicon-shopping-cart"></span>Add To Cart</strike></a>
</c:when>
<c:otherwise>
<a href="${contextRoot}/cart/add/${product.id}/product/for/${userModel.id}" class="btn btn-success">
<span class="glyphicon glyphicon-shopping-cart"></span>Add To Cart</a>
</c:otherwise>
</c:choose>
</security:authorize>
<security:authorize access="hasAuthority('ADMIN')">
<a href="${contextRoot}/manage/${product.id}/product" class="btn btn-warning">
<span class="glyphicon glyphicon-pencil"></span>Edit</a>
</security:authorize>
<a href="${contextRoot}/show/all/products" class="btn btn-primary">Back</a>
</div>

</div><!-- row -->
</div><!-- info -->
</div><!--container  -->

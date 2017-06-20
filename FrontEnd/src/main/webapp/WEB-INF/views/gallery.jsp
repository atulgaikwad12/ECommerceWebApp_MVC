
<br><br><br><br>
	<!-- List Products -->
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
	<div class="col-md-3">
	<!-- Side Category bar -->
	<h3 class="tittle-w3 sub-head">Our Categories</h3>
				<ul class="list-unstyled">
	<c:forEach items="${categories}" var="category">
				<li><i class="fa fa-check" aria-hidden="true"></i><a href="${contextRoot}/show/category/${category.catid}/products">${category.catname}</a></li></c:forEach>
	</ul></div>
	<!-- For Products -->
	<div class="col-md-9">
	<!-- Adding breadcrumb -->
		<div class="row">
		 <div class="col-lg-12">
		<c:if test="${userClickAllProducts == true}">
		<script>
		window.categoryId = '';
		</script>
		<ol class="breadcrumb">
		<li><a href="${contextRoot}/main">Home</a></li>
		<li class="active">All Products</li>
		</ol>
		</c:if>
		
		
		<c:if test="${userClickCategoryProducts == true}">
		<script>
		window.categoryId = '${category.catid}';
		</script>
		<ol class="breadcrumb">
		<li><a href="${contextRoot}/main">Home</a></li>
		<li class="active">Category</li>
		<li class="active">${category.catname}</li>
		</ol>
		</c:if>
		
		</div>
		<div class="row">
		<div class="col-xs-12">
		<div class="container-fluid">
		<div class="table-responsive">
		
		<table id="productListTable" class="table table-striped table-borderd">
		<thead>
		<tr>
		<th></th>
		<th><font color="white">Name</font></th>
		<th><font color="white">Type</font></th>
		<th><font color="white">Price</font></th>
		<th><font color="white">Quantity</font></th>
		<th><font color="white">Purchases</font></th>
		<th><font color="white">Views</font></th>
		<th></th>
		</tr>
		</thead>
		<tfoot>
		<tr>
		<th></th>
		<th><font color="white">Name</font></th>
		<th><font color="white">Type</font></th>
		<th><font color="white">Price</font></th>
		<th><font color="white">Quantity</font></th>
		<th><font color="white">Purchases</font></th>
		<th><font color="white">Views</font></th>
		<th></th>
		</tr>
		</tfoot>
		</table>
		
		</div>
		</div>
		
		</div>
		</div>
		
		
		
		
		</div>
	</div>
	</div></div>
	</div>
	
	<!-- 
	<div class="container" style="margin-top:50px;">
	<div class="row">

    	<div class="col-xs-12 col-sm-6 col-md-3">
            <div class="col-item">
                <div class="post-img-content">
                    <img src="http://placehold.it/350x260" class="img-responsive" />
                    <span class="post-title">
                        <b>Perfumes</b><br>
                        <b>Clássico</b>
                    </span>
                    <span class="round-tag">-15%</span>
                </div>
                <div class="info">
                    <div class="row">
                        <div class="price col-md-6">
                            <h5> Sample Product</h5>
                            <h5 class="price-text-color">19.99/-</h5>
                        </div>
                        <div class="rating hidden-sm col-md-6">
                            <h5 class="price-text-color">14.99/-</h5>
                        </div>
                    </div>
                    <div class="separator clear-left">
                        <p class="btn-add">
                            <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a></p>
                        <p class="btn-details">
                            <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a></p>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
            </div>
        </div>
            
        <div class="col-xs-12 col-sm-6 col-md-3">
        
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
            
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
           
        </div>
	</div>
</div>
	 -->
	
	
	
	
	
	
	
	
	
	

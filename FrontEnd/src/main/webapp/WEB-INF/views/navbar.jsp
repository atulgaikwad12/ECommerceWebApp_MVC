
<div class="w3_navigation">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="w3_navigation_pos">
						<h1><a href="${contextRoot}/main"><span>D</span>elish <span>F</span>ood</a></h1>
					</div>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--miranda">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item" id="home"><a href="${contextRoot}/main" class="menu__link">Home</a></li>
							<li class="menu__item" id="about"><a href="${contextRoot}/about" class=" menu__link">About</a></li>
							<!-- <li class="menu__item" id="service"><a href="${contextRoot}/service" class=" menu__link">Services</a></li> -->
							<li class="menu__item" id="allproducts"><a href="${contextRoot}/show/all/products" class=" menu__link">Place Order</a></li>
							<!-- <li class="menu__item" id="book"><a href="${contextRoot}/book" class=" menu__link">Book Table</a></li>-->
							<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Activities<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li id="service"><a href="${contextRoot}/service" >Services</a></li>
							<li id="categories"><a href="${contextRoot}/categories">Categories </a></li>
							<security:authorize access="hasAuthority('ADMIN')">	
								<li id="manageProducts"><a href="${contextRoot}/manage/products">Manage Products</a></li>
							</security:authorize>
						</ul>
					</li>
							<li class="menu__item" id="contact"><a href="${contextRoot}/contact" class=" menu__link">Contact</a></li>
						  <security:authorize access="isAuthenticated()">	
							<li class="dropdown menu__item" >
			<!--  <a href="javascript:void(0)"
			class="btn btn-default dropdown-toggle"
			id="dropdownMenu1"
			data-toggle="drpdown">
		
			<span class="caret"></span></a>-->
			<a href="#" class="dropdown-toggle menu__link"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${userModel.fullname}<span class="caret"></span></a>
			<ul class="dropdown-menu">
			 <security:authorize access="hasAuthority('USER')">	
				<li>
				<a href="${contextRoot}/cart">
				<span class="glyphicon glyphicon-shopping-cart"></span>
				<span class="badge">${userModel.cart.cartLines}</span>
				- &#8377;  ${userModel.cart.grandTotal}
				</a>
				</li>
			</security:authorize>
			<li class="divider" role="separator"></li>
			<li>
			<a href="${contextRoot}/perform-logout"> Logout </a>
			</li>
			</ul>
			</li>
			</security:authorize>
	
						</ul>
					</nav>
				</div>
			</nav>	
			<div class="clearfix"></div>
	</div>
	

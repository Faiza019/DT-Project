<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<title>New Fashions a Flat Ecommerce Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='http://fonts.googleapis.com/css?family=Raleway:400,200,600,800,700,500,300,100,900'/>" rel='stylesheet' type='text/css'>
<link href="<c:url value='http://fonts.googleapis.com/css?family=Arimo:400,700,700italic'/>" rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/component.css"/>" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Fashions Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" 
		/>
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/js/simpleCart.min.js"/>"></script>
<!-- start menu -->
<link href="<c:url value="/resources/css/megamenu.css"/>" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<c:url value="/resources/js/megamenu.js"/>"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- start menu -->

<!--header-->
<div class="header">
	 <div class="container">
	     <div class="main-header">
			  <div class="carting">
				 <ul><li><a href="loginPage"> LOGIN</a></li></ul>
				  <ul><li><a href="register"> REGISTER</a></li></ul>
				 </div>
			 <div class="logo">
				 <h3><a href="index.html">NEW FASHIONS</a></h3>
			  </div>			  
			 <%-- <div class="box_1">				 
				 <a href="cart.html"><h3>Cart: <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)<img src="<c:url value="/resources/images/cart.png"/>" alt=""/></h3></a>
				 <p><a href="javascript:;" class="simpleCart_empty">empty cart</a></p>
			 
			 </div> --%>
			 
			 <div class="clearfix"></div>
		 </div>
				
				<!-- start header menu -->
				 <c:if test="${pageContext.request.userPrincipal.name != null}">
<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
<a href="<c:url value="/" />">Cart</a>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
<a href="<c:url value="/admin" />">View Inventory</a>
<a href="<c:url value="/" />">View Customer</a>
</c:if>
<a>Hello, ${pageContext.request.userPrincipal.name}</a>
<a href="<c:url value="/j_spring_security_logout" />">Sign Out</a>
</c:if>
		<ul class="megamenu skyblue">
			<li class="active grid"><a class="color1" href="index.html">Home</a></li>
			<li class="grid"><a href="#">Women</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="products.html">new arrivals</a></li>
									<li><a href="products.html">men</a></li>
									<li><a href="products.html">women</a></li>
									<li><a href="products.html">accessories</a></li>
									<li><a href="products.html">kids</a></li>
									<li><a href="products.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="products.html">trends</a></li>
									<li><a href="products.html">sale</a></li>
									<li><a href="products.html">style videos</a></li>
									<li><a href="products.html">accessories</a></li>
									<li><a href="products.html">kids</a></li>
									<li><a href="products.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Products</h4>
								<ul>
									<li><a href="products.html">trends</a></li>
									<li><a href="products.html">sale</a></li>
									<li><a href="products.html">style videos</a></li>
									<li><a href="products.html">accessories</a></li>
									<li><a href="products.html">kids</a></li>
									<li><a href="products.html">style videos</a></li>
								</ul>	
							</div>												
						</div>						
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="products.html">tremds</a></li>
									<li><a href="products.html">sale</a></li>
									<li><a href="products.html">style videos</a></li>
									<li><a href="products.html">accessories</a></li>
									<li><a href="products.html">kids</a></li>
									<li><a href="products.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="products.html">new arrivals</a></li>
									<li><a href="products.html">men</a></li>
									<li><a href="products.html">women</a></li>
									<li><a href="products.html">accessories</a></li>
									<li><a href="products.html">kids</a></li>
									<li><a href="products.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a href="#">MEN</a><div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="men.html">new arrivals</a></li>
									<li><a href="men.html">men</a></li>
									<li><a href="men.html">women</a></li>
									<li><a href="men.html">accessories</a></li>
									<li><a href="men.html">kids</a></li>
									<li><a href="men.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="men.html">trends</a></li>
									<li><a href="men.html">sale</a></li>
									<li><a href="men.html">style videos</a></li>
									<li><a href="men.html">accessories</a></li>
									<li><a href="men.html">kids</a></li>
									<li><a href="men.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Products</h4>
								<ul>
									<li><a href="men.html">trends</a></li>
									<li><a href="men.html">sale</a></li>
									<li><a href="men.html">style videos</a></li>
									<li><a href="men.html">accessories</a></li>
									<li><a href="men.html">kids</a></li>
									<li><a href="men.html">style videos</a></li>
								</ul>	
							</div>												
						</div>						
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="men.html">trends</a></li>
									<li><a href="men.html">sale</a></li>
									<li><a href="men.html">style videos</a></li>
									<li><a href="men.html">accessories</a></li>
									<li><a href="men.html">kids</a></li>
									<li><a href="men.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="men.html">new arrivals</a></li>
									<li><a href="men.html">men</a></li>
									<li><a href="men.html">women</a></li>
									<li><a href="men.html">accessories</a></li>
									<li><a href="men.html">kids</a></li>
									<li><a href="men.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
			<li class="grid"><a href="about.html">ABOUT US</a></li>
			 <li class="grid"><a href="blog.html">BLOG</a></li>				
				<li><a href="#">SHOP ONLINE</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Products</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>												
						</div>						
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>			
				
				</ul> 			 
			  <div class="clearfix"></div>			   	
	 </div>
		<!--  <div class="caption">
		 <h1>FASHION AND CREATIVITY</h1>	 
		 <p>Sed dapibus est a lorem dictum, id dignissim lacus fermentum. Nulla ut nibh in libero maximus pretium
		 Nunc vulputate vel tellus ac elementum. Duis nec tincidunt dolor, ac dictum eros.</p>
	     </div> -->
</div>

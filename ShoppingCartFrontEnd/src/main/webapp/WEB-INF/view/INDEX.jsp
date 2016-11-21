<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>New Fashions a Flat Ecommerce Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/resources/css/style1.css"/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/resources/css/zerogrid.css"/>" rel="stylesheet" type="text/css" media="all" />

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
<spring:url value="/resources/menu.css" var="menuCSS" /> 
 <link href="${menuCSS}" rel="stylesheet" /> 
 

<style>

#head{
color:blue
}
/* Main */
#menu {
	width: 100%;
	margin: 0;
	padding: 10px 0 0 0;
	list-style: none;
	background-color: #444;
	background-image: linear-gradient(#444,#111);
	border-radius: 50px;
	box-shadow: 0 2px 1px #9c9c9c;
}

#menu li {
	float: left;
	padding: 0 0 10px 0;
	position: relative;
}

#menu a {
	float: left;
	height: 25px;
	padding: 0 25px;
	color: #ffffff;
	text-transform: uppercase;
	font: bold 12px/25px Arial, Helvetica;
	text-decoration: none;
	text-shadow: 0 1px 0 #ffffff;
}

#menu li:hover>a {
	color: #fafafa;
}

* html #menu li a:hover { /* IE6 */
	color: #fafafa;
}

#menu li:hover>ul {
	display: block;
}

/* Sub-menu */
#menu ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: none;
	position: absolute;
	top: 35px;
	left: 0;
	z-index: 99999;
	background-color: #fa558f;
	background-image: linear-gradient(#fa558f);
	-moz-border-radius: 5px;
	border-radius: 5px;
}

#menu ul li {
	float: none;
	margin: 0;
	padding: 0;
	display: block;
	box-shadow: 0 1px 0 #111111, 0 2px 0 #777777;
}

#menu ul li:last-child {
	box-shadow: none;
}

#menu ul a {
	padding: 10px;
	height: auto;
	line-height: 1;
	display: block;
	white-space: nowrap;
	float: none;
	text-transform: none;
}

* html #menu ul a { /* IE6 */
	height: 10px;
	width: 150px;
}

*:first-child+html #menu ul a { /* IE7 */
	height: 10px;
	width: 150px;
}

#menu ul a:hover {
	background-color: #fa558f;
	background-image: linear-gradient(#fa558f);
}

#menu ul li:first-child a {
	border-radius: 5px 5px 0 0;
}

#menu ul li:first-child a:after {
	content: '';
	position: absolute;
	left: 30px;
	top: -8px;
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-bottom: 8px solid #444;
}

#menu ul li:first-child a:hover:after {
	border-bottom-color: #fa558f;
}

#menu ul li:last-child a {
	border-radius: 0 0 5px 5px;
}

/* Clear floated elements */
#menu:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0;
}



* html #menu {
	zoom: 1;
} /* IE6 */
*:first-child+html #menu {
	zoom: 1;
} /* IE7 */
</style>
<span style="color:#80BFFF">
</span>




	




</head>
<body>
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
			
				<ul id="menu">
		<c:forEach items="${categoryList}" var="category">
			<li><a href=${category.name}>${category.name}</a>
				<ul>
					<c:forEach items="${category.products}" var="product">

						<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

					</c:forEach>

				</ul></li>
		</c:forEach>

	</ul>
	
	
	
	<c:if test="${pageContext.request.userPrincipal.name != null}">
<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
<div class="linking">

</c:if>
<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
<div class="linking">
<a href="<c:url value="/admin" />">View Inventory</a>
<%-- <a href="<c:url value="/" />">View Customer</a> --%>
</c:if>
<a>Hello, ${pageContext.request.userPrincipal.name}</a>
<a href="<c:url value="/j_spring_security_logout" />">Sign Out</a>
</div>
</c:if>
	
	<hr color="red" size="5">
	<br><br><br>
	<div>
		<c:if test="${!empty selectedProduct.name}">
			<br>
			<br>
			<br>
			<br>
			
			<table>
				<tr>
					<th align="left" width="80">Product ID</th>
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Product Description</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="200">Product Category</th>
					<th align="left" width="200">Product Supplier</th>
					<th align="left" width="200">Image</th>
				</tr>
				<tr>
					<td align="left" >${selectedProduct.id}</td>
					<td align="left" >${selectedProduct.name}</td>
					<td align="left" >${selectedProduct.description}</td>
					<td align="left" >${selectedProduct.price}</td>
					<td align="left" >${selectedProduct.category.name}</td>
					<td align="left" >${selectedProduct.supplier.name}</td>
					<td>
                      	<img alt="" src="<c:url value="/resources/images/${selectedProduct.id}.png"/>" /> 
                      
               
                 		
                </td>
                
                 <td>
               <!--  <a class="acount-btn" href="Buy">Buy</a> -->
               
               <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
               <br>
                      <br>
                      <br>
                        <br>
                          <br>
                            <br>
                              <br>
                 <%-- <a class="acount-btn" href="<c:url value='Buy/${selectedProduct.name}' />">Buy</a>
                 
								<a  class="acount-btn" href="<c:url value='myCart' />">Open Cart
							</a>

		<a  class="acount-btn" href="<c:url value='addToCart/${selectedProduct.id}' />">Add to Cart
							</a>  --%>
							
							</c:if>
							</td>
							
				
	
				</tr>
                
                
                
		
				
				
						
			</table>
		</c:if>
		

		
	</div>
			
		<ul class="megamenu skyblue">
			 <!-- <li class="active grid"><a class="color1" href="index.html">Home</a></li> -->
			<!-- <li class="grid"><a href="#">Women</a>  -->
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>shop</h4>
								<ul>
									<li><a href="products.html">new arrivals</a></li>
									<li><a href="products.html">men</a></li>
									<li><a href="products.html">women</a></li>
									<li><a href="products.html">accessories</a></li>
									<li><a href="products.html">kids</a></li>
									<li><a href="products.html">brands</a></li>
								</ul>	 -->
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>help</h4>
								<ul>
									<li><a href="products.html">trends</a></li>
									<li><a href="products.html">sale</a></li>
									<li><a href="products.html">style videos</a></li>
									<li><a href="products.html">accessories</a></li>
									<li><a href="products.html">kids</a></li>
									<li><a href="products.html">style videos</a></li>
								</ul>	 -->
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>Products</h4> -->
								<!-- <ul>
									<li><a href="products.html">trends</a></li>
									<li><a href="products.html">sale</a></li>
									<li><a href="products.html">style videos</a></li>
									<li><a href="products.html">accessories</a></li>
									<li><a href="products.html">kids</a></li>
									<li><a href="products.html">style videos</a></li>
								</ul>	 -->
							</div>												
						</div>						
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>my company</h4>
								<ul>
									<li><a href="products.html">tremds</a></li>
									<li><a href="products.html">sale</a></li>
									<li><a href="products.html">style videos</a></li>
									<li><a href="products.html">accessories</a></li>
									<li><a href="products.html">kids</a></li>
									<li><a href="products.html">style videos</a></li>
								</ul>	 -->
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>popular</h4>
								<ul>
									<li><a href="products.html">new arrivals</a></li>
									<li><a href="products.html">men</a></li>
									<li><a href="products.html">women</a></li>
									<li><a href="products.html">accessories</a></li>
									<li><a href="products.html">kids</a></li>
									<li><a href="products.html">style videos</a></li>
								</ul>	 -->
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
				<!-- <li><a href="#">MEN</a><div class="megapanel"> -->
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>shop</h4>
								<ul>
									<li><a href="men.html">new arrivals</a></li>
									<li><a href="men.html">men</a></li>
									<li><a href="men.html">women</a></li>
									<li><a href="men.html">accessories</a></li>
									<li><a href="men.html">kids</a></li>
									<li><a href="men.html">brands</a></li>
								</ul>	 -->
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>help</h4>
								<ul>
									<li><a href="men.html">trends</a></li>
									<li><a href="men.html">sale</a></li>
									<li><a href="men.html">style videos</a></li>
									<li><a href="men.html">accessories</a></li>
									<li><a href="men.html">kids</a></li>
									<li><a href="men.html">style videos</a></li>
								</ul>	 -->
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>Products</h4>
								<ul>
									<li><a href="men.html">trends</a></li>
									<li><a href="men.html">sale</a></li>
									<li><a href="men.html">style videos</a></li>
									<li><a href="men.html">accessories</a></li>
									<li><a href="men.html">kids</a></li>
									<li><a href="men.html">style videos</a></li>
								</ul>	 -->
							</div>												
						</div>						
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>my company</h4>
								<ul>
									<li><a href="men.html">trends</a></li>
									<li><a href="men.html">sale</a></li>
									<li><a href="men.html">style videos</a></li>
									<li><a href="men.html">accessories</a></li>
									<li><a href="men.html">kids</a></li>
									<li><a href="men.html">style videos</a></li>
								</ul>	 -->
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>popular</h4>
								<ul>
									<li><a href="men.html">new arrivals</a></li>
									<li><a href="men.html">men</a></li>
									<li><a href="men.html">women</a></li>
									<li><a href="men.html">accessories</a></li>
									<li><a href="men.html">kids</a></li>
									<li><a href="men.html">style videos</a></li>
								</ul>	 -->
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
			<!-- <li class="grid"><a href="about.html">ABOUT US</a></li>
			 <li class="grid"><a href="blog.html">BLOG</a></li>	 -->			
				<!-- <li><a href="#">SHOP ONLINE</a> -->
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>shop</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">brands</a></li>
								</ul>	 -->
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>help</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	 -->
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>Products</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	 -->
							</div>												
						</div>						
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>my company</h4>
								<ul>
									<li><a href="shop.html">trends</a></li>
									<li><a href="shop.html">sale</a></li>
									<li><a href="shop.html">style videos</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	 -->
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<!-- <h4>popular</h4>
								<ul>
									<li><a href="shop.html">new arrivals</a></li>
									<li><a href="shop.html">men</a></li>
									<li><a href="shop.html">women</a></li>
									<li><a href="shop.html">accessories</a></li>
									<li><a href="shop.html">kids</a></li>
									<li><a href="shop.html">style videos</a></li>
								</ul>	 -->
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
	
	 
	 
	
	
		 <div class="caption">

		                       <h1>FASHION AND CREATIVITY</h1>	 
	<!-- 	 <p>A ONE STOP SHOP
		</p> 
 -->	     </div>
</div>






<!--header-->

	
<!-- start header menu -->
				
<%@include file="/WEB-INF/view/FetchProduct.jsp"%>
<div class="categoires">
	 <div class="container">
		 <a href="#"><div class="col-md-4 sections fashion-grid-a">
			 <h4>Fashion</h4>
			 <p>dignissim</p>			 					
		 </div></a>
		 <a href="#"><div class="col-md-4 sections fashion-grid-b">
			 <h4>Beauty</h4>
			 <p>fermentum</p>			 					
		 </div></a>
		 <a href="#"><div class="col-md-4 sections fashion-grid-c">
			 <h4>Creativity</h4>
			 <p>vulputate</p>				
		 </div></a>
	 </div>
</div>
<!---->
<div class="features" id="features">
	 <div class="container">
		 <div class="tabs-box">
			<!-- <ul class="tabs-menu">
				<li><a href="#tab1">Best seller</a></li>
				<li><a href="#tab2">Popular</a></li>
				<li><a href="#tab3">New Arrivals</a></li>
			</ul> -->
			<div class="clearfix"> </div>
		 <div class="tab-grids">
			 <div id="tab1" class="tab-grid1">			   				  
				 <a href="index"><div class="product-grid">					  
						<div class="more-product-info"><span>VIEW</span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">						   
							<img src="<c:url value="/resources/images/bs1.jpg"/>" class="img-responsive" alt=""/>
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<!-- <a href="INDEX" class="btns">QUICK VIEW</a> -->
							</h4>
							</div>
						</div></a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>BELLE B&W</h4>
								<!-- <span class="item_price">$187.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD"> -->
							</div>													
							<div class="clearfix"> </div>
						</div>
					</div>			
					
					 <a href="index"><div class="product-grid">
						 <div class="more-product-info"></div>	
						 <div class="more-product-info"><span>VIEW</span></div>						
						 <div class="product-img b-link-stripe b-animate-go  thickbox">
						 
							<img src="<c:url value="/resources/images/bs2.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<!-- <button class="btns">ORDER NOW</button> -->
							</h4>
							</div>
						 </div>	</a>					
						 <div class="product-info simpleCart_shelfItem">
							 <div class="product-info-cust">
								<h4>CLUBYORK</h4>
								<!-- <span class="item_price">$187.95</span> -->
								<!-- <input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	 -->
							 </div>							 				
							 <div class="clearfix"> </div>
						 </div>
					 </div>
					
					 <a href="index"><div class="product-grid">
						<div class="more-product-info"></div>	
						<div class="more-product-info"><span>VIEW</span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/bs3.jpg"/>" class="img-responsive" alt=""/>
						
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<!-- <button class="btns">ORDER NOW</button> -->
							</h4>
							</div>
						</div>	</a>					
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>ROADSTER</h4>
								<!-- <span class="item_price">$220.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	 -->
							</div>												
							<div class="clearfix"> </div>
						</div>
					 </div>
					
					 <a href="index"><div class="product-grid">
						<div class="more-product-info"></div>
						<div class="more-product-info"><span>VIEW</span></div>							
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/bs4.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<!-- <button class="btns">ORDER NOW</button> -->
							</h4>
							</div>
						</div></a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>BLACKFLPS</h4>
								<!-- <span class="item_price">$150.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	 -->
							</div>												
							<div class="clearfix"> </div>
						</div>
					 </div>	
					
					 <a href="index"><div class="product-grid">
						<div class="more-product-info"><span>NEW</span></div>
						<div class="more-product-info"><span>VIEW</span></div>							
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/bs5.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<!-- <button class="btns">ORDER NOW</button> -->
							</h4>
							</div>
						</div>	</a>					
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>RED CHECKS</h4>
								<!-- <span class="item_price">$140.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD"> -->		
							</div>														
							<div class="clearfix"> </div>
						</div>
					 </div>
					
					 <a href="index"><div class="product-grid">
						<div class="more-product-info"></div>
						<div class="more-product-info"><span>VIEW</span></div>							
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/bs6.jpg"/>" class="img-responsive" alt=""/>
						
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<!-- <button class="btns">ORDER NOW</button> -->
							</h4>
							</div>
						</div></a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>NEW LOOK</h4>
								<!-- <span class="item_price">$100.00</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	 -->
							</div>												
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"></div>
			 </div>				
				
			<%--  <div id="tab2" class="tab-grid2">
				 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/c1.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div></a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>NEWLOOK</h4>
								<span class="item_price">$187.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>													
							<div class="clearfix"> </div>
						</div>
					</div>
					
					 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/c2.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div>	</a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>NEWLOOK</h4>
								<span class="item_price">$120.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>												
							<div class="clearfix"> </div>
						</div>
					</div>
					
					 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"><span>NEW</span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/c3.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div></a>							
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>NEWLOOK</h4>
								<span class="item_price">$187.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>													
							<div class="clearfix"> </div>
						</div>
					</div>
					
					 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"><span>NEW</span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/c4.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div>	</a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>NEWLOOK</h4>
								<span class="item_price">$187.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>														
							<div class="clearfix"> </div>
						</div>
					 </div>
					
					 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/c5.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div></a>							
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>NEWLOOK</h4>
								<span class="item_price">$187.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>													
							<div class="clearfix"> </div>
						</div>
					</div>
					
					 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/c6.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div></a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>NEWLOOK</h4>
								<span class="item_price">$180.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>													
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"></div>
			 </div>
		 
			 <div id="tab3" class="tab-grid3">
				  <a href="single.html"><div class="product-grid">
						<div class="more-product-info"></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/bs3.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div>	</a>					
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>ROADSTER</h4>
								<span class="item_price">$160.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>													
							<div class="clearfix"> </div>
						</div>
					 </div>
					
					 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/bs5.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div>	</a>					
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>RED CHECKS</h4>
								<span class="item_price">$187.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>													
							<div class="clearfix"> </div>
						</div>
					</div>
					
					 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						
						<img src="<c:url value="/resources/images/c5.jpg"/>" class="img-responsive" alt=""/>
						
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div></a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>NEWLOOK</h4>
								<span class="item_price">$187.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">
							</div>														
							<div class="clearfix"> </div>
						</div>
					 </div>
					
					 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/c4.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div>	</a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>MANGO</h4>
								<span class="item_price">$187.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>												
							<div class="clearfix"> </div>
						</div>
					 </div>
					
					 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/c3.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div>	</a>					
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>SISLEY</h4>
								<span class="item_price">$187.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>												
							<div class="clearfix"> </div>
						</div>
					 </div>
					
					 <a href="single.html"><div class="product-grid">
						<div class="more-product-info"></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<c:url value="/resources/images/bs1.jpg"/>" class="img-responsive" alt=""/>
							
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns">ORDER NOW</button>
							</h4>
							</div>
						</div></a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>ROADSTER</h4>
								<span class="item_price">$187.95</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add" value="ADD">	
							</div>						 						
							<div class="clearfix"> </div>
						</div>
					</div>
				   <div class="clearfix"></div>					
			 </div> --%>
		 </div>				
		 </div>
			<!-- tabs-box -->
			<!-- Comman-js-files -->
			<script>
			$(document).ready(function() {
				$("#tab2").hide();
				$("#tab3").hide();
				$(".tabs-menu a").click(function(event){
					event.preventDefault();
					var tab=$(this).attr("href");
					$(".tab-grid1,.tab-grid2,.tab-grid3").not(tab).css("display","none");
					$(tab).fadeIn("slow");
				});
				$("ul.tabs-menu li a").click(function(){
					$(this).parent().addClass("active a");
					$(this).parent().siblings().removeClass("active a");
				});
			});
			</script>
			<!-- Comman-js-files -->
	 </div>
</div>
<!--fotter-->
<div class="fotter">
	 <div class="container">
	<div class="row">
	<footer class="zerogrid">
			<div class="col-1-3">
				<div class="wrap-col"> 
			
					<h4>Contact</h4>
					<div class="row">
						
					
						<h5>Name: Nick Roach</h5><br>
						<h5>e-mail:faaa11@gmail.com</h5><br>
						<h5>Phone Number: 9889889889</h5><br>
						<h5>Address: #44/A,Abcd Puram,Jayanagar 3rd Block,Bengaluru-560041</h5>
					</div>
				</div>
			</div>
			
			<div class="col-4-6">
				 <div class="wrap-col">
					<h4>Location</h4>
					<div class="wrap-map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7777.176840675615!2d77.58283260000005!3d12.93415379999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1474980124020" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
				</div>
			</div>
		  <!-- <form>
			 <input type="text" class="text" value="Name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name...';}">
			 <input type="text" class="text" value="Email..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email...';}">
			 <textarea onfocus="if(this.value == 'Message...') this.value='';" onblur="if(this.value == '') this.value='Message...';" >Message...</textarea>	
			 <div class="clearfix"></div>
			 <input type="submit" value="SUBMIT">
		 </form>
 -->
	 </div>
	 <!-- <div class="col-md-6 ftr-left">
		 <div class="ftr-list">
			 <ul>
				 <li><a href="#">Home</a></li>
				 <li><a href="about.html">About</a></li>
				 <li><a href="blog.html">Blog</a></li>
				 <li><a href="products.html">Top Seller</a></li>
				 <li><a href="shop.html">New Models</a></li>
				 <li><a href="404.html">Combos</a></li>
				 <li><a href="products.html">Collection</a></li>
				 <li><a href="contact">Contact</a></li>
			 </ul>
		 </div>
		 <div class="ftr-list2">
			 <ul>				 
				 <li><a href="#">Combos</a></li>
				 <li><a href="#">Trendy</a></li>
				 <li><a href="#">Fashion</a></li>
				 <li><a href="#">College</a></li>
				 <li><a href="#">Party</a></li>
				 <li><a href="#">Dress</a></li>
				 <li><a href="#">Kurtas & kurtis</a></li>
			 </ul>
		 </div> -->
		 <div class="clearfix"></div>
		 <h4>FOLLOW US</h4>
		 <div class="social-icons">
		 <a href="http://www.facebook.com"><span class="in"> </span></a>
		 <a href="http://www.youtube.com"><span class="you"> </span></a>
		 
		 <a href="http://www.twitter.com"><span class="twt"> </span></a>
		 <a href="http://www.facebook.com"><span class="fb"> </span></a>
		 </div>
	 </div>	 
	 <div class="clearfix"></div>
	 </div>
</div>



	<!-- <div class="copyright">
		<div class="wrapper">
			Copyright 2015 - <a href="http://www.zerotheme.com" target="_blank" rel="nofollow">
			<ul class="quick-link f-right">
				<li><a href="#">Privacy Policy</a></li>
				<li><a href="#">Terms of Use</a></li>
			</ul>
		</div>
	</div> -->
</footer>

<!--fotter//-->
 <div class="fotter-logo">
	 <div class="container">
	 <div class="ftr-logo"><h3><a href="index.html">NEW FASHIONS</a></h3></div>
	 <div class="ftr-info">
	 <p>&copy; 2015 All Rights Reseverd Design by <a href="http://w3layouts.com/">NIIT</a> </p>
	</div>
	 <div class="clearfix"></div>
	 </div>
</div> 
<!--fotter//-->

</body>
</html>
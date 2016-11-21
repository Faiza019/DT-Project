<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>New Fashions a Flat Ecommerce Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="<c:url value="/resources/css/style1.css"/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/resources/css/zerogrid.css"/>" rel="stylesheet" type="text/css" media="all" />
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
<spring:url value="/resources/menu.css" var="menuCSS" /> 
 <link href="${menuCSS}" rel="stylesheet" /> 
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Cart</title>
<style type="text/css">


.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fa558f;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
#bg {
  position: fixed; 
  top: -50%; 
  left: -50%; 
  width: 200%; 
  height: 200%;
}
#bg img {
  position: absolute; 
  top: 0; 
  left: 0; 
  right: 0; 
  bottom: 0; 
  margin: auto; 
  min-width: 50%;
  min-height: 50%;
}
</style>
</head>
<%-- <%-- <%@include file="Header.jsp" %> 
 
 <body background = "C:\Users\veena1\Desktop\proj\accessories.jpg">
 --%> 
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="INDEX">NEW FASHIONS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <%-- <li class="active"><a href="<c:url value="/resources/view/INDEX.jsp"/>">Home</a></li>
       
  
   <li><a href="buying"><i class="glyphicon glyphicon-lock" class="tele"> </i>Buy</a></li>
       --%>

     </ul> 
    </div>
  </div>
</nav>
 
 
 
	<br>
	<h3>Your purchase order</h3>
	
	<form action="" id="id">
		<table class="tg">
			<tr>
				
			<th width="120">Product Id</th>
				
				<th width="120">Product Name</th>
				<th width="60">Price</th>
				<th width="60">Images</th>
				
				
			</tr>
			
			
		
		<tr>	<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.price}</td>
				<td><img src="<c:url value="/resources/images/${product.id}.png" /> " alt="image"/>? </td>
			</tr>
		</table>
		  <h4><strong>Grand Total(in Rs.) </strong></h4>
                                    
                                    
       <h4><strong>${sum}</strong></h4>
		</form>
		
		
	<br>
	<br>
	<a href="<c:url value="/Shipping"/>"><h4>PAY NOW AND ENTER SHIPPING DETAILS.
	</h4></a>
	
	<h5><ul>
	<a href="<c:url value="/Thankyou"/>"><li> CREDIT CARD</li></a>
	<a href="<c:url value="/Thankyou"/>"><li>DEBIT CARD</li></a>
	<a href="<c:url value="/Thankyou"/>"><li> CASH ON DELIVERY</li></a>
	
	<br>
	
	
	<a href="<c:url value="/Tk"/>"><li> CANCEL TRANSACTION</li></a>
	</ul>
	</h3>
	<div>
<!-- <a href="/Logout"><li> LOG OUT</li></a> -->
<a class="acount-btn" href="<c:url value="/j_spring_security_logout" />">Sign Out</a>
 
 
 </div>
 
	<div class="footer transparent footer-inverse">

<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
</body>
</html>
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

	
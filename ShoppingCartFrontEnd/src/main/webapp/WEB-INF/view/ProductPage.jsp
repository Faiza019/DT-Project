<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
 <style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
	
	
}

.tg td {
	/* font-family: 'Lucida', Georgia, serif;
	background-color: #b29d85;
 */
	 font-family: Arial, sans-serif;
 font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	 background-color: #ffffff;
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
	background-color: #D8BFD8;
}

.tg .tg-4eph {
	background-color: #800080;
}


body{
background-color:#EE82EE;
}




</style>
</head>
<body>
<!--header-->
<div class="header">
	 <div class="container">
	     <div class="main-header">
			  <div class="carting">
			 <!--  <ul><li><a href="index"> HOME</a></li></ul>
				  <ul><li><a href="admin"> BACK</a></li></ul> -->
						</div>
			 <div class="logo">
				 <h3><a href="index.html">NEW FASHIONS</a></h3>
		
				  </div>	
				  <br>
				  <br>
				  <br>
				  <br>
				  <br>
				  <br>
				  <br>
				  <br>
				  <br>
				  <br>
				  <div class="link">
		<h1>Add a Product</h1></div>

	<%--  <form method="POST" action="uploadFile" enctype="multipart/form-data">
		<table>
			<tr>
				<td>File to upload: <input type="file" name="file">
				</td>
			</tr>
			<tr>
				<td>Name: <input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Upload"></td>
			</tr>
		</table>
	</form>  --%>

	<c:url var="addAction" value="/manageProduct/add"></c:url>

	<form:form action="${addAction}" commandName="product" enctype="multipart/form-data">
		<table>
			<tr>
				<td> <div class="link"><form:label path="id">
						<spring:message text="ID" />
					</form:label></td></div>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern=".{6,7}" required="true"
								title="id should contains 6 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
				<form:input path="id" hidden="true" />
				<td> <div class="link"><form:label path="name">
						<spring:message text="Name" />
					</form:label></td></div>
				<td><form:input path="name" required="true" /></td>
			</tr>


			<tr>
				<td> <div class="link"><form:label path="price">
						<spring:message text="Price" />
					</form:label></td></div>
				<td><form:input path="price" required="true" /></td>
			</tr>

			<tr>
				<td> <div class="link"><form:label path="description">
						<spring:message text="Description" />
					</form:label></td></div>
				<td><form:input path="description" required="true" /></td>
			</tr>

			<tr>
				<td> <div class="link"><form:label path="supplier">
						<spring:message text="Supplier" />
					</form:label></td></div>
				<td><form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td> <div class="link"><form:label path="category">
						<spring:message text="Category" />
					</form:label></td></div>
				<td><form:select path="category.name" items="${categoryList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
			<td> <div class="link">
			Upload Picture
			</td></div>
			<td>
			<form:input id="itemimage" path="itemImage" type="file" class="form:input-large" />
			</td>
			
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
				<br>
				<br>
				
						<input type="submit" value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name}">
					<br>
					<br>
					
						<input type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>


<div class="link">
	<h3>Product List</h3>
	</div>
	<c:if test="${!empty productList}">
		<table class="tg">
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="200">Product Description</th>
				<th width="80">Price</th>
				<th width="80">Product Category</th>
				<th width="80">Product Supplier</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
				<th width="200">Pictures</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td>${product.category.name}</td>
					<td>${product.supplier.name}</td>
					<td><a href="<c:url value='manageProduct/edit/${product.id}' />">Edit</a></td>
					<td><a href="<c:url value='manageProduct/remove/${product.id}' />">Delete</a></td>
					<td><img src="<c:url value="/resources/images/${product.id}.png" /> " alt="image"/>? </td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
	</div>
	</div>

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







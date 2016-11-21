<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<html>
<head>
<%@include file="/WEB-INF/view/Header.jsp"%>
<style>
 /* #wrap {
    width:900px;
    margin:0 auto;   
    /*temporary text styles below*/
    text-align:center;
    font-weight:bold;
    bgcolor:blue;
}  */
#bgp
{
align:center;
background-color:black;
}
</style>
</head>
<body>
<div class="bgp">
       <a href="manageCategory"><h2>MANAGE CATEGORIES</h2></a><br> &nbsp; &nbsp; 
          <a href="manageSupplier"><h2>MANAGE SUPPLIERS</h2></a><br> &nbsp; &nbsp;
             <a href="manageProduct"><h2>MANAGE PRODUCTS</h2></a><br> &nbsp; &nbsp;
             </div>
    
</body>
<%@include file="/WEB-INF/view/Footer.jsp" %>
</html>
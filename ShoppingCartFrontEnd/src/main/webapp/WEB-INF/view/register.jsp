<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/RegisterHeader.jsp"%>
<!--header//-->
<div class="registration-form">
	 <div class="container">
		 <ol class="breadcrumb">
		  <!-- <li><a href="INDEX">Home</a></li> -->
		  <li class="active">Registration</li>
		 </ol>
		 <h2>Registration</h2>
		 <div class="col-md-6 reg-form">
			 <div class="reg">
				 <p>Welcome, please enter the following to continue.</p>
				 <p>If you have previously registered with us, <a href="login">click here</a></p>
				  <form:form action="register" method="post" commandName="usersDetail">
				  
					 <ul>
						 <li class="text-info">First Name: </li>
						 <li><form:input type="text" path="userFullName" id="fullname" required="required" />
					</li>	
					 </ul>
					 <ul>
						 <li class="text-info">Last Name: </li>
						 <li><form:input type="text" path="username" id="lastname" required="required" />
						</li>
					 </ul>				 
					<ul>
						 <li class="text-info">Email: </li>
						 <li><form:input type="text" path="userEmail" id="email" required="required"/>
					</li>
					 </ul>
					 <ul>
						 <li class="text-info">Password: </li>
						 <li><form:input type="password" path="password" id="pwd" required="required"/>
						</li>
					 </ul>
					 <%-- <%-- <ul>
						 <li class="text-info">Re-enter Password:</li>
						 <li><form:input type="text" path="password" id="pwd" />
					</li>
					 </ul> --%> 
					 <ul>
						 <li class="text-info">Mobile Number:</li>
						 <li><form:input type="text" path="userPhone" id="ph" required="required"/>
						</li>
					 </ul>						
					 <input type="submit" value="Register Now">
					 <p class="click">By clicking this button, you agree to my modern style <a href="#">Pollicy Terms and Conditions</a> to Use</p> 
				 </form:form>
			 </div>
		 </div>
		 <div class="col-md-6 reg-right">
			  <!-- <h3>Completely Free Accouent</h3>
			 <p>Pellentesque neque leo, dictum sit amet accumsan non, dignissim ac mauris. Mauris rhoncus, lectus tincidunt tempus aliquam, odio 
			 libero tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
			 <h3 class="lorem">Lorem ipsum dolor sit amet elit.</h3>
			 <p>Tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p> -->
		 </div> 
		 <div class="clearfix"></div>		 
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
						
					<div class="abcd">
						<h5>Name: Nick Roach</h5><br>
						<h5>e-mail:faaa11@gmail.com</h5><br>
						<h5>Phone Number: 9889889889</h5><br>
						<h5>Address: #44/A,Abcd Puram,Jayanagar 3rd Block,Bengaluru-560041</h5>
						</div>
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
		 <div class="abcd">
		 
		 <h4>FOLLOW US</h4></div>
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
		
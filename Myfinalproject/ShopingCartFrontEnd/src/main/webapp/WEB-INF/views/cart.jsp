<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<body background="<c:url value="/resources/images/online-shopping-china.jpg" />">
<%@include file="Back.jsp" %>
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
	border-color:grey;
	color:red;
	background-color: lightgreen;
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
	border-color:grey;
	color: yellow
	background-color: yellow;
}

.tg .tg-4eph {
	background-color: yellow
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
<%-- <%@include file="Header.jsp" %> 
 --%> 
 
 
 </div>	<br>
	<h3>Cart List</h3>
	<c:if test="${!empty cartList}">
		<table class="tg">
			<tr>
				<th width="80">Cart ID</th>
				<th width="120">Product Name</th>
				<th width="120">Price</th>
				<th width="60">Quantity</th>
				<th width="60">Status</th>
				<th width="60">Total</th>
				<th width="60">UserID</th>
			</tr>
			<c:forEach items="${cartList}" var="cart">
				<tr>
					<td>${cart.id}</td>
					<td>${cart.productName}</td>
					<td>${cart.price}</td>
					<td>${cart.quantity}</td>
					<td>${cart.status}</td>
					<td>${cart.total}</td>
					<td>${cart.userID}</td>
				
					<td><a href="<c:url value='cart/remove/${cart.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<br>
	<c:if test="${!empty name}">
	</c:if>
	   <p><a href="<c:url value='/${name}'/>"style="color:green;">ADD MORE</a><p>
	 
	   <p><a href="<c:url value='pay'/>"style="color:red;">PROCEED</a><p>
	   
	   
	       <br>
	       <div>
	       <img src="<c:url value="/resources/images/online-shopping-china.jpg"/>" class="img-responsive" style="width:100%" alt="Image">    
<br>
	       </div>
   <footer class="container-fluid text-center">
   
					<p class="bg-danger"><h3>Add a Product more</h3> </p>
					<p class="bg-danger" > <h2>Buy the product easily</h2></p>
					
</footer>
   
	    
</body>
</html>
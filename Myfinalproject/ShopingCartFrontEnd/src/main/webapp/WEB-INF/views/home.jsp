<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<!-- <meta http-equiv="refresh" content="0; URL=./onLoad" /> -->
<spring:url value="resources/menu.css" var="menuCSS" />
<link href="${menuCSS}" rel="stylesheet" />
<title>Shopping Cart</title>

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
	background-color: #111;
	background-image: linear-gradient(#444, #111);
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
	color: #999;
	text-transform: uppercase;
	font: bold 12px/25px Arial, Helvetica;
	text-decoration: none;
	text-shadow: 0 1px 0 #000;
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
	background-color: #444;
	background-image: linear-gradient(#444, #111);
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
	background-color: #0186ba;
	background-image: linear-gradient(#04acec, #0186ba);
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
	border-bottom-color: #04acec;
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
</head>
<%@include file="Header.jsp" %>
<body background="<c:url value="/resources/images/vv.jpg" />" >


<div>
	<table width="100%">
		<tr>
			
			<td align="left">New User <a href="register">  Register here  </a>( ${cartSize} )</td>
			<td align="right"> <a href="myCart">  My Cart  </a>( ${cartSize} )</td>
			
			
		</tr>
	</table>
</div>

	<ul id="menu">
		<c:forEach items="${categoryList}" var="category">
			<li><a style="color:blue;" href=${category.name} > ${category.name}</a>
				<ul>
					<c:forEach items="${category.products}" var="product">
						<li><a style="background-color:#00FF00" href="<c:url value='product/get/${product.id}'/>">${product.name}</a></li>
					</c:forEach>
				</ul></li>
		</c:forEach>
	</ul>

</div>

<div>
		<c:if test="${!empty selectedProduct.name}">
			<table>
				<tr>
					<th align="left" width="80">Product ID</th>
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Product Description</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="200">Product Category</th>
					<th align="left" width="200">Product Supplier</th>
					<th align="left" width="200">Add to Cart</th>
					
				</tr>
				<tr>
					<td align="left" >${selectedProduct.id}</td>
					<td align="left" >${selectedProduct.name}</td>
					<td align="left" >${selectedProduct.description}</td>
					<td align="left" >${selectedProduct.price}</td>
					<td align="left" >${selectedProduct.category.name}</td>
					<td align="left" >${selectedProduct.supplier.name}</td>
					<td><a href="<c:url value='/cart/add/${selectedProduct.id}' />">add to cart</a></td>
         			
						</tr>
			</table>
		</c:if>
		
		 
    <!--    	<FORM action="home.jsp" method="post"> 
			<INPUT TYPE="SUBMIT" VALUE="Home"> 
		</FORM> -->

	<br>
	



<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
       <img src="<c:url value="/resources/images/lap4.jpg"/>"  alt="Image" width="360" height="200">
    </div>

    <div class="item">
       <img src="<c:url value="/resources/images/sss.jpg"/>"  alt="Image" width="360" height="200">
    </div>

    <div class="item">
       <img src="<c:url value="/resources/images/lap2.jpg"/>"  alt="Image" width="360" height="200">
    </div>

    <div class="item">
       <img src="<c:url value="/resources/images/lap3.jpg"/>"  alt="Image" width="360" height="200">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>







	<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">LAPTOPS</div>
        <div class="panel-body"><img src="<c:url value="/resources/images/IMG-20160623-WA0010.jpg"/>" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">We're changing the world with TECHNOLOGY</div>
     
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
            <div class="panel-heading">CONNECTORS  </div>
        <div class="panel-body"><img src="<c:url value="/resources/images/kuli.jpg"/>" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Technology makes a world NEW PLACE </div><br>
      </div>
    </div><br>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">TABLETS</div>
        <div class="panel-body"><img src="<c:url value="/resources/images/IMG-20160623-WA0011.jpg"/>" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Disconnecting our technology to reconnect with ourselves </div>
      </div>
    </div>
  </div>
</div><br>


<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
              <div class="panel-heading">HARDDISKS</div>
        <div class="panel-body"><img src="<c:url value="/resources/images/Lenovo-Tab-A10-3a_1466691716692.jpg"/>" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Sometimes memories crashed but HARDDISKS always remember you </div>
      
    </div></div><br>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">LAPTOP SAFER </div>
        <div class="panel-body"><img src="<c:url value="/resources/images/sony_xperia_tablet_z_g02_1466691707909.jpg"/>" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Technology is a useful servant BUT dangerous masters</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading"></div>       <div class="panel-body">
        TOOLS
</div><img src="<c:url value="/resources/images/services.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
        <div class="panel-footer">It is almost as easy to EREVATED by triumphs as by defeat </div>
      
    </div>
  </div>
</div></div><br>
<div class="Java">
  <div class="Products">
  
  <br>

    <h1>GET ONLINE TO A home</h1>
  </div><img src="<c:url value="/resources/images/backss.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
  </div>
  <br>
  <div class="row">
    
    <br>
  </div>
<img src="<c:url value="/resources/images/slider-img1.jpg"/>" class="img-responsive" style="width:100%" alt="Image">    
<br>
   
   
   
   
   
   
   
      
      <br>
      <br>
      <br>
   <footer class="container-fluid text-center">
   
					<p class="bg-danger"><h3>Number 1 Website for Selling instruments for the past 10 years</h3> </p>
					<p class="bg-danger" > <h2>Got the award for best seller</h2></p>
					
</footer>
   
</body>
</html>
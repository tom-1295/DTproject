<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<%@include file="Header.jsp" %> 
<body background="<c:url value="/resources/images/image(3).jpg" />">


<div class="container">
	<div class="row">
		<div class="col-sm-4">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
				</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<c:url value="/resources/images/IMG-20160623-WA0020.jpg"/>"  alt="Image" width="152" height="118">
					<div class="carousel-caption">
						<h3>Buy for 200</h3>
						<p>iPhone</p>
					</div>      
				</div>
		
				<div class="item">
					<img src="<c:url value="/resources/images/IMG-20160623-WA0007.jpg"/>"  alt="Image" width="152" height="118">
					<div class="carousel-caption">
						<h3>Buy for Rs.999</h3>
						<p>Sony</p>
					</div>      
				</div>
		
				<div class="item">
					<img src="<c:url value="/resources/images/IMG-20160623-WA0003.jpg"/>"  alt="Image" width="152" height="118">
					<div class="carousel-caption">
						<h3>Buy for 500</h3>
						<p>Buy 1 get 1 free</p>
					</div>      
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
	</div>

	<div class="col-sm-3">
			<button type ="button" class="btn-btn-info  btn-md">LAPTOPS</button>
			<hr>
			<button type ="button" class="btn-btn-info  btn-md">Easy EMI options - Buy now Pay later </button>
			<hr>
			<button type ="button" class="btn-btn-info  btn-md">Attractive Exchange Offers</button>
			<hr>
			<button type ="button" class="btn-btn-info  btn-md">New Arrivals </button>
	
	<div class="col-sm-4">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>

	<div class="col-sm-4">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<c:url value="/resources/images/IMG-20160623-WA0019.jpg"/>" alt="Image" width="152" height="118">
					<div class="carousel-caption">
						<h3 class="bg-danger">Buy for 500</h3>
						<p class="bg-danger">Buy 1 get 1 free</p>
					</div>      
				</div>
		
				<div class="item">
					<img src="<c:url value="/resources/images/IMG-20160623-WA0018.jpg"/>" alt="Image" width="152" height="118">
					<div class="carousel-caption">
						<h3>Buy for Rs.990</h3>
						<p>Sony</p>
					</div>      
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
</div>
	</div>
		</div>
	</div>
	</div>
		<hr>
	</div><br>
	<ul id="menu">
		<c:forEach items="${categoryList}" var="category">
			<li><a href=${category.name}>${category.name}</a>
				<ul>
					<c:forEach items="${category.product}" var="product">

						<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

					</c:forEach>

				</ul></li>
		</c:forEach>

	</ul>
	<hr color="red" size="5">
	<br><br><br>
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
					
				</tr>
				<tr>
					<td align="left" >${selectedProduct.id}</td>
					<td align="left" >${selectedProduct.name}</td>
					<td align="left" >${selectedProduct.description}</td>
					<td align="left" >${selectedProduct.price}</td>
					<td align="left" >${selectedProduct.category.name}</td>
					<td align="left" >${selectedProduct.supplier.name}</td>
				</tr>
			</table>
		</c:if>
	</div><br>


	
		
		
		
		
		
		
		

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
</div><img src="<c:url value="/resources/images/g.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
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
    <div class="col-sm-4">
      <h3>Benefits</h3>
      <img src="<c:url value="/resources/images/28159373-Indian-Couple-Making-Online-Purchase-At-Home-Stock-Photo.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      <p>If u buy online product the cost are very less</p>
     <p> We use this product is very good</p>
     <p> All the products are more expensive
      </p>
    </div>
    <br>
    <div class="col-sm-4">
      <h3>Shopkeeper</h3>
      <img src="<c:url value="/resources/images/dd.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      <p>Shopkeeper will update,add,confirm the product text color="orange"</p>
      <p> We use this product is very good</p>
     <p> All the products are more expensive
      </p>
      <br>
    </div>
    <div class="col-sm-4">
      <h3>Customer</h3>  
      <img src="<c:url value="/resources/images/dddd.jpg"/>" class="img-responsive" style="width:100%" alt="Image">   
      <p>Customer will buy the product with new user name and password</p>
     <p> We use this product is very good</p>
     <p> All the products are more expensive
      </p>
    </div>
    <br>
  </div>
<img src="<c:url value="/resources/images/sss.jpg"/>" class="img-responsive" style="width:100%" alt="Image">    
<br>
   
   
   
   
   
   
    <div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/12.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div>
    </div>
   <div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/13.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div><div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/14.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div><div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/15.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div><div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/24.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div><div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/17.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div><div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/18.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div><div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/19.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div><div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/20.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div><div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/21.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div>
   <div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/22.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div>
   <div class="col-sm-4">
      
      <img src="<c:url value="/resources/images/23.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
      </div>
   
    
</body>
</html>
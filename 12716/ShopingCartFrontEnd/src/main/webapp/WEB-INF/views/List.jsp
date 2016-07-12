<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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


	
		
</body>
</html>
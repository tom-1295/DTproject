<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Back.jsp" %>
<html>
<head>
<style>

p.toy{
text-align:center;
font-size:30px;
color:Red;

}
p.toy:hover{
color:Violet;}
</style>

<body>
    <header class="header">
    
           <p class=toy>Welcome Admin</p>
        
      
			
	     




<a href="categories"> Categories </a>   <br>
<a href="suppliers"> Suppliers</a>   <br>
<a href="products"> Products</a>    <br>
</header>
</head>
</body>

<footer class="container-fluid text-center">
   <img src="<c:url value="/resources/images/lap3.jpg"/>"  alt="Image" width="360" height="200">
					<p class="bg-danger"><h3>Admin view the lists</h3> </p>
					<p class="bg-danger" > <h2>Click it!!!! add or delete it</h2></p>
					
</footer>
</body>
</html>
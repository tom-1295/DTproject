<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<%@include file="Header.jsp" %>
<body background="<c:url value="/resources/images/vv.jpg" />" >

	<div class="container">
		<h2>Login :</h2>
		<form:form action="isValidUser" method="post">
			<div class="form-group">
				<div class="col-sm-4">
					<label for="id">Username:</label> <input type="text"
						class="form-control" name="id" placeholder="Enter username">
				</div>
			</div>
	</div>
	<br>

	<div class="container">
		<div class="form-group">
			<div class="col-sm-4">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" name="password" placeholder="Enter password">
			</div>
		</div>
	</div>
	<br>

	<div class="container">
		<button type="submit" class="btn btn-default">Login</button>
		
		
	</div>
	<br>


	</form:form>
	<footer class="container-fluid text-center">
   <img src="<c:url value="/resources/images/18.jpg"/>"  alt="Image" width="360" height="200">
					<p class="bg-danger"><h3>Admin and Exist User login here</h3> </p>
					<p class="bg-danger" > <h2>Login Your user name password </h2></p>
					
</footer>
</body>
</html>
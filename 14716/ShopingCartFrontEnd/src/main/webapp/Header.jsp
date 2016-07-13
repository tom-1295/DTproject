<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>

<title>Login Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<body background="<c:url value="/resources/images/backs.jpg" />">
<style>
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: violet;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      min-height: 200px;
    }

    /* Hide the carousel text when the screen is less than 600 pixels wide */
    @media (max-width: 600px) {
      .carousel-caption {
        display: none; 
      }
    }
  </style>
</head>
<body background="<c:url value="/resources/images/vvvvvv.jpg" />" >
<div class="container">
	<div class="row">
	        <div class="col-sm-2">
			<figure class="figure">
						<img src="<c:url value="/resources/images/images.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
						
			</figure>
			</div>
			
			<div class="col-sm-8">
			   <h1>  <p class="text-center">NANDHINI Electronic Tools and Appliances</h1>
			   <img src="<c:url value="/resources/images/n.jpg"/>" class="img-responsive" style="width:100%" alt="Images">
			</div>
	        <div class="col-sm-2">
			<figure class="figure">
						<img src="<c:url value="/resources/images/index.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
						<div class="carousel-caption">
						<h2 > </h2>
						</div>
			</figure>
			</div>
	</div>
</div><br>

<nav background="<c:url value="/resources/images/vvvvvv.jpg"/>" class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
      <a class="navbar-brand" href="#">Search by</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Price</a></li>
        <li><a href="dropdown" class="bg-danger">Brands</a></li>
        <li><a href="#" >Size</a></li>
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
       <li><a href="#" class="bg-danger">Accessories</a></li>
         <li><a href="#"class= "bg-info">Lucky Draw</a></li>
             
		<li><a href="index.jsp" class="btn btn-default" role="button">Home</a></li>
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
 
  
</nav>


<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Mvc WebFlow Demo</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body background="<c:url value="/resources/images/155746-11_1466687764034.jpg" />" >
<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<sf:form modelAttribute="UserDetails1">
				<sf:label path="id">User ID :</sf:label>${UserDetails1.id}
					<br />
				<br />
				<sf:label path="name"> User Name:</sf:label>${UserDetails1.name}
					<br />
				<br />
				<sf:label path="password">Password :</sf:label>${UserDetails1.password}
					<br />


				<sf:label path="email">Email:</sf:label>${UserDetails1.email}
					<br />
				<br />
				<sf:label path="mobile">Mobile #:</sf:label>${UserDetails1.mobile}
					<br />
				<br />
				<sf:label path="address">Address :</sf:label>${UserDetails1.address}
					<br />
				<br />
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</sf:form>
		</fieldset>
	</div>
</body>
</html>
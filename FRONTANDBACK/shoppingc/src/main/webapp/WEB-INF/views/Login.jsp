<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
</head>
<body>
<img src= "C:/Users/Nandhini/Desktop/grocery/lap/online-shopping-china.jpg"alt="C:/Users/Nandhini/Desktop/grocery/lap/online-shopping-china.jpg"><br>
<form:form action="isValidUser" method="post">
${message}
Enter User Name:<input type="text" name="name">
<br>
Enter Password:<input type="password" name="password" />
<br>
<input type="submit">
</form:form>

</body>
</html>
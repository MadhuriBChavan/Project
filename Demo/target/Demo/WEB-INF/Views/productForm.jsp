<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/admin/product/addProduct" var="url"></c:url>
	<form:form method="post" action="${url}" commandName="productFormObj" enctype="multipart/form-data">
	<table>
	<tr>
	<td><form:label path="PID"></form:label></td>
	<td><form:hidden path="PID"/> </td>
	</tr>
	<tr>
	<td><form:label path="product_Name">Product Name</form:label></td>
	<td><form:input path="product_Name"/></td>
	</tr>
	<tr>
	<td><form:label path="price">Price</form:label></td>
	<td><form:input path="price"/></td>
	</tr>
	<tr>
	<td><form:label path="category">CATEGORY</form:label></td>
	<td>
	<form:radiobutton path="category.CID" value="1"/>New Arrivals
	<form:radiobutton path="category.CID" value="2"/>Special Edition	
	<form:radiobutton path="category.CID" value="3"/>Discount Sale
	<form:radiobutton path="category.CID" value="4"/>General
	</td>
	</tr>
	<tr>
	<td><form:input type="file" path="productImage"/></td>
	</tr>
	<tr>
	<td colspan="2"><input type="submit" value="AddProduct"></td>
	</tr>
	</table>
	</form:form>
</body>
</html>
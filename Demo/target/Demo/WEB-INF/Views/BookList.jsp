<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<%@include file="header.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Product Details</title>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<H1> List of PRODUCTS</H1>
	<div class="container">
  <table class="table">
   <thead>
       <tr class="danger">
        <th>Product ID</th>
        <th>Product Name</th>
        <th>CATEGORY NAME</th>

      </tr>
    </thead>	
		<!--  for Each book b in books -->
		<c:forEach items="${products}" var="b">
		<tr class="info">
  		<td>
			 <a href="getProductByPID/${b.PID}"><c:out value="${b.PID}"></c:out></a>
				 
			 <a href="delete/${b.PID }"><span class="glyphicon glyphicon-trash"></span></a>
			 <a href="admin/product/editProduct/${b.PID }"><span class="glyphicon glyphicon-edit"></span></a>
 		</td>
  		<td>
			 <c:out value="${b.product_Name}"></c:out>
 		</td>
 		<td>
			 <c:out value="${b.category.categoryName}"></c:out>
 		</td>
		</tr>
		<td><img src="<c:url value="/resources/images/${b.PID }.png"/>" width="40%"/></td>
		</c:forEach>
	</table>	
<%@ include file="footer.jsp"%>
</div>
</body>
</html>
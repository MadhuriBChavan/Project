<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product By Id</title>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<H1> Product By ID</H1>
	<div class="container">
  <table class="table">
   <thead>
       <tr class="success">
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Price</th>
      </tr>
      </thead>
   
        <tr class="danger">
  		<td>
		<c:out value="${productObj.PID }"></c:out>
 		</td>
  		<td>
			 <c:out value="${productObj.product_Name }"></c:out>
 		</td>
 
         <td>
			 <c:out value="${productObj.price }"></c:out>
 		</td>
  		
		</tr>
		
	</table>	

</div>

		
</body>
</html>
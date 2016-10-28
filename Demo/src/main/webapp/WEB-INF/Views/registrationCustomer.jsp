<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="header.jsp"%>
<%@page isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.jumbotron {
    position: relative;
    background: #000 url("/resources/images/background.jpg") center center;
    width: 100%;
    height: 100%;
    background-size: cover;
    overflow: hidden;
}
</style>

<title>Registration</title>  
</head>
<body class="bg-warning">

<div class="container">
<div class="page-header">
<h1><i>Sign UP Here</i>.....!</h1>

<p class="lead">Please fill in your information below:</p>
</div>
<h3>Basic Info</h3>
<section>
<div class="jumbotron" style="background-color:#00F3FF">
<div class="container">
 
<c:url value="/customer/registration" var="url"></c:url>
<form:form action="${url }" method="post" commandName="customer">

<div class="form-group">
<label for="name">Name</label>
<form:errors path="customerName" cssStyle="color: #ff0000"/>
<form:input path="customerName" class="form-Control"/>
</div>

<c:if test="${duplicateEmail!=null }">
        ${duplicateEmail }
</c:if>

<div class="form-group">
<label for="email">Email</label>

<form:errors path="customerEmail" cssStyle="color: #ff0000"/>
<form:input path="customerEmail" class="form-Control"/>
</div>

<div class="form-group">
<label for="phone">Phone</label>
<form:input path="customerPhone" type="text" class="form-Control"/>
</div>

<c:if test="${duplicateUname!=null }">
			 ${duplicateUname }
</c:if>

<div class="form-group">
<label for="username">Username</label>
<form:errors path="users.username" cssStyle="color: #ff0000"/>
<form:input path="users.username" class="form-Control"/>
</div>

<div class="form-group">
<label for="password">Password</label>
<form:errors path="users.password" cssStyle="color: #ff0000"/>
<form:password path="users.password" class="form-Control"/>
</div>
</section>
<br/>

<h3>Billing Address:</h3>
<section>
<div class="jumbotron" style="background-image: url(http://www.android-examples.com/wp-content/uploads/2016/03/demo_bg_image.jpg); background-size: 100% 100%;">
<div class="container">
  
<div class="form-group">
<label for="billingStreet">Street Name</label>
<form:input path="billingAddress.streetName" class="form-Control"/>
</div>

<div class="form-group">
<label for="billingApartmentNumber">Apartment Number</label>
<form:input path="billingAddress.apartmentNumber" class="form-Control"/>
</div>

<div class="form-group">
<label for="billingCity">City</label>
<form:input path="billingAddress.city" class="form-Control"/>
</div>

<div class="form-group">
<label for="billingState">State</label>
<form:input path="billingAddress.state" class="form-Control"/>
</div>

<div class="form-group">
<label for="billingCountry">Country</label>
<form:input path="billingAddress.country" class="form-Control"/>
</div>

<div class="form-group">
<label for="billingZip">Zipcode</label>
<form:input path="billingAddress.zipcode" class="form-Control"/>
</div>
</section>
<br/>

<h3>Shipping Address:</h3>
<section>
<div class="jumbotron">
<div class="container">      
 
<div class="form-group">
<label for="shippingStreet">Street Name</label>
<form:input path="shippingAddress.streetName" class="form-Control"/>
</div>

<div class="form-group">
<label for="shippingApartmentNumber">Apartment Number</label>
<form:input path="shippingAddress.apartmentNumber" class="form-Control"/>
</div>

<div class="form-group">
<label for="shippingCity">City</label>
<form:input path="shippingAddress.city" class="form-Control"/>
</div>

<div class="form-group">
<label for="shippingState">State</label>
<form:input path="shippingAddress.state" class="form-Control"/>
</div>

<div class="form-group">
<label for="shippingCountry">Country</label>
<form:input path="shippingAddress.country" class="form-Control"/>
</div>

<div class="form-group">
<label for="shippingZip">Zipcode</label>
<form:input path="shippingAddress.zipcode" class="form-Control"/>
</div>
</section>
<br/><br/>

<input type="submit" value="submit" class="btn btn-default">
<a href="<c:url value="/"/>" class="btnbtn-default">Cancel</a>

</form:form>
</div>
</div>
<%@include file="footer.jsp"%>
	
</body>
</html>
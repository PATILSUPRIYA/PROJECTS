<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE div PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="/resources/css/checkout.css"/>">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title>
</head>
<body>

<div class="background">
		<div class="container-wrapper">
			<div class="container">
				<div class="page-header">
					<p class="lead">Customer Details:</p>
				</div>
				<div class="col-md-3 ">
					<form:form commandName="order" class="form-horizontal">

						<h1>Basic Info:</h1>

						<div class="form-group">
							<label for="name">Name</label>
							<form:input path="cart.customer.customerName" id="name"
								class="form-control" placeholder=" Name" />
						</div>

						<div class="form-group">
							<label for="email">Email</label>
							<form:input path="cart.customer.customerEmail" id="email"
								class="form-control" placeholder=" Email" />
						</div>

						<div class="form-group">
							<label for="phone">Phone</label>
							<form:input path="cart.customer.customerPhone" id="phone"
								class="form-control" placeholder=" Phone" />
						</div>

						<br />

						<h3>Billing Address:</h3>

						<div class="form-group">
							<label for="billingStreet">Street Name</label>
							<form:input path="cart.customer.billingAddress.streetName"
								id="billingStreet" class="form-control"
								placeholder=" Street Name" />
						</div>

						<div class="form-group">
							<label for="billingApartmentNumber">Apartment Number</label>
							<form:input path="cart.customer.billingAddress.apartmentNumber"
								id="billingApartmentNumber" class="form-control"
								placeholder=" Apartment Number" />
						</div>

						<div class="form-group">
							<label for="billingCity">City</label>
							<form:input path="cart.customer.billingAddress.city"
								id="billingCity" class="form-control" placeholder=" City" />
						</div>

						<div class="form-group">
							<label for="billingState">State</label>
							<form:input path="cart.customer.billingAddress.state"
								id="billingState" class="form-control" placeholder=" State" />
						</div>

						<div class="form-group">
							<label for="billingCountry">Country</label>
							<form:input path="cart.customer.billingAddress.country"
								id="billingCountry" class="form-control" placeholder=" Country" />
						</div>

						<div class="form-group">
							<label for="billingZip">Zipcode</label>
							<form:input path="cart.customer.billingAddress.zipcode"
								id="billingZip" class="form-control" placeholder=" Zipcode" />
						</div>

						<input type="hidden" name="_flowExecutionKey" />
						<br />
						<!--  on attribute - assign event id -->
						<!--  to attribute id value in state -->

						<button class="btn btn-warning btn-lg" name="_eventId_cancel">Cancel</button>

						<input type="submit" value="Next" class="btn btn-warning btn-lg"
							name="_eventId_customerInfoCollected" />
					</form:form>
				</div>
			</div>
		</div>
	
</div>
</body>
</html>
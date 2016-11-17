<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
	
		
			<div class="container-wrapper">
				<div class="container">
					<div class="page-header">
						<h1>Cutomer</h1>


						<p class="lead">Customer Details:</p>
					</div>

					<form:form commandName="order" class="form-horizontal">

						<h1>Basic Info:</h1>

						<div class="form-group">
							<label for="name">Name</label>
							<form:input path="cart.customer.customerName" id="name" />
						</div>

						<div class="form-group">
							<label for="email">Email</label>
							<form:input path="cart.customer.customerEmail" id="email" />
						</div>

						<div class="form-group">
							<label for="phone">Phone</label>
							<form:input path="cart.customer.customerPhone" id="phone" />
						</div>

						<br />

						<h3>Billing Address:</h3>

						<div class="form-group">
							<label for="billingStreet">Street Name</label>
							<form:input path="cart.customer.billingAddress.streetName"
								id="billingStreet" />
						</div>

						<div class="form-group">
							<label for="billingApartmentNumber">Apartment Number</label>
							<form:input path="cart.customer.billingAddress.apartmentNumber"
								id="billingApartmentNumber" />
						</div>

						<div class="form-group">
							<label for="billingCity">City</label>
							<form:input path="cart.customer.billingAddress.city"
								id="billingCity" />
						</div>

						<div class="form-group">
							<label for="billingState">State</label>
							<form:input path="cart.customer.billingAddress.state"
								id="billingState" />
						</div>

						<div class="form-group">
							<label for="billingCountry">Country</label>
							<form:input path="cart.customer.billingAddress.country"
								id="billingCountry" />
						</div>

						<div class="form-group">
							<label for="billingZip">Zipcode</label>
							<form:input path="cart.customer.billingAddress.zipcode"
								id="billingZip" />
						</div>

						<input type="hidden" name="_flowExecutionKey" />

						<br />
						<br />
						<!--  on attribute - assign event id -->
						<!--  to attribute id value in state -->

						<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>

						<input type="submit" value="Next" class="btn btn-success"
							name="_eventId_customerInfoCollected" />
					</form:form>
				</div>
			</div>
		
	
	
</body>
</html>
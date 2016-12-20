<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
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


					<p class="lead">Customer</p>
				</div>
				<div class="col-md-3">
					<form:form commandName="order" class="form-horizontal">
						<h1>Shipping Address:</h1>

						<div class="form-group">
							<label for="shippingStreet">Street Name</label>
							<form:input path="cart.customer.shippingAddress.streetName"
								id="shippingStreet" class="form-control"
								placeholder=" Street Name" />
						</div>

						<div class="form-group">
							<label for="shippingApartmentNumber">Apartment Number</label>
							<form:input path="cart.customer.shippingAddress.apartmentNumber"
								id="shippingApartmentNumber" class="form-control"
								placeholder=" Apartment Number" />
						</div>

						<div class="form-group">
							<label for="shippingCity">City</label>
							<form:input path="cart.customer.shippingAddress.city"
								id="shippingCity" class="form-control" placeholder=" City" />
						</div>

						<div class="form-group">
							<label for="shippingState">State</label>
							<form:input path="cart.customer.shippingAddress.state"
								id="shippingState" class="form-control" placeholder=" State" />
						</div>

						<div class="form-group">
							<label for="shippingCountry">Country</label>
							<form:input path="cart.customer.shippingAddress.country"
								id="shippingCountry" class="form-control" placeholder=" Country" />
						</div>

						<div class="form-group">
							<label for="shippingZip">Zipcode</label>
							<form:input path="cart.customer.shippingAddress.zipcode"
								id="shippingZip" class="form-control" placeholder=" Zipcode" />
						</div>

						<input type="hidden" name="_flowExecutionKey" />
						<br />

						<button class="btn btn-warning btn-lg" name="_eventId_cancel">Cancel</button>
						<button class="btn btn-warning btn-lg"
							name="_eventId_backToCollectCustomerInfo">Back</button>

						<input type="submit" value="Next" class="btn btn-warning btn-lg"
							name="_eventId_shippingDetailCollected" />
<br />
<br />



					</form:form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
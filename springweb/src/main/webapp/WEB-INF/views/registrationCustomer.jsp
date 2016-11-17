<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page isELIgnored="false"%>
<%-- <%@ include file="header.jsp"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<%-- <link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>"> --%>
<link rel="stylesheet"
	href="<c:url value="/resources/css/registration.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="background">
	
	
		<div class="container-wrapper">
			<div class="container">
				<div class="page-header">

					<p class="lead">Please fill in your information below:</p>
				</div>
				<c:url value="/customer/registration" var="url">
				</c:url>
				<div class="registration-box col-md-3 col-md-offset-8">
					<form:form action="${url}" method="post" commandName="customer">
						<h1>Basic Info:</h1>

						<div class="form-group">
							<label for="name">Name</label>
							<form:errors path="customerName" cssStyle="color:#ff0000"></form:errors>
							<form:input path="customerName" class="form-Control" />
						</div>

						<c:if test="${duplicateEmail!=null}">
${duplicateEmail}
</c:if>

						<div class="form-group">
							<label for="email">Email</label>

							<form:errors path="customerEmail" cssStyle="color:#ff0000"></form:errors>
							<form:input path="customerEmail" class="form-Control" />
						</div>

						<div class="form-group">
							<label for="phone">Phone</label>
							<form:input path="customerPhone" class="form-Control" />
						</div>


						<div class="form-group">
							<label for="username">Username</label>
							<form:errors path="users.username" cssStyle="color:#ff0000"></form:errors>
							<form:input path="users.username" class="form-Control" />
						</div>


						<div class="form-group">
							<label for="password">Password</label>
							<form:errors path="users.password" cssStyle="color:#ff0000"></form:errors>
							<form:input path="users.password" class="form-Control" />
						</div>


						<br />

						<h1>Billing Address:</h1>

						<div class="form-group">
							<label for="billingStreet">Street Name</label>
							<form:input path="billingAddress.streetName" class="form-Control" />
						</div>

						<div class="form-group">
							<label for="billingApartmentNumber">Apartment Number</label>
							<form:input path="billingAddress.apartmentNumber"
								class="form-Control" />

						</div>


						<div class="form-group">
							<label for="billingCity">City</label>
							<form:input path="billingAddress.city" class="form-Control" />
						</div>


						<div class="form-group">
							<label for="billingState">State</label>
							<form:input path="billingAddress.state" class="form-Control" />
						</div>


						<div class="form-group">
							<label for="billingCountry">Country</label>
							<form:input path="billingAddress.country" class="form-Control" />
						</div>


						<div class="form-group">
							<label for="billingZipcode">Zipcode</label>
							<form:input path="billingAddress.zipcode" class="form-Control" />
						</div>


						<h1>Shipping Address:</h1>

						<div class="form-group">
							<label for="shippingStreet">Street Name</label>
							<form:input path="shippingAddress.streetName"
								class="form-Control" />
						</div>

						<div class="form-group">
							<label for="shippingApartmentNumber">Apartment Number</label>
							<form:input path="shippingAddress.apartmentNumber"
								class="form-Control" />
						</div>


						<div class="form-group">
							<label for="shippingCity">City</label>
							<form:input path="shippingAddress.city" class="form-Control" />
						</div>


						<div class="form-group">
							<label for="shippingState">State</label>
							<form:input path="shippingAddress.state" class="form-Control" />
						</div>


						<div class="form-group">
							<label for="shippingCountry">Country</label>
							<form:input path="shippingAddress.country" class="form-Control" />
						</div>


						<div class="form-group">
							<label for="shippingZipcode">Zipcode</label>
							<form:input path="shippingAddress.zipcode" class="form-Control" />
						</div>


						<br />
						<br />

						<input type="submit" value="submit" class="btn btn-info">
						<a href="<c:url value="/"/>" class="btn btn-danger">Cancel</a>

					</form:form>
				</div>


				<div></div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="/WEB-INF/views/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="<c:url value="/resources/css/registration.css"/>">

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
				<div class="login-form col-md-3 col-md-offset-8">
					<form:form action="${url}" method="post" commandName="customer">
						<h1>Basic Info:</h1>

						<div class="form-group">
							<label for="name">Name</label>
							<form:errors path="customerName" cssStyle="color:#ff0000"></form:errors>
							<form:input path="customerName" class="form-control"
								placeholder=" Name" />
						</div>

						<c:if test="${duplicateEmail!=null}">
${duplicateEmail}
</c:if>

						<div class="form-group">
							<label for="email">Email</label>

							<form:errors path="customerEmail" cssStyle="color:#ff0000"></form:errors>
							<form:input path="customerEmail" class="form-control"
								placeholder="email" />
						</div>

						<div class="form-group">
							<label for="phone">Phone</label>
							<form:input path="customerPhone" class="form-control"
								placeholder="phone" />
						</div>


						<div class="form-group">
							<label for="username">Username</label>
							<form:errors path="users.username" cssStyle="color:#ff0000"></form:errors>
							<form:input path="users.username" class="form-control"
								placeholder=" Username" />
						</div>


						<div class="form-group">
							<label for="password">Password</label>
							<form:errors path="users.password" cssStyle="color:#ff0000"></form:errors>
							<form:input path="users.password" class="form-control"
								placeholder="password " />
						</div>


						<br />

						<h1>Billing Address:</h1>

						<div class="form-group">
							<label for="billingStreet">Street Name</label>
							<form:input path="billingAddress.streetName" class="form-control"
								placeholder="Street Name" />
						</div>

						<div class="form-group">
							<label for="billingApartmentNumber">Apartment Number</label>
							<form:input path="billingAddress.apartmentNumber"
								class="form-control" placeholder="Apartment Number" />

						</div>


						<div class="form-group">
							<label for="billingCity">City</label>
							<form:input path="billingAddress.city" class="form-control"
								placeholder="City" />
						</div>


						<div class="form-group">
							<label for="billingState">State</label>
							<form:input path="billingAddress.state" class="form-control"
								placeholder="State" />
						</div>


						<div class="form-group">
							<label for="billingCountry">Country</label>
							<form:input path="billingAddress.country" class="form-control"
								placeholder="Country" />
						</div>


						<div class="form-group">
							<label for="billingZipcode">Zipcode</label>
							<form:input path="billingAddress.zipcode" class="form-control"
								placeholder="Zipcode" />
						</div>


						<h1>Shipping Address:</h1>

						<div class="form-group">
							<label for="shippingStreet">Street Name</label>
							<form:input path="shippingAddress.streetName"
								class="form-control" placeholder="Street Name" />
						</div>

						<div class="form-group">
							<label for="shippingApartmentNumber">Apartment Number</label>
							<form:input path="shippingAddress.apartmentNumber"
								class="form-control" placeholder="Apartment Number" />
						</div>


						<div class="form-group">
							<label for="shippingCity">City</label>
							<form:input path="shippingAddress.city" class="form-control"
								placeholder="City" />
						</div>


						<div class="form-group">
							<label for="shippingState">State</label>
							<form:input path="shippingAddress.state" class="form-control"
								placeholder="State" />
						</div>


						<div class="form-group">
							<label for="shippingCountry">Country</label>
							<form:input path="shippingAddress.country" class="form-control"
								placeholder="Country" />
						</div>


						<div class="form-group">
							<label for="shippingZipcode">Zipcode</label>
							<form:input path="shippingAddress.zipcode" class="form-control"
								placeholder="Zipcode" />
						</div>


						<br />
						<br />

						<input type="submit" value="submit" class="btn btn-default">
						<a href="<c:url value="/"/>" class="btn btn-default">Cancel</a>

					</form:form>
				</div>


				<div></div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="/WEB-INF/views/footer.jsp"%>
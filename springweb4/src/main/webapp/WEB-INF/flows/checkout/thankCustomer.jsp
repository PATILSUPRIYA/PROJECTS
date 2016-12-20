<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/checkout.css"/>">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="background ">
		<div class="container-wrapper  thankyou">
			<div class="container">
				<section>

					<div class="container">
						<h1>Thank you for your business!</h1>

						<p>Your order will be shipped in two business days!</p>
					</div>

				</section>

				<section class="container">
					<p>
						<a href="<spring:url value="/" />" class="btn btn-default">OK</a>
					</p>
				</section>
			</div>



		</div>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>header page</title>
</head>
<body>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li><a href="<c:url value="/home"/>">Home</a></li>
				<li><a href="<c:url value="/about"/>">About Us</a></li>


				<c:if test="${pageContext.request.userPrincipal.name!=null}">




					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="<c:url value="/admin/product/addProduct"/>">Add
								New Product</a></li>
					</security:authorize>


					<li><a href="<c:url value="/productListAngular"/>">
							Products</a></li>

					<li><a>Welcome ${pageContext.request.userPrincipal.name}</a></li>

					<security:authorize access="hasRole('ROLE_USER')">
						<li><a href="<c:url value="/cart/getCartId"/>">Cart <span
								class="glyphicon glyphicon-shopping-cart"></span>
						</a></li>

					</security:authorize>
					<li><a href="j_spring_security_logout">Logout</a>
				</c:if>


				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<li><a href="<c:url value="/login"></c:url>">Login</a></li>
					<li><a href="<c:url value="/customer/registration"></c:url>">Register</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
</body>
</html>
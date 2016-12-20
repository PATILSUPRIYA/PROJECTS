<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>">
<title>header page</title>
</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top header-background">
		<ul class="nav navbar-nav">

			<li><a href="<c:url value="/home"/>">Home</a></li>

			<li><a href="<c:url value="/about"/>">About Us</a></li>

			<c:if test="${pageContext.request.userPrincipal.name!=null}">
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="<c:url value="/admin/product/addProduct"/>">Add
							New Product</a></li>
				</security:authorize>

				<li><a href="<c:url value="/productListAngular"/>">Products</a></li>




			</c:if>
		</ul>



		<ul class="nav navbar-nav navbar-right">





			<c:if test="${pageContext.request.userPrincipal.name==null}">


				<li><a href="<c:url value="/login"></c:url>">Login</a></li>

				<li><a href="<c:url value="/customer/registration"></c:url>"><span
						class="glyphicon glyphicon-user"></span>Sign up</a></li>

			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name!=null}">
				<li><a>Welcome ${pageContext.request.userPrincipal.name}</a></li>
				<security:authorize access="hasRole('ROLE_USER')">
					<li><a href="<c:url value="/cart/getCartId"/>">Cart <span
							class="glyphicon glyphicon-shopping-cart"></span></a></li>
				</security:authorize>

				<li><a href="j_spring_security_logout">Logout</a></li>

			</c:if>
		</ul>

	</nav>

</body>
</html>
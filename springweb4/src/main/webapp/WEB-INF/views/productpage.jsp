<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page isELIgnored="false"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
	
</script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>product page</title>
</head>
<body>

	<div class="form-group text-center">
	
			<div ng-app="myapp">
				<c:url var="url" value="/resources/images/${product.isbn}.png"></c:url>
				<img src="${url }" style="width: 40%; align: center" /><br>
				ID : ${product.isbn}<br> BRAND :${product.brand} <br>
				PRICE : ${product.price } <br>

				<c:url value="/cart/add/${product.isbn }" var="url"></c:url>

				<div ng-controller="productController">

					<security:authorize access="hasRole('ROLE_USER')">
						<a href="#" ng-click="addToCart(${product.isbn})"
							class="btn btn-warning btn-large"> <span
							class="glyphicon glyphicon-shopping-cart"></span>Add To Cart
						</a>
					</security:authorize>

					<a href="<c:url value="/getAllProducts"></c:url>"
						class="btn btn-warning btn-large">Back</a>
				</div>
			</div>
			<script src="<c:url value="/resources/js/controller.js" /> "></script>
		</div>
	

</body>
</html>
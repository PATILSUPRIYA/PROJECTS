<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
	
</script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="<c:url value="/resources/css/cart.css"/>">

<title>Insert title here</title>
</head>
<body>
	<div class="background">
		<div class="container">
			<div class="heading">
				<div class="container">
					<h1>Cart </h1>
					<p>All the selected products in your shopping cart</p>
				</div>
			</div>
			<div ng-app="myapp" ng-controller="productController">

				<div ng-init="getCart(${cartId})">
					<br>

					<div>
						<a class="btn btn-warning pull-left" ng-click="clearCart()"> <span
							class="glyphicon glyphicon-remove-sign"> </span> Clear Cart
						</a> <br> <a href="<c:url value="/order/${cartId}" />"
							class="btn btn-warning pull-right"> <span
							class="glyphicon glyphicon-shopping-cart"></span>Check Out
						</a>
					</div>

					<table class="table ">
						<thead>

							<tr>
								<th>BRAND</th>
								<th>QUANTITY</th>
								<th>PRICE</th>
								<th>TOTAL PRICE</th>
								<th></th>
							</tr>
						</thead>
						<tr ng-repeat="cartitem in cart.cartItem">
							<td>{{cartitem.product.brand}}</td>
							<td>{{cartitem.quantity}}</td>
							<td>{{cartitem.product.price}}</td>
							<td>{{cartitem.totalprice}}</td>
							<td><a href="#" class="label label-warning"
								ng-click="removeFromCart(cartitem.cartItemId)"> <span
									class="glyphicon glyphicon-remove"></span>remove
							</a></td>
						</tr>

					</table>
					GrandTotal Price {{calculateGrandTotal()}}
				</div>

				<c:url value="/getAllProducts" var="url"></c:url>
				<br> <a href="${url }" class="btn btn-warning">Continue
					shopping</a>
			</div>
		</div>
	</div>


</body>
</html>
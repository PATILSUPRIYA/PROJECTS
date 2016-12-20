<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>product list</title>

</head>
<body>

	<div data-ng-app="myapp">
		<div data-ng-controller="productController"
			data-ng-init="getProductsList()">



			<div class="lightening">LIGHTENING</div>
			<br>
			<div class="Search col-md-8 col-md-offset-5">
				Search: <input type="text" data-ng-model="searchCondition" />
			</div>
<br />
<br />

			<table class="table table-bordered container">
				<thead>
					<tr>
						<th width="90">IMAGE</th>
						<th width="90">ID</th>
						<th width="90">BRAND</th>
						<th width="90">PRICE</th>
						<th width="90">CATEGORY</th>
						<TH width="90">View</TH>
					</tr>
				</thead>

				<tbody>
					<tr data-ng-repeat="b in products | filter:searchCondition">

						<c:url value="/resources/images/{{b.isbn}}.png" var="src" />
						<td><img src="${src}" style="width: 30%" align="middle" /></td>

						<td><a href="getProductsByIsbn/{{b.isbn}}">{{b.isbn}}</a></td>
						<td>{{b.brand}}</td>
						<td>{{b.price}}</td>
						<td>{{b.category.category}}</td>

						<td><a href="getProductsByIsbn/{{b.isbn}}"><span
								class="glyphicon glyphicon-info-sign"></span></a> <security:authorize
								access="hasRole('ROLE_ADMIN')">

								<a href="admin/product/editProduct/{{b.isbn}}"> <span
									class="glyphicon glyphicon-edit"></span></a>
								<a href="delete/{{b.isbn}}"> <span
									class="glyphicon glyphicon-trash"></span></a>

							</security:authorize></td>
				</tbody>
			</table>

		</div>
	</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>
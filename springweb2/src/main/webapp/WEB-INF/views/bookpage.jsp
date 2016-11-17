<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ page isELIgnored="false"%>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
	
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>book page</title>
</head>
<body>

	<div ng-app="myapp">
		<c:url var="url" value="/resources/images/${bookObj.isbn}.png"></c:url>
		<img src="${url }" /><br>
		 ISBN : ${bookObj.isbn}<br>
	     AUTHOR :${bookObj.author} <br>
	     TITLE : ${bookObj.title } <br>
	      
		<c:url value="/cart/add/${bookObj.isbn }" var="url"></c:url>
		
		<div ng-controller="bookController">
			
			<security:authorize access="hasRole('ROLE_USER')">
			<a href="#" ng-click="addToCart(${bookObj.isbn})"
			        class="btn btn-warning btn-large">
		    <span  class="glyphicon glyphicon-shopping-cart"></span>Add To Cart</a>
			</security:authorize>
		<br />
		<br />
		<br />
			<a href="<c:url value="/getAllBooks"></c:url>">Back</a>
		</div>
	</div>
	<script src="<c:url value="/resources/js/controller.js" /> "></script>

</body>
</html>
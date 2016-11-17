<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>book list</title>

</head>
<body>
<div data-ng-app="myapp">
<div data-ng-controller="bookController" data-ng-init="getBooksList()">


Search: <input type="text" data-ng-model="searchCondition" placeholder="Search Book">


	<h1>List of Books</h1>

<!--  use JSTL tags -->
	<!--  iterate list of objects -->
	<!--  For each book b in books -->
	<table border="0" class="table table-striped table-hover">

	
<thead>
		<tr><th width="90">IMAGE</th>
			<th width="90">ISBN</th>
			<th width="90">AUTHOR</th>
			<th width="90">TITLE</th>
			<th width="90">CATEGORY</th>
			<TH width="90">View/Edit/Delete</TH>
		</tr>

</thead>

<tbody>
<tr data-ng-repeat="b in books | filter:searchCondition">

		
		
			
				<c:url value="/resources/images/{{b.isbn}}.png" var="src"/>
				<td><img src="${src}" style="width :30%" align="middle"/></td>
				
				<td><a href="getBooksByIsbn/{{b.isbn}}">{{b.isbn}}</a></td>
				<td>{{b.author}}</td>
				<td>{{b.title}}</td>
				<td>{{b.category.category}}</td>
				
				<td><a href="getBooksByIsbn/{{b.isbn}}"><span class="glyphicon glyphicon-info-sign"></span></a>
				
				<security:authorize access="hasRole('ROLE_ADMIN')">

                <a href="admin/book/editBook/{{b.isbn}}">
			           	<span class="glyphicon glyphicon-edit"></span></a>
				<a href="delete/{{b.isbn}}">
				         <span class="glyphicon glyphicon-trash"></span></a>
				
			           	
				</security:authorize>
			</td>
		
		</tbody>
		</table>
	</div></div>
	<%@ include file="footer.jsp"%>
</body>
</html>
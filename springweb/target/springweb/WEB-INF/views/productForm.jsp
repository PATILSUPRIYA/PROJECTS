<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Insert title here</title>
</head>
<body>
	<!-- http://localhost:8080/springweb/admin/product/addProduct -->
	<c:url value="/admin/product/addProduct" var="url"></c:url>
	<form:form method="post" action="${url}" commandName="productFormObj"
		enctype="multipart/form-data">

		<table>
			<tr>
				<td><form:label path="isbn"></form:label></td>
				<!--<td><form:input path="isbn" disabled="true" /></td>-->
				<td><form:hidden path="isbn" /></td>

			</tr>
			
			<tr>
				<td><form:label path="price">PRICE</form:label></td>
				<td><form:input path="price" /> <form:errors path="price"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="brand">BRAND</form:label></td>
				<td><form:input path="brand" /> <form:errors path="brand"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="category">CATEGORY</form:label></td>
				<td><form:radiobutton path="category.cid" value="1" />Table
					Lamps <form:radiobutton path="category.cid" value="2" />Wall
					Lights <form:radiobutton path="category.cid" value="3" />Ceiling
					Lights <form:radiobutton path="category.cid" value="4" />study
					Lamps</td>

			</tr>
			<tr>
				<td><form:input type="file" path="productImage" /></td>
			</tr>
			<tr>
				<td colspan="2s"><input type="submit" value="AddProduct"></td>
			</tr>




		</table>
	</form:form>
</body>
</html>
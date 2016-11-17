<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:url value="/admin/product/editProduct" var="url"></c:url>
	<form:form method="post" action="${url }" commandName="editProductObj">

		<table>
			<tr>
				<td><form:label path="isbn">ISBN</form:label></td>
				<td><form:input path="isbn" disabled="true" /></td>
				<td><form:hidden path="isbn"/></td>
							</tr>
		
			
			<tr>
				<td><form:label path="price">PRICE</form:label></td>
				<td><form:input path="price"/>
					</td>
			</tr>
			
			<tr>
				<td><form:label path="brand">BRAND</form:label></td>
				<td><form:input path="brand"/>
					</td>
			</tr>
			<tr>
				<td><form:label path="category">CATEGORY</form:label></td>
				<td><form:radiobutton path="category.cid" value="1" />Table Lamps
				<form:radiobutton path="category.cid" value="2" />Wall Lights
					 <form:radiobutton path="category.cid" value="3" />Ceiling Lights
					 <form:radiobutton path="category.cid" value="4" />study Lamps</td>
					  <form:radiobutton path="category.cid" value="4" />lanterns</td>
			</tr>
			<tr>
				<td colspan="2s"><input type="submit" value="EditProduct">
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>
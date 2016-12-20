<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="/resources/css/addedit.css"/>">

<title>Insert title here</title>
</head>
<body>



	<form:form class="form-horizontal addpro" method="post" action="${url}"
		commandName="productFormObj" enctype="multipart/form-data">
		<c:url value="/admin/product/addProduct" var="url"></c:url>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">PRICE</label>
			<div class="col-sm-5">
				<form:input path="price" class="form-control" />
				<form:errors path="price"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">BRAND</label>
			<div class="col-sm-5">
				<form:input path="brand" class="form-control" />
				<form:errors path="brand"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">CATEGORY</label>
			<form:radiobutton path="category.cid" value="1" />
			Table Lamps
			<form:radiobutton path="category.cid" value="2" />
			Wall Lights
			<form:radiobutton path="category.cid" value="3" />
			Ceiling Lights
			<form:radiobutton path="category.cid" value="4" />
			study Lamps
		</div>
		<div class="form-group">
			<div class="col-sm-5 col-md-offset-2">
				<form:input type="file" path="productImage" />
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-5 col-md-offset-2">
				<input type="submit" class="btn btn-warning btn-lg btn-block" value="AddProduct">
			</div>
		</div>

	</form:form>


</body>
</html>
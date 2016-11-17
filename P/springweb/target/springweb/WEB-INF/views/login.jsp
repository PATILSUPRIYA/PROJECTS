<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="background">
		<div class="container">
			<div class="login-box">
				<h2>Login</h2>

				<c:if test="${not empty logout}">
					<div class="error" style="color: #ff0000;">${logout}</div>
				</c:if>
				<form name="loginForm"
					action="<c:url value="/j_spring_security_check" />" method="post">
					<c:if test="${not empty error}">
						<div class="error" style="color: #ff0000;">${error}</div>
					</c:if>
					<div class="form-group">
						<label for="username">Username: </label><br> <input
							type="text" id="username" name="j_username" />
					</div>
					<div class="form-group">
						<label for="password">Password:</label> <br> <input
							type="password" id="password" name="j_password" />
					</div>
					<div class="btn-group">
						<input type="submit" value="Submit" class="btn btn-default">
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
	</div>

</body>
</html>
<%@ include file="/WEB-INF/views/footer.jsp"%>
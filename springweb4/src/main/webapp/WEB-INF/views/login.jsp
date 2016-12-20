<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

</head>
<body>
	<div class="background">
		<img alt=""
			src="<c:url value="resources/IMAGE/candle-old-125306.jpg" />"
			id="bg-img" class="img-responsive" />
		<div class="container">
			<div class="login-form col-md-3 col-md-offset-8">
				<h1>Login</h1>

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
							type="text" class="form-control" placeholder="Username"
							id="username" name="j_username" /> <i class="fa fa-user"></i>
					</div>
					<div class="form-group">
						<label for="password">Password:</label> <br> <input
							type="password" class="form-control" placeholder="Password"
							id="password" name="j_password" /> <i class="fa fa-lock"></i>
					</div>


					<input type="submit" value="Log In"
						class="btn btn-warning btn-lg btn-block">


				</form>
			</div>
		</div>

	</div>
	<%-- <%@ include file="/WEB-INF/views/footer.jsp"%> --%>
</body>
</html>

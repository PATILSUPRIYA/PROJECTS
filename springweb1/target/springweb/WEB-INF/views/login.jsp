<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
    <div class="container-wrapper">
        <div class="container">
            <div id="login-box">
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
                        <label for="username">Username: </label><br> <input type="text"
                            id="username" name="j_username" />
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label> <br> <input type="password"
                            id="password" name="j_password" />
                    </div>
                      <div class="btn-group">
                    <input type="submit" value="Submit" class="btn btn-default">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>
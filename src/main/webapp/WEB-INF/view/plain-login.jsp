<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>My Login Page</title>
</head>

<body>
	<h3>Welcome to login page:</h3>

	<form:form
		action="${pageContext.request.contextPath }/authenticateTheUser"
		method="POST">

		<c:if test="${param.error != null }">
			<i style="color: white; background: red; padding: 5px"> Sorry!
				You entered wrong username/password </i>
		</c:if>

		<c:if test="${param.logout != null }">
			<i style="color: white; background: green; padding: 5px"> You are
				successfully logout </i>
		</c:if>

		<p>
			User Name : <input type="text" name="username" />
		</p>
		<p>
			Password : <input type="password" name="password" />
		</p>

		<input type="submit" value="Login" />

	</form:form>

</body>
</html>
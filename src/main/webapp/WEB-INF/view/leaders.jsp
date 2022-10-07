<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<title>Home Page</title>
</head>

<body>
	<h2>Leaders Page</h2>
	<hr>


	Welcome to the company leaders page!

	<hr>
	<p>
		<a href="${pageContext.request.contextPath }/">Back to main page
		</a> (only for admins)
	</p>
	<hr>
	<form:form action="${pageContext.request.contextPath }/logout"
		method="POST">

		<input type="submit" value="Logout">

	</form:form>

</body>

</html>
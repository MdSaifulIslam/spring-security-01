<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<title>access-denied</title>
</head>

<body>
	<h2>access-denied</h2>
	
	<p>
		<a href="${pageContext.request.contextPath }/">Back to main Page
		</a> (only for admins)
	</p>
	<hr>
	<form:form action="${pageContext.request.contextPath }/logout"
		method="POST">

		<input type="submit" value="Logout">

	</form:form>

</body>

</html>
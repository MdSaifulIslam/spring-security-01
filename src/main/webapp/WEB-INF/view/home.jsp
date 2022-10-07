<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<title>Home Page</title>
</head>

<body>
	<h2>Home Page</h2>
	<hr>

	<p>
		User
		<security:authentication property="principal.username" />
	</p>
	<p>
		Role
		<security:authentication property="principal.authorities" />
	</p>

	Welcome to the company home page!

	<hr>

	<security:authorize access="hasRole('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath }/leaders">Leadership
				meeting</a> (only for leaders)
		</p>

	</security:authorize>
	<hr>
	<security:authorize access="hasRole('ADMIN')">
	<p>
		<a href="${pageContext.request.contextPath }/admins">Admin section
		</a> (only for admins)
	</p>
	</security:authorize>
	<hr>
	<form:form action="${pageContext.request.contextPath }/logout"
		method="POST">

		<input type="submit" value="Logout">

	</form:form>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Systems</h1>
	<br>
	User:<security:authentication property="principal.username"/>
	<br>
	Role:<security:authentication property="principal.authorities"/>
	
	
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value=Logout/>

	</form:form>
</body>
</html>
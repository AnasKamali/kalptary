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
	<br>
	<img src="assets/images/asdfg.jpg" >
	<br><br>
	User:<security:authentication property="principal.username"/>
	Role:<security:authentication property="principal.authorities"/>	
	<br>
	<security:authorize access="hasRole('ADMIN')">
		<a href="${pageContext.request.contextPath}/leaders">leaders</a>
	</security:authorize>
	<br>
	<security:authorize access="hasRole('MANAGER')">
		<a href="${pageContext.request.contextPath}/systems">systems</a>
	</security:authorize>
	<br>
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value=Logout/>

	</form:form>
</body>
</html>
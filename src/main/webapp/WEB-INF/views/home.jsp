<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
	<link href="https://fonts.googleapis.com/css?family=Miriam Libre"
	rel="stylesheet">
</head>
<body>
<P><a href="${pageContext.request.contextPath}/offers" lang="en"> Show current offers </a></P>
<P><a href="${pageContext.request.contextPath}/createoffer" lang="en"> Add a new offer </a></P>

<c:if test="${pageContext.request.userPrincipal.name != null}">
	<a href="javascript:document.getElementById('logout').submit()" lang="en">Logout</a>
</c:if>

<form id="logout" action="<c:url value="/logout" />" method="post">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Offers</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/offers.css">
<link href="https://fonts.googleapis.com/css?family=Miriam Libre"
	rel="stylesheet">
</head>
<body>
	<div id="wrapper">
	<br/><h3>Customer List</h3><br/>
	<table>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>EMAIL</th>
			<th>TEXT</th>
		</tr>
		<c:forEach var="offer" items="${offers}">
			<tr>
				<td> ${offer.id}</td>
				<td> ${offer.name} </td>
				<td> ${offer.email} </td>
				<td> ${offer.text} </td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>
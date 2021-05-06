<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Offer Created</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<link href="https://fonts.googleapis.com/css?family=Miriam Libre"
	rel="stylesheet">
<style>
	*{
		font-family: 'Miriam Libre';
	}
</style>
</head>
<body>
	${offer.name} 가 새로운 제안을 하였습니다. 감사합니다.
	<br/>
	
	<p><a href="${pageContext.request.contextPath}/offers">Click here to view current offers </a></p>
</body>
</html>
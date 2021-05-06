<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Offer</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<link href="https://fonts.googleapis.com/css?family=Miriam Libre"
	rel="stylesheet">
<style>
*{
	font-family: 'Miriam Libre';
}
.wrapper{
	border:1px soild red;
}
</style>
</head>
<body>
	<div class="wrapper">
	<sf:form method="post"
		action="${pageContext.request.contextPath}/docreate" modelAttribute="offer">
		<br/>
		<table class="formtable">
			<tr>
				<td class="label" lang="en">Name:</td>
				<td><sf:input class="control" type="text" path="name"/><br/>
					<sf:errors path="name" class="error" lang="en"/>
				</td>
			</tr>
			<tr>
				<td class="label" lang="en">Email:</td>
				<td><sf:input class="control" type="text" path="email"/><br/>
					<sf:errors path="email" class="error" lang="en"/>
				</td>
			</tr>
			<tr>
				<td class="label" lang="en">Offer:</td>
				<td><sf:textarea class="control" path="text" rows="10" cols="10"/><br/>
					<sf:errors path="text" class="error" lang="en"/>
				</td>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control" type="submit" lang="ko" value="새 제안"></td>
			</tr>
		</table>
	</sf:form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Please sign in(Custom Login Form)</title>
    <link href="https://fonts.googleapis.com/css?family=Miriam Libre"
	rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" crossorigin="anonymous"/>
    <style>
    	*{
			font-family: 'Miriam Libre';
		}
    	:lang(en){
   			font-family:'Miriam Libre';
		}
    </style>
  </head>
  <body>
     <div class="container">
      <form class="form-signin" method="post" action="<c:url value="/login"/>">
        <h2 class="form-signin-heading" lang="en">Please sign in</h2>
        
        <c:if test="${not empty logoutMsg}">
        	<div style="color:#0000a0">
        		<h4> ${logoutMsg}</h4>
        	</div>
        </c:if>
        
        <c:if test="${not empty errorMsg}">
        	<div style="color:tomato">
        		<h4> ${errorMsg}</h4>
        	</div>
        </c:if>
        
        <p>
          <label for="username" class="sr-only" lang="en">Username</label>
          <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
        </p>
        <p>
          <label for="password" class="sr-only" lang="en">Password</label>
          <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
        </p>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button class="btn btn-lg btn-primary btn-block" type="submit" lang="en">Sign in</button>
      </form>
</div>
</body>
</html>
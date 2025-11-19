<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Praveen BookStore - User Login</title>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />" />
</head>

<body>
<header class="header">
	<h3 id="logo">Praveen<span>Book Store</span></h3>
	<nav class="navbar">
		<a href="register">CREATE ACCOUNT</a>
		<a href="login">LOGIN</a>
	</nav>
</header>

<div class="formContainer">
<form action="loginhere" method="post" class="regform">
<h2>USER LOGIN</h2>
<label>EMAIL ID</label>

<input type="email" name="email" required>
<br><br>
<label>PASSWORD</label>
<input type="password" name="password" required>
<br><br>

<input type="submit" value="LOGIN">
</form>

<c:if test="${not empty error}">
<p style="color:red;">${error}</p>
</c:if>
</div>
<footer class="footer">
    <p>&copy 2025 Praveen BookStore. All Rights Reserved.</p>
</footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Praveen BookStore - User Registration</title>

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
<form action="create" method="post" class="regform">

<h2>USER REGISTRATION </h2>
<label>NAME </label>

<input type="text" name="name" required>
<br><br>
<label>PHONE NUMBER</label>
 
<input type="number" name="phone" required>
<br><br>
<label>EMAIL ID</label>
 
<input type="email" name="email" required>
<br><br>
<label>ADDRESS</label>
 
<textarea name="address" required></textarea>
<br><br>
<label>CREATE PASSWORD</label>
<input type="password" name="password" required>
<br><br>
<input type="submit" value="CREATE ACCOUNT">
</form>
</div>
<footer class="footer">
    <p>&copy 2025 Praveen BookStore. All Rights Reserved.</p>
</footer>
</body>
</html>
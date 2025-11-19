<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Praveen BookStore - User Orders</title>
<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />" />

</head>
<body>
<header class="header">
	<h3 id="logo">Praveen<span>Book Store</span></h3>
	<nav class="navbar">
		<a href="home"> Home</a>
		<a href="cart"> VIEW CART</a>
		<a href="view">VIEW ORDERS</a>
		<a href="logout">LOGOUT</a>
	</nav>
</header>
<h2 class="order-head">YOUR ORDERS</h2>


<div class="orderContainer">
<c:forEach var="order" items="${orders}">
    <!-- to display the ordered book details from orders list class -->
	<div class="orderSection">
		<p><b>ORDER ID :</b> ${order.id }</p>
		<p><b>STATUS :</b> ${order.status }</p>
		<p style="color:lightgreen"><b>TOTAL :</b> Rs. ${order.totalAmount }</p>
	</div>
	
	<c:if test="${order.status == 'PLACED'}">
		<form action="cancelOrder" method="post">	
			<input type="hidden" name="id" value="${order.id }">
			<input type="submit" value="CANCEL ORDER" class='cancel-btn'>
		</form>
	</c:if>
 
</c:forEach>
  

<c:if test="${param.cancelled == '1' }">
	<p style="color : red; background-color:white; border-radius:20px; padding:15px;">
		<b>ORDER IS CANCELLED ..!</b>
	</p>
</c:if>
</div>
<br> 
		<a href="home" class='custom-btn bottom-btn'>BACK TO HOME</a>
<br>
<footer class="footer">
    <p>&copy 2025 Praveen BookStore. All Rights Reserved.</p>
</footer>
</body>
</html>

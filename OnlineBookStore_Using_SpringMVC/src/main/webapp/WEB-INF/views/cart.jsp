<%@page import="com.jsp.bookStore.DTO.Book"%>
<%@page import="com.jsp.bookStore.DTO.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Praveen BookStore - cart</title>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<%
	User loggedUser =(User)session.getAttribute("user");
	List<Book> cart = (loggedUser != null) ? loggedUser.getCart() : null ;
%>
<h2 class="cart-head">YOUR CART </h2>
<div class="cartContainer">
	<% if(cart == null) {  %>
		<p>YOUR CART IS EMPTY </p>
	<% } 
		else { %>
	<div class="cardSection">
		<table class="cart-table"><%-- cart not empty means some books are there we need to show book with their price and total price --%>
			<thead>
			<th colspan="3">Book Title</th>
			<th></th>
			<th></th>
			<th colspan="2">Price</th>
			<th></th>
			</thead>
			<tbody>
			<%
				double total = 0;
				for( Book book: cart){
					total = total + book.getPrice();
			%> 
			<tr class="cart-item"> 
				<td colspan="3"><%= book.getTitle() %> </td>
				<td></td>
				<td></td>
				<td colspan="2"> Rs.<%= book.getPrice() %> </td>
				<td></td>
			</tr>
			<% } //end of for each loop %>
			
			</tbody>
		</table>
		<p><b>TOTAL : Rs. <%=total %> </b></p> 
	</div>
	<form action="placeOrder" method="post">
		<input type="submit" value="PLACE ORDER" class="custom-btn">
	</form>
	

<% } // else block end %>
</div>
	<br>
		<a href="home" class='custom-btn bottom-btn'>BACK TO HOME</a>
<footer class="footer">
    <p>&copy 2025 Praveen BookStore. All Rights Reserved.</p>
</footer>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Praveen BookStore - Home</title>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" 
		integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" 
		crossorigin="anonymous" 
		referrerpolicy="no-referrer" />
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


<c:choose>
<%--  Display thank you page --%>
<c:when test="${param.orderPlaced == '1'}">
	<section class="thankyou">
		<i class="fa-solid fa-circle-check tick-icon"></i>
		<p class="msg"> 
			<b>YOUR ORDER IS PLACED SUCCESSFULLY..!!</b> 
		</p>
		<h2>Thank you. Your Order has been received.</h2>
		<p>Pay with cash upon delivery.</p>
		
		<script type="text/javascript">
			alert("YOUR ORDER IS PLACED SUCCESSFULLY..!!");
		</script>
		
		<a href="home" class="continueShopping">Click Here To Continue Shopping</a>
	</section>
</c:when>

<%--  --%>
<c:otherwise>
<%-- Default Home page view that contains list of Books --%>
	<main>
	<!-- search section -->	
	<section>
	<!--  SEARCH FOR YOUR BOOKS HERE... -->
	
	<form action="search" method="get" class="searchbar">
		<i class="fa-solid fa-magnifying-glass" style="color: #1f1e1f;"></i>
		<input type="text" 
			name="title" 
			placeholder = "SEARCH THE BOOK TITLE HERE" 
			class="search-input">
			
		<input type="submit" value="SEARCH">
	</form>
	

	<c:if test="${not empty books }">
		<h3>SEARCH RESULTS :</h3>
		<br>
		<ul class="book-container">
			<c:forEach var="book" items="${books}">
				<li> 
				<div class='book-card'>
				<img src="${pageContext.request.contextPath}/resources/assets/default.jpg" 
     				alt="not found" class="book-img">
				<h3 class="book-title">${book.title} </h3>
				<p>category : ${book.category}</p>
				<p>price : Rs. ${book.price}</p>   
				<p>rating :⭐ ${book.rating}</p>
					<form action="addToCart" method="post" class="addtoCart-btn">
						<input type="hidden" name="bookid" value="${book.id}">
						<input type="submit" id="addBtn" value="ADD TO CART">
					</form> 
				</div>
				</li>
				<!-- add to cart
				some info about that book should be sent internally 
				so that same book added to cart. -->
			</c:forEach>
		</ul>
	</c:if>
	</section><!-- end of search section -->
	<!-- Books section -->
	<section> 
	<!-- <h2>Books in Store</h2>-->
		<ul class="book-container">
			<c:forEach var="allBook" items="${allBooks}">
				<li> 
				<div class='book-card'>
				<!--img src="<c:url value='/resources/assets/js_book.jpg' />" alt="not found" class="book-img" -->
				<img src="${pageContext.request.contextPath}/resources/assets/default.jpg" 
     				alt="not found" class="book-img">
				<h3 class="book-title">${allBook.title} </h3>
				<p>category : ${allBook.category}</p>  
				<p>price : Rs. ${allBook.price}</p>   
				<p>rating :⭐ ${allBook.rating}</p>
					<form action="addToCart" method="post" class="addtoCart-btn">
						<input type="hidden" name="bookid" value="${allBook.id}">
						<input type="submit" id="addBtn" value="ADD TO CART">
					</form> 
				</div>
				</li>
			</c:forEach>
		</ul>
	</section><!-- end of Books section -->
	</main>
</c:otherwise>
</c:choose>
<br><br>
<input type="button" class="custom-btn" value="Back" onclick="history.back()"/>
<br> 
<footer class="footer">
    <p>&copy 2025 Praveen BookStore. All Rights Reserved.</p>
</footer>


<script>
	const contextPath = "${pageContext.request.contextPath}";
	
	const bookImgs = [
		"java_programming_simplfied.jpg",
		"java-the-complete-reference-tenth-edition.jpg",
		"Mastering_java.jpg",
		"data_analytics.jpg",
		"datascience_book.jpg",
		"dsa_book.jpg",
		"html_css_book.jpg",
		"js_book.jpg",
		"MySQL-Cookbook.jpg",
		"python_programming.jpg",
		"reactjs_design_pattern.jpg",
		"sql_cookbook.jpg",
		];
	
	const images = document.getElementsByClassName("book-img");
	
	for (let i = 0; i < images.length; i++) {
	    images[i].src = contextPath + "/resources/assets/" + bookImgs[i % bookImgs.length];
	}
	
	
	document.getElementById("addBtn").addEventListener("click", function() {
	    alert("Book added to your cart successfully!");
	});
</script>


</body>
</html>

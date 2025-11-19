<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Praveen Book Store</title>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url 
	value= '/resources/css/style.css'
/>" >

</head>
<body>
<header class="header">
	<h3 id="logo">Praveen<span>Book Store</span></h3>
	<nav class="navbar">
		<a href="register">CREATE ACCOUNT</a>
		<a href="login">LOGIN</a>
	</nav>
</header>
<div class="project-container">
<!-- Header Section -->
    <section class="project-header">
        <img src="<c:url value='/resources/assets/banner/bookstore_banner.png' />" alt="Online Book Store Banner" class="project-banner">
        <h1 class="project-title">Praveen Book Store – Web Application</h1>
        <p class="project-subtitle">A complete web-based platform for buying, managing, and exploring books online.</p>
    </section>

    <!-- Objective Section -->
    <section class="project-objective">
        <h2 class="section-title">Project Objective</h2>
        <p class="section-text">
            The objective of this project is to develop a fully functional Online Book Store web application 
            that provides users with an intuitive, fast, and secure experience while exploring and purchasing books. 
            The system simplifies the complete buying workflow by combining a responsive UI with a robust Java-based backend.
        </p>
    </section>   
    
<br>

 <!-- Core Features Section -->
    <section class="project-features">
        <h2 class="section-title">Key User Features</h2>
        <ul class="feature-list">
            <li class="feature-item">User registration and login with secure authentication</li>
            <li class="feature-item">Search books by title, author, or category</li>
            <li class="feature-item">View detailed book information with images</li>
            <li class="feature-item">Add books to the shopping cart</li>
            <li class="feature-item">Place orders with an easy checkout process</li>
            <li class="feature-item">Track and manage past orders</li>
            <li class="feature-item">Cancel orders when needed</li>
        </ul>
    </section>
   <br>
     <!-- Tech Stack Section -->
    <section class="tech-stack">
        <h2 class="section-title">Technology Stack</h2>
        <div class="tech-grid">
            <div class="tech-card">Java, JDBC, Servlets</div>
            <div class="tech-card">JSP & JSTL</div>
            <div class="tech-card">MySQL Database</div>
            <div class="tech-card">HTML, CSS, JavaScript</div>
            <div class="tech-card">Tomcat Server</div>
            <div class="tech-card">MVC Architecture</div>
        </div>
    </section>
  <br>
    <!-- Conclusion Section -->
    <section class="conclusion">
        <h2 class="section-title">Conclusion</h2>
        <p class="section-text">
            This Online Book Store system ensures a smooth and engaging shopping experience for users
            while providing a powerful tool for administrators to manage books and orders effectively.
            It demonstrates strong backend logic, frontend design, and integration skills using modern Java technologies.
        </p>
    </section> 
</div>

<footer class="footer">
    <p>&copy 2025 Praveen BookStore. All Rights Reserved.</p>
</footer>

</body>
</html>
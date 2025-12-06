# 📚 Praveen Book Store -- Online Book Store Web Application

![Spring MVC](https://img.shields.io/badge/Spring-MVC-brightgreen)
![Hibernate](https://img.shields.io/badge/Hibernate-ORM-orange)
![Java](https://img.shields.io/badge/Java-17-orange)
![REST API](https://img.shields.io/badge/API-REST-orange)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)
![Servlet](https://img.shields.io/badge/Servlet-Backend-green)
![JSP](https://img.shields.io/badge/JSP-JSTL-blue)
![MySQL](https://img.shields.io/badge/Database-MySQL-blue)
![Tomcat](https://img.shields.io/badge/Tomcat-Server-red)
![Postman](https://img.shields.io/badge/API_Testing-Postman-critical)
![Maven](https://img.shields.io/badge/Build-Maven-purple)

A complete web-based **Online Book Store** application built using
**Java, Spring MVC, Hibernate, JSP, JSTL, and MySQL**, following the **MVC
architecture**.\
Users can register, browse books, add items to their cart, place orders,
and manage their purchases.

------------------------------------------------------------------------

## 🚀 Features

### 👤 User Features

-   User **registration and login**
-   Search books by **title, author, or category**
-   View **detailed book information** with images
-   Add books to **shopping cart**
-   Place orders through a simple **checkout**
-   View and manage **past orders**
-   **Cancel orders** anytime

------------------------------------------------------------------------

## 🧰 Technology Stack


| Layer         | Technologies Used                         |
|---------------|-------------------------------------------|
| Backend       | Java,Spring MVC, Hibernate JDBC, Servlets |
| Frontend      | JSP, JSTL, CSS, JavaScript                |
| Database      | MySQL                                     |
| Server        | Apache Tomcat                             |
| Architecture  | MVC                                       |


------------------------------------------------------------------------

## 📁 Project Structure

    /PraveenBookStore
    │── src/main/java
    │   ├── controller/       # Servlets
    │   ├── dao/              # Database operations
    │   ├── model/            # Entities / Beans
    │── src/main/webapp
    │   ├── WEB-INF/
    │   ├── resources/
    │   │   ├── css/
    │   │   ├── assets/
    │   ├── views/            # JSP pages
    │── pom.xml (if Maven)

------------------------------------------------------------------------

## ⚙️ Installation & Setup

### **1. Clone the Repository**

``` bash
git clone https://github.com/PraveenC786/Praveen-Book-Store.git
```

### **2. Configure MySQL**

``` sql
CREATE DATABASE bookstore;
```

### **3. Update DB Credentials**

``` java
String url = "jdbc:mysql://localhost:3306/bookstore";
String username = "root";
String password = "yourpassword";
```

### **4. Run the Project**

Deploy on **Tomcat** and visit:

    http://localhost:8080/PraveenBookStore

------------------------------------------------------------------------

## 📦 Future Enhancements

-   Wishlist
-   Reviews & Ratings
-   Admin Dashboard
-   Email Notifications

------------------------------------------------------------------------

## 🙋‍♂️ Author

**Praveen C**\
Java Full Stack Developer



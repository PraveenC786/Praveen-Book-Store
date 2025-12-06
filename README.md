# 📚 Praveen Book Store -- Online Book Store Web Application

![Java](https://img.shields.io/badge/Java-17-orange)
![JSP](https://img.shields.io/badge/JSP-JSTL-blue)
![Servlet](https://img.shields.io/badge/Servlet-Backend-green)
![MySQL](https://img.shields.io/badge/MySQL-Database-yellow)
![Tomcat](https://img.shields.io/badge/Tomcat-Server-red)

A complete web-based **Online Book Store** application built using
**Java, JDBC, Servlets, JSP, JSTL, and MySQL**, following the **MVC
architecture**.\
Users can register, browse books, add items to their cart, place orders,
and manage their purchases.

------------------------------------------------------------------------

## 🚀 Features

### 👤 User Features

-   User **registration and login**\
-   Search books by **title, author, or category**\
-   View **detailed book information** with images\
-   Add books to **shopping cart**\
-   Place orders through a simple **checkout**\
-   View and manage **past orders**\
-   **Cancel orders** anytime

------------------------------------------------------------------------

## 🧰 Technology Stack

  Layer          Technologies Used
  -------------- ----------------------------------
  Backend        Java, JDBC, Servlets
  Frontend       HTML, CSS, JavaScript, JSP, JSTL
  Database       MySQL
  Server         Apache Tomcat
  Architecture   MVC

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

-   Wishlist\
-   Reviews & Ratings\
-   Admin Dashboard\
-   Email Notifications

------------------------------------------------------------------------

## 🙋‍♂️ Author

**Praveen**\
Full Stack Developer -- Java \| Web Development

------------------------------------------------------------------------

## 📜 License

MIT License

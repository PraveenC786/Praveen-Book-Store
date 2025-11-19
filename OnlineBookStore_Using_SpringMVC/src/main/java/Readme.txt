tech stack ==> Spring MVC, Hibernate, JSP 

FOR BACKEND
spring-webmvc   ---> internally uses ==> servlet

FOR DATABASE
hibernate       ---> internally uses ==> mysql-connector-j (JDBC)

FOR FRONT-END
jsp-api         ---> internally uses ==> jstl

TOOLS :  eclipse IDE , MySQL WorkBench , embedded Tomcat Server
==========================================================================================

Database Name : bookstore_db

Table Details:

Table name : User

Table Desc :
Columns:
id int AI PK 
address varchar(255) 
email varchar(255) 
name varchar(255) 
password varchar(255) 
phone varchar(255)

Table name : Book

Table Desc :
Columns:
id int AI PK 
title varchar(255) 
category varchar(255) 
price double 
rating int

Table name : orders 

Table Desc :
Columns:
id int AI PK 
status varchar(255) 
totalAmount double 
user_id int

Table name : orders_book

Table Desc :
Columns:
Order_id int 
books_id int

Table name : user_book

Table Desc :
Columns:
User_id int 
cart_id int
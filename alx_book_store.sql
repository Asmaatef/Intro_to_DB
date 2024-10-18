CREATE  DATABASE alx_book_store ;
Use alx_book_store ;
CREATE TABLE Authors(
uthor_id INT AUTOINCREMENT Primary KEY ,
author_name VARCHAR(215)NOTNULL);
CREATE TABLE Books (
book_id  INT AUTOINCREMENT Primary Key,
title VARCHAR(130) NOTNULL,
author_id  INT ,
price DOUBLE NOTNULL,
publication_date DATA ,
FOREIGN KEY (author_id) REFERENCES Authors(author_id)
)
CREATE TABLE  Customers (
customer_id  INT AUTOINCREMENT Primary Key,
customer_name VARCHAR(215) NOTNULL ,
email VARCHAR(215) NOTNULL ,
address TEXT NOTNULL 
)
CREATE TABLE Orders (
order_id INT AUTOINCREMENT Primary Key ,
customer_id INT ,
order_date DATE NOTNULL ,
Foreign Key (Customer_id)  REFERENCES Customers (customer_id)
)
CREATE TABLE Order_Details (
orderdetailid INR AUTOINCREMENT Primary Key ,
order_id INT ,
book_id INT ,
quantity DOUBLE NOTNULL,
Foreign Key (order_id) REFERENCES  Orders (Order_id)
Foreign Key (book_id) REFERENCES Books( book_id)
);

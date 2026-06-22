create database myntra_db;
show databases;
use myntra_db;

create table product(
product_id int primary key,
product_name varchar(100),
pdescription varchar(255),
price decimal(10,2),
category varchar(100),
brand varchar(100)
);

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_no VARCHAR(15),
    password VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(30),

    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


CREATE TABLE Order_Item (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),

    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

show tables;

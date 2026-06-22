CREATE DATABASE retailsphere_db;
USE retailsphere_db;
show databases;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50) NOT NULL,
    registration_date DATE DEFAULT (CURRENT_DATE)
);

show tables;

create table categories(
category_id int primary key,
category_name varchar(50) unique
);

create table products(
product_id int primary key,
product_name varchar(100) not null,
category_id int,
price decimal(10,2) check(price>0),
stock_quantity int default 0,
foreign key (category_id) references categories(category_id)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    order_status VARCHAR(30) DEFAULT 'Processing',
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT CHECK(quantity > 0),
    unit_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY(order_id) REFERENCES orders(order_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);


CREATE TABLE product_suppliers (
    supplier_id INT,
    product_id INT,
    FOREIGN KEY(supplier_id) REFERENCES suppliers(supplier_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);
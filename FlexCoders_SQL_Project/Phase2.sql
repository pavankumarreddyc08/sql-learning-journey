use retailsphere_db;
show tables;

desc categories;
-- Insert Categories
insert into categories values
(1, 'Electronics'),
(2, 'Fashion'),
(3, 'Home Appliances');

select * from categories;

desc customers;
-- Insert Customers-- 
INSERT INTO customers VALUES
(101, 'Arun', 'Kumar', 'arun@gmail.com', 'Chennai', '2025-01-10'),
(102, 'Meena', 'Raj', 'meena@gmail.com', 'Bangalore', '2025-02-15'),
(103, 'John', 'David', 'john@gmail.com', 'Hyderabad', '2025-03-20'),
(104, 'Sita', 'Rao', 'sita@gmail.com', 'Mumbai', '2025-04-01');

desc products;
-- Insert Products
INSERT INTO products VALUES
(201, 'Laptop', 1, 75000, 20),
(202, 'Mobile', 1, 30000, 50),
(203, 'T-Shirt', 2, 1500, 100),
(204, 'Washing Machine', 3, 25000, 10),
(205, 'Headphones', 1, 2000, 40);

desc orders;
-- Insert Orders
INSERT INTO orders VALUES
(301, 101, '2025-05-01', 'Delivered'),
(302, 102, '2025-05-03', 'Processing'),
(303, 103, '2025-05-05', 'Delivered'),
(304, 101, '2025-05-07', 'Cancelled');

desc order_items;
-- Insert Order Items
INSERT INTO order_items VALUES
(1, 301, 201, 1, 75000),
(2, 301, 205, 2, 2000),
(3, 302, 203, 3, 1500),
(4, 303, 202, 1, 30000),
(5, 304, 204, 1, 25000);

desc suppliers;
Insert Suppliers
INSERT INTO suppliers VALUES
(401, 'Tech Distributors', 'Chennai'),
(402, 'Fashion Hub', 'Delhi'),
(403, 'Appliance World', 'Mumbai');

desc product_suppliers;
-- Insert Product Suppliers
INSERT INTO product_suppliers VALUES
(401, 201),
(401, 202),
(402, 203),
(403, 204),
(401, 205);

-- Add More Categories
INSERT INTO categories VALUES
(4, 'Accessories'),
(5, 'Books'),
(6, 'Sports'),
(7, 'Beauty');

-- Add More Customers
INSERT INTO customers VALUES
(105,'Rahul','Sharma','rahul@gmail.com','Delhi','2025-04-05'),
(106,'Priya','Singh','priya@gmail.com','Pune','2025-04-10'),
(107,'Amit','Verma','amit@gmail.com','Kolkata','2025-04-15'),
(108,'Neha','Patel','neha@gmail.com','Ahmedabad','2025-04-20'),
(109,'Rohan','Gupta','rohan@gmail.com','Chennai','2025-05-02'),
(110,'Anjali','Nair','anjali@gmail.com','Kochi','2025-05-08'),
(111,'Vikram','Joshi','vikram@gmail.com','Jaipur','2025-05-10'),
(112,'Sneha','Kulkarni','sneha@gmail.com','Bangalore','2025-05-15'),
(113,'Kiran','Reddy','kiran@gmail.com','Hyderabad','2025-05-18'),
(114,'Deepak','Mishra','deepak@gmail.com','Lucknow','2025-05-20'),
(115,'Pooja','Yadav','pooja@gmail.com','Delhi','2025-05-25');

-- Add More Products
select * from products;
INSERT INTO products VALUES
(206,'Bluetooth Speaker',1,4500,35),
(207,'Smart Watch',1,12000,25),
(208,'Jeans',2,2200,70),
(209,'Air Conditioner',3,42000,15),
(210,'Backpack',4,1800,90),
(211,'Novel',5,600,150),
(212,'Football',6,900,60),
(213,'Cricket Bat',6,3500,30),
(214,'Face Wash',7,350,120),
(215,'Perfume',7,1800,45),
(216,'Keyboard',1,2500,50),
(217,'Mouse',1,1200,80),
(218,'Mixer Grinder',3,5500,20),
(219,'Shoes',2,3200,65),
(220,'Power Bank',4,1500,40);

-- Add More Orders
INSERT INTO orders VALUES
(305,105,'2025-05-09','Delivered'),
(306,106,'2025-05-10','Processing'),
(307,107,'2025-05-11','Delivered'),
(308,108,'2025-05-12','Cancelled'),
(309,109,'2025-05-13','Delivered'),
(310,110,'2025-05-14','Shipped'),
(311,111,'2025-05-15','Delivered'),
(312,112,'2025-05-16','Processing'),
(313,113,'2025-05-17','Delivered'),
(314,114,'2025-05-18','Shipped'),
(315,115,'2025-05-19','Cancelled'),
(316,101,'2025-05-20','Delivered'),
(317,102,'2025-05-21','Processing'),
(318,103,'2025-05-22','Delivered'),
(319,104,'2025-05-23','Shipped');

-- Add More Order Items
select * from order_items;
INSERT INTO order_items VALUES
(6,305,207,1,12000),
(7,306,208,2,2200),
(8,307,206,1,4500),
(9,308,210,3,1800),
(10,309,209,1,42000),
(11,310,214,2,350),
(12,311,213,1,3500),
(13,312,219,2,3200),
(14,313,220,1,1500),
(15,314,211,5,600),
(16,315,215,2,1800),
(17,316,216,1,2500),
(18,317,217,2,1200),
(19,318,218,1,5500),
(20,319,212,3,900);

-- Add More Suppliers
INSERT INTO suppliers VALUES
(404,'Digital World','Bangalore'),
(405,'Sports Zone','Pune'),
(406,'Book Paradise','Delhi'),
(407,'Beauty Mart','Mumbai'),
(408,'Fashion House','Kolkata'),
(409,'Home Solutions','Hyderabad'),
(410,'Accessory Hub','Chennai');

-- Add Product-Supplier Mapping
INSERT INTO product_suppliers VALUES
(404,206),
(404,207),
(408,208),
(409,209),
(410,210),
(406,211),
(405,212),
(405,213),
(407,214),
(407,215),
(404,216),
(404,217),
(409,218),
(408,219),
(410,220);


UPDATE customers
SET email = NULL
WHERE customer_id IN (108,113);

UPDATE suppliers
SET city = NULL
WHERE supplier_id = 407;

UPDATE orders
SET order_status = NULL
WHERE order_id = 318;
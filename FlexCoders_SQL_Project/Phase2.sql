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

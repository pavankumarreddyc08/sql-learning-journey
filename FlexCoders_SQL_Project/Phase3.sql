use retailsphere_db;

-- 1.Show all customers.
select * from customers;

-- 2.Show product names and prices.
desc products;
select product_name, price
from products;

-- 3.Find customers from Chennai.
select * 
from customers
where city='Chennai';

-- 4.Display products with price greater than 20000.
select * 
from products
where price > 20000;

-- 5.Sort products by price descending.
select *
from products
order by price desc;

-- 6.Show top 3 expensive products.
select * 
from products
order by price desc
limit 3;

-- 7.Find unique cities from customers table.
select distinct city
from customers;

-- 8.Update stock quantity for a product.
select *
from products
where product_id = 202;

update products
set stock_quantity = 60
where product_id = 202;

-- 9.Delete cancelled orders.
SELECT *
FROM orders;

SET SQL_SAFE_UPDATES = 1;
delete from orders 
where order_status = 'Cancelled';

-- 10.Find products between 2000 and 50000.
select *
from products
where price between 2000 and 50000;
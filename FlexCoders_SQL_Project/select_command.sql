show tables;

select * from categories;
select * from customers;
select * from orders;
select * from order_items;
select * from products;
select * from suppliers;
select * from product_suppliers;


select first_name, last_name, city
from customers;

select product_name, stock_quantity
from products;

select supplier_name 
from suppliers;

select order_id, order_date 
from orders;

select email 
from customers;

select category_name
from categories;

select price, product_name
from products;

select order_status
from orders;
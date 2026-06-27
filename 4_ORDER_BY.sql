select price
from products 
order by price asc;

select price
from products 
order by price desc;

select first_name 
from customers
order by first_name asc;

select city
from customers
order by city asc;

select city
from suppliers
order by city desc;

select order_date
from orders
order by order_date desc;

select order_date
from orders
order by order_date asc;

select stock_quantity
from products
order by stock_quantity asc;

select product_name
from products
order by product_name desc;

select city, first_name
from customers 
order by city asc, first_name desc;
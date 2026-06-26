-- Questions are in bottom--check it out

select * 
from customers
where city='chennai';

select * 
from customers
where city='bangalore';

select *
from products
where price>5000;

select *
from products
where price<2000;

select *
from products
where stock_quantity>50;

select *
from products
where stock_quantity<25;

select *
from orders
where order_status='delivered';

select *
from orders
where order_status='cancelled';

select * 
from suppliers
where city='Mumbai';

select *
from products
where price=12000;

select * 
from customers
where registration_date='2025-05-02';

select *
from products
where stock_quantity=40;

select *
from orders
where order_date='2025-05-15';

select * 
from customers
where last_name='reddy';

select * 
from  categories
where category_id=1;
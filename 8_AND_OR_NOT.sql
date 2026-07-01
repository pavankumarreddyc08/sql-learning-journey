select *
from products
where price > 5000 and stock_quantity > 30;

select *
from products
where price > 10000 and stock_quantity > 25;

select *
from customers
where city='Bangalore' or city='Chennai';

select *
from customers
where city='Delhi' or city='Pune';

select *
from orders
where order_status='Delivered' or order_status='Shipped';

select product_name, price
from products
where not price > 10000
order by price desc;

select supplier_name
from suppliers
where not city='chennai';

select *
from customers
where not city='hyderabad';


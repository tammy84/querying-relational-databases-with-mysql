use work;

#number of times a paticular product was bought in 2018
select products.product_id, products.product_name, products.current_price, count(products.product_id) as no_count
from 2018_sales 
inner join products on 2018_sales.product_id= products.product_id
group by products.product_id
order by no_count DESC;

#customer with the highest purchase in 2019
select customers.customer_id, customers.customer_name, count(customers.customer_id) as no_custy
from 2019_sales 
inner join customers on 2019_sales.customer_id= customers.customer_id
group by customers.customer_id
order by no_custy DESC;

#location with the highest product bought
select locations.Type, locations.Name, locations.county, count(locations.location_id) as no_locate
from 2020_sales 
inner join locations on 2020_sales.location_id= locations.location_id
group by locations.location_id
order by no_locate DESC;

#most expensive order +   the product name, location, the salesperson and the customer that bought it in 2019
select products.product_name, locations.Name, sales_people.salesperson_Name, customers.customer_name, price
from 2019_sales
inner join products on 2019_sales.product_id= products.product_id
inner join locations on 2019_sales.location_id= locations.location_id
inner join customers on 2019_sales.customer_id= customers.customer_id
inner join sales_people on 2019_sales.sales_person_id= sales_people.salesperson_id
order by price DESC;

#most expensive order +   the product name, location, the salesperson and the customer that bought it in 2020
select products.product_name, locations.Name, sales_people.salesperson_Name, customers.customer_name, price
from 2020_sales
inner join products on 2020_sales.product_id= products.product_id
inner join locations on 2020_sales.location_id= locations.location_id
inner join customers on 2020_sales.customer_id= customers.customer_id
inner join sales_people on 2020_sales.sales_person_id= sales_people.salesperson_id
order by price DESC;

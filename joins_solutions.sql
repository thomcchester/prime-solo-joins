--1) get all customers and there addresses
SELECT *
FROM customers
INNER JOIN addresses
ON customers.id = addresses.id;

--2)
SELECT *
From orders
INNER JOIN line_items
ON orders.id = line_items.order_id;


--3) 
SELECT *
From warehouse
INNER JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
INNER JOIN products
ON products.id=warehouse_product.product_id
WHERE description='cheetos';

--4)
SELECT *
From warehouse
INNER JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
INNER JOIN products
ON products.id=warehouse_product.product_id
WHERE description='diet pepsi';

--5)
SELECT count(customers.id), customers.first_name, customers.last_name
FROM customers
INNER JOIN addresses
ON customers.id = addresses.customer_id
INNER JOIN orders
On addresses.id=orders.address_id
group by customers.first_name, customers.last_name;

--6)
SELECT COUNT(*)
From customers;


--7)
SELECT COUNT(*)
From products;

--8)
SELECT sum(warehouse_product.on_hand)
From products
INNER JOIN warehouse_product
ON products.id= warehouse_product.product_id
Where description = 'diet pepsi';



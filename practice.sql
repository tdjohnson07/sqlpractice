--1.Get all customers and their addresses
SELECT * FROM customers INNER JOIN addresses ON addresses.customer_id = customers.id;
--2.Get all orders and their line items.
SELECT * FROM orders INNER JOIN line_items ON line_items.order_id= orders.id;
--3.Which warehouses have cheetos?
SELECT * FROM warehouse INNER JOIN warehouse_product ON warehouse_product.warehouse_id = warehouse.id INNER JOIN products ON products.id = warehouse_product.product_id WHERE products.description = 'cheetos';
--4.Which warehouses have diet pepsi?
SELECT * FROM warehouse INNER JOIN warehouse_product ON warehouse_product.warehouse_id = warehouse.id INNER JOIN products ON products.id = warehouse_product.product_id WHERE products.description = 'diet pepsi';
--5. the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT customers.*, count(orders.*) from customers JOIN addresses ON addresses.customer_id=customers.id INNER JOIN orders ON orders.address_id = addresses.id
GROUP BY customers.id;
--6.How many customers do we have?
  SELECT count(customers.id) FROM customers;
--7. How many products do we carry?
SELECT count(products.id) FROM products;
--8.What is the total available on-hand quantity of diet pepsi?
SELECT sum(warehouse_product.on_hand) FROM warehouse_product INNER JOIN products ON products.id =warehouse_product.product_id where products.description='diet pepsi';

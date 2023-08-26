--Ensure customer_id=1 related records in orders and sales
DELETE FROM orders
WHERE customer_id = 1;

DELETE FROM sales
WHERE customer_id = 1;

DELETE FROM customers
WHERE customer_id = 1;

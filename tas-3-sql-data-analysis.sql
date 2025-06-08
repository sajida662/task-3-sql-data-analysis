SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;


SELECT order_id, SUM(quantity) AS total_items
FROM order_items
GROUP BY order_id;


SELECT customer_id, AVG(total_amount) AS avg_revenue
FROM orders
GROUP BY customer_id;



SELECT o.order_id, o.order_date, c.customer_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;



CREATE VIEW customer_orders AS
SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;



SELECT * FROM customer_orders;



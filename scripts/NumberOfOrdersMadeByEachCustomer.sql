SELECT Customers.customer_name, COUNT(Orders.order_id) AS num_orders
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
GROUP BY Customers.customer_id;


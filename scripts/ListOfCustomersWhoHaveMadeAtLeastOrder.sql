SELECT Customers.customer_name
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

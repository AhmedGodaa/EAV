SELECT CONCAT(Product1.product_name, ' and ', Product2.product_name) AS product_pair, Product1.product_price, Product2.product_price
FROM Entity_Attributes AS Orders
INNER JOIN Entity_Attributes AS Product

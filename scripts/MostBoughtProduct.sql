SELECT Products.product_name, Products.product_price
FROM Products
INNER JOIN (
SELECT entity_id, COUNT(*) AS num_orders
FROM Entity_Attributes
WHERE attribute_name = 'Order ID'
GROUP BY entity_id
ORDER BY num_orders DESC
LIMIT 1
) AS popular_products ON Products.product_id = popular_products.entity_id;

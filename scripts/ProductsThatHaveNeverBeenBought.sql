SELECT Products.product_name, Products.product_price
FROM Products
LEFT JOIN Entity_Attributes ON Products.product_id = Entity_Attributes.entity_id
WHERE Entity_Attributes.attribute_name = 'Order ID'
AND Entity_Attributes.attribute_value IS NULL;

-- Create the Customers table
CREATE TABLE Customers (
customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(255) NOT NULL,
customer_email VARCHAR(255) NOT NULL,
customer_phone VARCHAR(255),
customer_address VARCHAR(255)
);

CREATE TABLE Products (
product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(255) NOT NULL,
product_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Orders (
order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
order_date DATETIME NOT NULL,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Entity_Attributes (
entity_id INT NOT NULL,
attribute_name VARCHAR(255) NOT NULL,
attribute_value TEXT,
PRIMARY KEY (entity_id, attribute_name)
);

CREATE INDEX idx_orders_customer_id ON Orders (customer_id);
CREATE INDEX idx_entity_attributes_attribute_name ON Entity_Attributes (attribute_name);
CREATE INDEX idx_entity_attributes_attribute_value ON Entity_Attributes (attribute_value(255));

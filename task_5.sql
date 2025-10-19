USE alx_book_store;

-- Insert into Customers (plural) if that table exists
INSERT INTO Customers (customer_id, customer_name, email, address)
SELECT 1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.'
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Customers'
LIMIT 1;

-- Insert into customer (singular) if that table exists
INSERT INTO customer (customer_id, customer_name, email, address)
SELECT 1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.'
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'customer'
LIMIT 1;

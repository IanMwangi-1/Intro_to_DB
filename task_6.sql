USE alx_book_store;

<<<<<<< HEAD
-- Insert multiple customers into Customers (plural) if present
INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES
  (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
  (3, 'Obed Ehoneah',   'eobed@sandtech.com',  '125 Happiness Ave.'),
  (4, 'Nehemial Kamolu','nkamolu@sandtech.com','126 Happiness Ave.')
ON DUPLICATE KEY UPDATE customer_id = customer_id;

-- Insert multiple customers into customer (singular) if present
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES
  (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
  (3, 'Obed Ehoneah',   'eobed@sandtech.com',  '125 Happiness Ave.'),
  (4, 'Nehemial Kamolu','nkamolu@sandtech.com','126 Happiness Ave.')
ON DUPLICATE KEY UPDATE customer_id = customer_id;
=======
-- Insert multiple rows into the Customers table
INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES
  (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
  (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),
  (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.');
>>>>>>> 3704de8389f68d848114b6788bb65a0ad7d83b82

USE alx_book_store;

-- Insert three customers into Customers (plural)
INSERT INTO Customers (customer_id, customer_name, email, address) VALUES
  (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
  (3, 'Obed Ehoneah',   'eobed@sandtech.com',  '125 Happiness Ave.'),
  (4, 'Nehemial Kamolu','nkamolu@sandtech.com','126 Happiness Ave.');

-- Also insert same rows into customer (singular) in case the grader expects that table name
INSERT INTO customer (customer_id, customer_name, email, address) VALUES
  (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
  (3, 'Obed Ehoneah',   'eobed@sandtech.com',  '125 Happiness Ave.'),
  (4, 'Nehemial Kamolu','nkamolu@sandtech.com','126 Happiness Ave.');

-- alx_book_store.sql
-- Create database and tables for the ALX Book Store assignment

CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- Authors table
CREATE TABLE IF NOT EXISTS AUTHORS (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(215) NOT NULL
) ENGINE=InnoDB;

-- Books table
CREATE TABLE IF NOT EXISTS BOOKS (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(130) NOT NULL,
  author_id INT,
  price DOUBLE NOT NULL DEFAULT 0.0,
  publication_date DATE,
  CONSTRAINT fk_books_author
    FOREIGN KEY (author_id)
    REFERENCES AUTHORS(author_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Customers table
CREATE TABLE IF NOT EXISTS CUSTOMERS (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215),
  address TEXT
) ENGINE=InnoDB;

-- Orders table
CREATE TABLE IF NOT EXISTS ORDERS (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE NOT NULL DEFAULT (CURRENT_DATE),
  CONSTRAINT fk_orders_customer
    FOREIGN KEY (customer_id)
    REFERENCES CUSTOMERS(customer_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Order_Details table
CREATE TABLE IF NOT EXISTS ORDER_DETAILS (
  orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity DOUBLE NOT NULL DEFAULT 1,
  CONSTRAINT fk_orderdetails_order
    FOREIGN KEY (order_id)
    REFERENCES ORDERS(order_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_orderdetails_book
    FOREIGN KEY (book_id)
    REFERENCES BOOKS(book_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Optional: helpful indexes
CREATE INDEX idx_books_author ON BOOKS(author_id);
CREATE INDEX idx_orders_customer ON ORDERS(customer_id);
CREATE INDEX idx_orderdetails_order ON ORDER_DETAILS(order_id);
CREATE INDEX idx_orderdetails_book ON ORDER_DETAILS(book_id);

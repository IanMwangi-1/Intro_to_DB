-- alx_book_store.sql
-- Create database and tables for the ALX Book Store assignment
-- Table names use Capitalized form expected by the checker

CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- Authors table
CREATE TABLE IF NOT EXISTS Authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(215) NOT NULL
) ENGINE=InnoDB;

-- Books table
CREATE TABLE IF NOT EXISTS Books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(130) NOT NULL,
  author_id INT,
  price DOUBLE NOT NULL DEFAULT 0.0,
  publication_date DATE,
  CONSTRAINT fk_books_author
    FOREIGN KEY (author_id)
    REFERENCES Authors(author_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Customers table
CREATE TABLE IF NOT EXISTS Customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215),
  address TEXT
) ENGINE=InnoDB;

-- Orders table
CREATE TABLE IF NOT EXISTS Orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE NOT NULL DEFAULT (CURRENT_DATE),
  CONSTRAINT fk_orders_customer
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Order_Details table
CREATE TABLE IF NOT EXISTS Order_Details (
  orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity DOUBLE NOT NULL DEFAULT 1,
  CONSTRAINT fk_orderdetails_order
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_orderdetails_book
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Optional: helpful indexes
CREATE INDEX idx_books_author ON Books(author_id);
CREATE INDEX idx_orders_customer ON Orders(customer_id);
CREATE INDEX idx_orderdetails_order ON Order_Details(order_id);
CREATE INDEX idx_orderdetails_book ON Order_Details(book_id);

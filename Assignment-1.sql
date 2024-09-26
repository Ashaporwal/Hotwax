-- Create the e_commerce database
CREATE DATABASE e_commerce;

-- Use the e_commerce database
USE e_commerce;

-- Create the Customers table
CREATE TABLE Customers (
    cst_id INT PRIMARY KEY,
    cst_name VARCHAR(50),
    cst_email VARCHAR(100),
    cst_city VARCHAR(50)
);

-- Insert data into the Customers table
INSERT INTO Customers (cst_id, cst_name, cst_email, cst_city)
VALUES (101, 'kanika', 'kanika@gmail.com', 'Indore'),
       (102, 'Yashvini', 'yashwini@gmail.com', 'Pune'),
       (103, 'nitesh', 'nit@gmail.com', 'Ratlam'),
       (104, 'Samarth ', 'sid@gmail.com', 'Mumbai');

-- Create the orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    cst_id INT,
    total_amount INT,
    order_status VARCHAR(20),
    order_date DATE,
    FOREIGN KEY (cst_id) REFERENCES Customers(cst_id) 
);
-- Insert  data into the Orders table
INSERT INTO orders (order_id, cst_id, total_amount, order_status, order_date)
VALUES (1, 101, 1000, 'deliverd', '2024-08-01'),
       (2, 102, 400, 'Processing', '2024-09-03'),
       (3, 102, 199, 'Delivered', '2024-07-01'),
	 (4 , 103, 233, 'Processing', '2023-02-01'),
       (5, 104, 244, 'Delivered', '2023-02-02');

-- Create the Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price INT,
    returnable VARCHAR(3)
);

-- Insert sample data into the Products table
INSERT INTO products (product_id, product_name, price, returnable)
VALUES (201, 'Smartphone', 15000, 'Yes'),
       (202, 'Laptop', 150000, 'No'),
       (203, 'Headphones', 2000, 'Yes'),
       (204, 'TV', 7000, 'Yes'),
       (205, 'Smartwatch', 3000, 'No');

SELECT order_id, order_status 
FROM orders 
WHERE cst_id = 101;

SELECT SUM(total_amount) AS total_amount_of_order
FROM orders 
WHERE cst_id = 102;

UPDATE Customers 
SET cst_city = 'Raipur' 
WHERE cst_id = 101;

SELECT product_id, product_name 
FROM products 
WHERE returnable = 'Yes';






       
    
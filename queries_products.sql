-- Comments in SQL Start with dash-dash --

-- --DATABASE: products_db

-- There is a table called products with the following columns:

-- id, an auto-incrementing integer that is the unique identifier for a product
-- name, text that cannot be left null
-- price, which is a non-blank floating-point number;
-- can_be_returned, which is a boolean, and not nullable
-- Write the SQL commands necessary to do the following in crud.sql. When you get a query to work correctly, copy and paste it into the queries_products.sql file with a comment for which query it is.

-- Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false
-- Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true.
-- Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.
INSERT INTO products (name, price, can_be_returned) VALUES
('chair', 44.00, false),
('stool', 25.99, true),
('table', 124.00, false);

-- Display all of the rows and columns in the table.
SELECT * FROM products;

-- Display all of the names of the products.
SELECT name FROM products;

-- Display all of the names and prices of the products.
SELECT name, price FROM products;

-- Add a new product - make up whatever you would like!
INSERT INTO products (name, price, can_be_returned)
VALUES ('desk', 89.99, true);

-- Display only the products that can_be_returned.
SELECT name, can_be_returned FROM products WHERE can_be_returned;

-- Display only the products that have a price less than 44.00.
SELECT name, price FROM products WHERE price < 44.00;

-- Display only the products that have a price in between 22.50 and 99.99.
SELECT name, price FROM products WHERE price < 99.99 AND price > 22.50;

-- There’s a sale going on: Everything is $20 off! Update the database accordingly.
UPDATE products SET price = price - 20;

-- Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
DELETE FROM products WHERE price < 25;

-- And now the sale is over. For the remaining products, increase their price by $20.
UPDATE products SET price = price + 20;

-- There is a new company policy: everything is returnable. Update the database accordingly.
UPDATE products SET can_be_returned = true;
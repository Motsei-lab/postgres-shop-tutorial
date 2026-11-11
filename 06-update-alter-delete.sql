SELECT product_id,product_name,price FROM products
WHERE product_name ='USB-C Cable';

UPDATE products SET price = 109.50
WHERE product_name ='USB-C Cable';

UPDATE products SET stock_quantity = 45, description = 'One metre USB-C charging and data cable'
WHERE product_name ='USB-C Cable';
SELECT product_id,product_name,price, stock_quantity FROM products
WHERE product_name ='USB-C Cable';

ALTER TABLE customers 
ADD COLUMN city VARCHAR(80);
SELECT * FROM customers;

ALTER TABLE customers
RENAME COLUMN phone TO phone_number;

ALTER TABLE customers
ALTER COLUMN city TYPE VARCHAR(100);

ALTER TABLE customers
DROP COLUMN city;

SELECT customer_id,first_name,last_name FROM customers
WHERE email = 'test@example.com';

DELETE FROM customers
WHERE email = 'test@example.com';


BEGIN;
UPDATE products SET price = 119.50
WHERE product_name = 'USB-C Cable';

SELECT product_name,price FROM products
WHERE product_name = 'USB-C Cable';

SELECT * FROM products;
UPDATE products
SET PRICE = 600.00
WHERE product_id = 1;

ALTER TABLE customers
ADD COLUMN city VARCHAR(50);

SELECT * FROM customers;

UPDATE customers
SET city = 'City Of Tshwane'
WHERE customer_id = 2;

SELECT * FROM customers WHERE customer_id = 2;

BEGIN;
UPDATE customers
SET city = 'Soweto'
WHERE customer_id = 1;
SELECT * FROM customers WHERE customer_id = 1;
ROLLBACK;

SELECT * FROM customers;

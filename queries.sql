USE SalesDB;
GO

SELECT *
FROM transactions.customers;

SELECT customer_id, first_name, last_name, email, city
FROM transactions.customers;


SELECT product_id, product_name, list_price
FROM production.products;

SELECT 
	product_id AS 'PRODUCT ID', 
	product_name AS 'PRODUCT NAME', 
	list_price AS 'LIST PRICE'
FROM production.products;

SELECT 
	product_id AS 'PRODUCT ID', 
	product_name AS 'PRODUCT NAME', 
	list_price AS 'LIST PRICE',
	list_price*0.05
FROM production.products;

SELECT 
	product_id AS 'PRODUCT ID', 
	product_name AS 'PRODUCT NAME', 
	list_price AS 'LIST PRICE',
	list_price*0.05 AS 'DISCOUNT'
FROM production.products;


SELECT 
	customer_id AS 'Customer Id', 
	first_name + ' ' + last_name AS 'Customer', 
	email AS 'Email'
FROM transactions.customers;


SELECT city
FROM transactions.customers;

SELECT DISTINCT city
FROM transactions.customers;

SELECT DISTINCT city, state
FROM transactions.customers;








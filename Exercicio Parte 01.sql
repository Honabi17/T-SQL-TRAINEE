-------------------------------
--Fundamentos de T-SQL
--Parte 01: Introdução ao T-SQL
-------------------------------

USE OrdersDB;
GO



--Consulta 1 (Show all columns)

SELECT *
FROM Production.Suppliers;



--Consulta 2 & 3 (Show only the columns supplierid, companyname, address, city, country and named)

SELECT 
	supplierid AS 'Supplier ID',
	companyname AS 'Company', 
	address AS 'Address', 
	city AS 'City', 
	country As 'Country'
FROM Production.Suppliers;



--Consulta 4 & 5 (Show only the columns orderid, productid, unitprice, qty and named)


SELECT	
	orderid AS 'Order', 
	productid AS 'Product', 
	unitprice AS 'Unit Price', 
	qty AS 'Quantity',
	unitprice * qty AS 'Total'
FROM Sales.OrderDetails;



--Consulta 6 (Show only the columns custid, companyname, connects the city column with the country column. and named)

SELECT
	custid AS 'Cust',
	companyname AS 'Company',
	city + ' - ' +  country AS 'City & Country'
FROM Sales.Customers;



--Consulta 7 & 8 (Show a column shipcountry without a duplicates and named)

SELECT DISTINCT shipcountry AS 'Countries List'
FROM Sales.Orders;
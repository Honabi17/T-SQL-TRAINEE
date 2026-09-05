-----------------------------------
--Fundamentos de T-SQL
--Parte 2: Ordenação e Filtragem
--Resolução dos exercícios práticos
-----------------------------------

USE OrdersDB;
GO

--Consultation 01
SELECT productid,productname, unitprice
FROM Production.Products
ORDER BY productname;

--Consultation 02
SELECT productid,productname, unitprice
FROM Production.Products
ORDER BY unitprice DESC, productname;

--Consultation 03
SELECT productid,productname, unitprice
FROM Production.Products
WHERE discontinued = 0
ORDER BY unitprice DESC, productname;

--Consultation 04
SELECT productid,productname, unitprice
FROM Production.Products
WHERE discontinued = 0 AND unitprice > 50
ORDER BY unitprice DESC, productname;

--Consultation 05
SELECT custid, companyname, contactname, city, country, fax
FROM Sales.Customers
WHERE country IN ('Belgium','Denmark','France','Germany') AND fax IS NOT NULL
ORDER BY companyname;

--Consultation 06
SELECT 
	empid, 
	firstname + ' ' + lastname AS 'employee name', 
	country, 
	phone
FROM Sales.Employees
WHERE lastname LIKE 'D%'
ORDER BY 'employee name';

--Consultation 07
SELECT 
	empid, 
	firstname + ' ' + lastname AS 'employee name', 
	country, 
	phone
FROM Sales.Employees
WHERE firstname LIKE '_a%';

--Consultation 08
SELECT 
	empid, 
	firstname + ' ' + lastname AS 'employee name', 
	country, 
	phone
FROM Sales.Employees
WHERE firstname LIKE '_[ao]%';

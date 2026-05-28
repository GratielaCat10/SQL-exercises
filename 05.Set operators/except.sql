-- Customers who are not Employees
SELECT FirstName, LastName
FROM Sales.Customers
EXCEPT
SELECT FirstName, LastName
FROM Sales.Employees;


-- Employees who are not Customers
SELECT FirstName, LastName
FROM Sales.Employees
EXCEPT
SELECT FirstName, LastName
FROM Sales.Customers;


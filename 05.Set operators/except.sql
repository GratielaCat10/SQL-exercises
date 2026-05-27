-- Customers who are not Employees
SELECT FirstName, LastName
FROM Customers
EXCEPT
SELECT FirstName, LastName
FROM Employees;


-- Employees who are not Customers
SELECT FirstName, LastName
FROM Employees
EXCEPT
SELECT FirstName, LastName
FROM Customers;


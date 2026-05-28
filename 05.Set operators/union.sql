-- Combine all unique people from Customers and Employees
SELECT FirstName, LastName
FROM Sales.Customers
UNION
SELECT FirstName, LastName
FROM Sales.Employees;

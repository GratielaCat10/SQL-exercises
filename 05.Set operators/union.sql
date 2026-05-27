-- Combine all unique people from Customers and Employees
SELECT FirstName, LastName
FROM Customers
UNION
SELECT FirstName, LastName
FROM Employees;

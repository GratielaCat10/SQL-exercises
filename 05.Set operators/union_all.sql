-- List all people including duplicates
SELECT FirstName, LastName
FROM Customers
UNION ALL
SELECT FirstName, LastName
FROM Employees;

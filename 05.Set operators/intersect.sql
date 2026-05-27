-- People that exist in both tables
SELECT FirstName, LastName
FROM Customers
INTERSECT
SELECT FirstName, LastName
FROM Employees;

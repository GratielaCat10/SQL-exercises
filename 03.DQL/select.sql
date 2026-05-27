-- 1. Display all customers.
SELECT *
FROM Customers;


-- 2. Display: FirstName, City for all customers.
SELECT
    FirstName,
    City
FROM Customers;


-- 3. Display the first three orders.
SELECT TOP 3 *
FROM Orders;


-- 4. Display distinct cities.
SELECT DISTINCT City
FROM Customers;

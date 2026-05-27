-- 1. Display the number of customers from each city.
SELECT
    City,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City;


-- 2. Display cities that have more than 1 customer.
SELECT
    City,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City
HAVING COUNT(*) > 1;


-- 3. Display: each city and the average age of customers from that city.
SELECT
    City,
    AVG(Age) AS AverageAge
FROM Customers
GROUP BY City;


-- 4. Display: each product and the highest quantity ordered for that product.
SELECT
    ProductName,
    MAX(Quantity) AS HighestQuantity
FROM Orders
GROUP BY ProductName;


-- 5. Display: each city and the number of customers. Only for cities with customers older than 25.
SELECT
    City,
    COUNT(*) AS TotalCustomers
FROM Customers
WHERE Age > 25
GROUP BY City;


-- 6. Display: each product and the total quantity ordered. Only for products where the total quantity is greater than 1, ordered by total quantity descending.
SELECT
    ProductName,
    SUM(Quantity) AS TotalQuantity
FROM Orders
GROUP BY ProductName
HAVING SUM(Quantity) > 1
ORDER BY TotalQuantity DESC;

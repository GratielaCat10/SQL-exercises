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


/* 7. Display: the products and the total quantity.
Where:
    - the price is greater than 100
    - the total quantity is greater than 1
Ordered descending by the total quantity. */
SELECT
    ProductName,
    SUM(Quantity) AS Total
FROM Orders
WHERE Price > 100
GROUP BY ProductName
HAVING SUM(Quantity) > 1
ORDER BY SUM(Quantity) DESC;


/* 8. Display: the product, the total quantity and the average price.
Where the price is greater than 100.
And display only products with a total quantity greater than or equal to 2.
Ordered descending by total quantity.  */
SELECT
    ProductName,
    SUM(Quantity) AS TotalQuantity,
    AVG(Price) AS AveragePrice
FROM Orders
WHERE Price > 100
GROUP BY ProductName
HAVING SUM(Quantity) >= 2
ORDER BY SUM(Quantity) DESC;


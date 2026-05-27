/* 1. Display: all customers and their orders.
Ordered alphabetically by first name. */
SELECT *
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID
ORDER BY FirstName ASC;

/* 2. Display: the customers and the ordered products.
Only for customers from Cluj. */
SELECT
    c.FirstName,
    o.ProductName
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID
WHERE City = 'Cluj';


/* 3. Display: the customers and the products, including customers without orders, but exclude the product "Mouse". */
SELECT
    c.FirstName,
    o.ProductName
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.ProductName != 'Mouse'
OR o.ProductName IS NULL;


/* 4. Display: customers without orders and orders without a valid customer. */
SELECT *
FROM Customers AS c
FULL JOIN Orders AS o
ON c.CustomerID = o.CustomerID
WHERE c.CustomerID IS NULL
OR o.CustomerID IS NULL;


/* 5. Display: the customer's first name, the city, the total number of orders and the total order value.
Only for customers who have at least 1 order.
Ordered descending by total order value. */
SELECT
    c.FirstName,
    c.City,
    COUNT(o.OrderID) AS Orders,
    MAX(o.Price) AS Maximum
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.City
HAVING COUNT(o.OrderID) >= 1
ORDER BY Maximum DESC;



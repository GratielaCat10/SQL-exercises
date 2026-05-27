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



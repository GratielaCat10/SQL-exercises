/* 1. Display: the customer's first name and the ordered product.
Only for orders with a valid customer. */
SELECT
    c.FirstName,
    o.ProductName
FROM Customers AS c
INNER JOIN Orders AS o
ON c.CustomerID = o.CustomerID;


/* 2. Display: the customer's first name, the product and the price.
Ordered descending by price. */
SELECT
    c.FirstName,
    o.ProductName,
    o.Price
FROM Customers AS c
INNER JOIN Orders AS o
ON c.CustomerID = o.CustomerID
ORDER BY Price DESC;


/* 3. Display: the customer's first name and the product.
Only for products containing the letter "o". */
SELECT
    c.FirstName,
    o.ProductName
FROM Customers AS c
INNER JOIN Orders AS o
ON c.CustomerID = o.CustomerID
WHERE ProductName LIKE '%o%';


/* 4. Display: the customer's first name and the number of orders. */
SELECT
    c.FirstName,
    COUNT(o.OrderID) AS Orders
FROM Customers AS c
INNER JOIN Orders AS o
ON c.CustomerID = o.CustomerID
GROUP BY FirstName;

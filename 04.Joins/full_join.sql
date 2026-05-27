/* 1. Display: all customers and all orders, even if there is no match. */
SELECT *
FROM Customers AS c
FULL JOIN Orders AS o
ON c.CustomerID = o.CustomerID;


/* 2. Display: the customer's first name, the product and the price, including orders without a valid customer. */
SELECT
    c.FirstName,
    o.ProductName,
    o.Price
FROM Customers AS c
FULL JOIN Orders AS o
ON c.CustomerID = o.CustomerID;


/* 3. Display: the customer's first name, the city, the ordered product and the price.
Including: customers without orders and orders without a valid customer.
Show only: orders with a price greater than 500 OR customers without orders.
Ordered descending by price.  */
SELECT
    c.FirstName,
    c.City,
    o.ProductName,
    o.Price
FROM Customers AS c
FULL JOIN Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.Price > 500
OR o.OrderID IS NULL
ORDER BY o.Price DESC;



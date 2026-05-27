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


/* 1. Display: the customer's first name and the product name.
For all possible combinations. */
SELECT
    c.FirstName,
    o.ProductName
FROM Customers AS c
CROSS JOIN Orders AS o;


/* 2. Display: the customer's first name, the customer's city, the ordered product and the price.
For all possible combinations between: customers and orders.
Show only orders with a price greater than 1000.
Ordered descending by price.  */
SELECT
    c.FirstName,
    c.City,
    o.ProductName,
    o.Price
FROM Customers AS c
CROSS JOIN Orders AS o
WHERE o.Price > 1000
ORDER BY o.Price DESC;

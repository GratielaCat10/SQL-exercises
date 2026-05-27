/* 1. Display: the customer's first name and the product name.
For all possible combinations. */
SELECT
    c.FirstName,
    o.ProductName
FROM Customers AS c
CROSS JOIN Orders AS o;

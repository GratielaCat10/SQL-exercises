/* 1. Display: all customers and their orders.
Ordered alphabetically by first name. */
SELECT *
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID
ORDER BY FirstName ASC;






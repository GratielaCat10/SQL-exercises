-- 1. Display customers from Cluj.
SELECT *
FROM Customers
WHERE City = 'Cluj';


-- 2. Display customers older than 28.
SELECT *
FROM Customers
WHERE Age > 28;


-- 3. Display orders with a price greater than or equal to 1000.
SELECT *
FROM Orders
WHERE Price >= 1000;


-- 4. Display customers: from Cluj and younger than 30.
SELECT *
FROM Customers
WHERE City = 'Cluj' AND Age < 30;


-- 5. Display customers: from Cluj or from Iasi.
SELECT *
FROM Customers
WHERE City = 'Cluj' OR City = 'Iasi';


-- 6. Display customers who are NOT from Bucuresti.
SELECT *
FROM Customers
WHERE City != 'Bucuresti';


-- 7. Display customers aged between 25 and 35.
SELECT *
FROM Customers
WHERE Age BETWEEN 25 AND 35;


-- 8. Display customers from: Cluj, Iasi, Timisoara.
SELECT *
FROM Customers
WHERE City IN ('Cluj', 'Iasi', 'Timisoara');


-- 9. Display customers whose first name starts with the letter A.
SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';


-- 10. Display customers ordered by age ascending.
SELECT *
FROM Customers
ORDER BY Age ASC;


-- 11. Display orders ordered by price descending.
SELECT *
FROM Orders
ORDER BY Price DESC;


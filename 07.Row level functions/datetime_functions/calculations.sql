-- 1. Find the age of every employee.
SELECT
  FirstName,
  BirthDate,
  DATEDIFF(year, BirthDate, GETDATE()) AS Age
FROM Sales.Employees


-- 2. Find the average duration (in days) from the order date until the shipping date for every month.
SELECT
  DATENAME(month, OrderDate) AS Month,
  AVG(DATEDIFF(day, OrderDate, ShipDate)) AS Avg_Ship
FROM Sales.Orders
GROUP BY DATENAME(month, OrderDate)


-- 3. Find the number of days between every order and the previous one.
SELECT
  OrderID,
  OrderDate AS CurrentOrderDate,
  LAG(OrderDate) OVER (ORDER BY OrderDate) AS PreviousOrderDate,
  DATEDIFF(day, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) AS NrOfDays
FROM Sales.Orders


-- 4. Identify orders that were shipped later than the expected delivery date (7 days after order date).
SELECT
    OrderID,
    OrderDate,
    ShipDate,
    DATEADD(DAY, 7, OrderDate) AS ExpectedShipDate,
    DATEDIFF(DAY, DATEADD(DAY, 7, OrderDate), ShipDate) AS DelayInDays
FROM Sales.Orders
WHERE ShipDate > DATEADD(DAY, 7, OrderDate);


--- 5. 


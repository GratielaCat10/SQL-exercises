-- 1. Return orders that were created during the first 10 days of the month.
SELECT
    OrderID,
    OrderDate
FROM Sales.Orders
WHERE DAY(OrderDate) <= 10;


-- 2. Return all orders placed in February.
SELECT
    OrderID,
    OrderDate,
    Sales
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2;


-- 3. Display the year of each order date.
SELECT
    OrderID,
    OrderDate,
    YEAR(OrderDate) AS OrderYear
FROM Sales.Orders;


-- 4. Return the quarter in which each order was placed.
SELECT
    OrderID,
    OrderDate,
    DATEPART(QUARTER, OrderDate) AS QuarterNumber
FROM Sales.Orders;


-- 5. Display the weekday name for each order date.
SELECT
    OrderID,
    OrderDate,
    DATENAME(WEEKDAY, OrderDate) AS WeekdayName
FROM Sales.Orders;


-- 6. Truncate the creation time to the beginning of the hour.
SELECT
    OrderID,
    CreationTime,
    DATETRUNC(HOUR, CreationTime) AS StartOfHour
FROM Sales.Orders;


-- 7. Display the last day of the month for each order date.
SELECT
    OrderID,
    OrderDate,
    EOMONTH(OrderDate) AS EndOfMonth
FROM Sales.Orders;


-- 8. Return the start and end of the month for each order date.
SELECT
    OrderID,
    OrderDate,
    DATETRUNC(MONTH, OrderDate) AS StartOfMonth,
    EOMONTH(OrderDate) AS EndOfMonth
FROM Sales.Orders;


-- 9. Display the order creation hour together with the order month and year.
SELECT
    OrderID,
    YEAR(CreationTime) AS CreationYear,
    MONTH(CreationTime) AS CreationMonth,
    DATEPART(HOUR, CreationTime) AS CreationHour
FROM Sales.Orders;


-- 10. Return all orders placed during weekends together with the month name and end of month date.
SELECT
    OrderID,
    OrderDate,
    DATENAME(WEEKDAY, OrderDate) AS WeekdayName,
    DATENAME(MONTH, OrderDate) AS MonthName,
    EOMONTH(OrderDate) AS EndOfMonth
FROM Sales.Orders
WHERE DATENAME(WEEKDAY, OrderDate) IN ('Saturday', 'Sunday');


-- 11. Generate a monthly sales report that shows the total sales amount and total quantity of products sold for each month. 
--Include the year, month number, month name, and the last day of the month in the result.
SELECT
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth,
    DATENAME(MONTH, OrderDate) AS MonthName,
    EOMONTH(OrderDate) AS EndOfMonth,
    SUM(Sales) AS TotalSales,
    SUM(Quantity) AS TotalQuantity
FROM Sales.Orders
GROUP BY
    YEAR(OrderDate),
    MONTH(OrderDate),
    DATENAME(MONTH, OrderDate),
    EOMONTH(OrderDate)
ORDER BY
    OrderYear,
    OrderMonth;


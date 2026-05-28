-- 1. Display the order date in the format dd/MM/yyyy together with the sales amount formatted as currency.
SELECT
    OrderID,
    FORMAT(OrderDate, 'dd/MM/yyyy') AS FormattedOrderDate,
    FORMAT(Sales, 'C') AS FormattedSales
FROM Sales.Orders;


-- 2. Display the order month name and formatted sales value for orders with sales greater than 20.
SELECT
    OrderID,
    FORMAT(OrderDate, 'MMMM') AS MonthName,
    FORMAT(Sales, 'N2') AS SalesAmount
FROM Sales.Orders
WHERE Sales > 20;


-- 3. Cast the order date as a DATETIME value and display the result.
SELECT
    OrderID,
    CAST(OrderDate AS DATETIME) AS ConvertedOrderDate
FROM Sales.Orders;


-- 4. Convert the order date to VARCHAR using the dd/mm/yyyy format.
SELECT
    OrderID,
    CONVERT(VARCHAR, OrderDate, 103) AS ConvertedOrderDate
FROM Sales.Orders;


-- 5. Convert the creation time to a date-only format.
SELECT
    OrderID,
    CONVERT(DATE, CreationTime) AS CreationDate
FROM Sales.Orders;


-- 6. Display creation time using the following format: "Day Wed Jan Q1 2025 12:34:56 PM".
SELECT
  OrderID,
  CreationTime,
  'Day ' + FORMAT(CreationTime, 'ddd MMM') + ' Q' + DATENAME(quarter, CreationTime) +
  FORMAT(CreationTime, ' yyyy HH:mm:ss tt') AS CustomFormat
FROM Sales.Orders


-- 7. Generate a sales summary report that displays the order month-year label, the total number of orders 
-- and the total sales amount formatted with 2 decimal places.
SELECT
    FORMAT(OrderDate, 'MMMM yyyy') AS OrderMonth,
    COUNT(OrderID) AS TotalOrders,
    CAST(SUM(Sales) AS DECIMAL(10,2)) AS TotalSales
FROM Sales.Orders
GROUP BY
    FORMAT(OrderDate, 'MMMM yyyy')
ORDER BY
    OrderMonth;


-- 8. Generate a monthly shipping summary that displays the total number of shipped and delivered orders for each month together with the month-year label.
SELECT
    FORMAT(OrderDate, 'MMMM yyyy') AS OrderMonth,
    OrderStatus,
    COUNT(*) AS TotalOrders
FROM Sales.Orders
GROUP BY
    FORMAT(OrderDate, 'MMMM yyyy'),
    OrderStatus
ORDER BY
    MIN(OrderDate);


-- 9. Create a quarterly sales report showing the total sales amount and total orders for each quarter of the year.
SELECT
    CONCAT(
        'Q',
        DATEPART(QUARTER, OrderDate),
        ' ',
        YEAR(OrderDate)
    ) AS QuarterLabel,
    COUNT(OrderID) AS TotalOrders,
    SUM(Sales) AS TotalSales
FROM Sales.Orders
GROUP BY
    DATEPART(QUARTER, OrderDate),
    YEAR(OrderDate)
ORDER BY
    YEAR(OrderDate),
    DATEPART(QUARTER, OrderDate);



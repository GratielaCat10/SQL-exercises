/* Retrieve a complete order report that combines data from multiple related tables.
For each order, return:
  - OrderID
  - Customer first name and last name
  - Product name
  - Sales amount and product price
  - Sales employee (salesperson) first name and last name
The data must be joined from the following tables:
  - Sales.Orders
  - Sales.Customers
  - Sales.Products
  - Sales.Employees
Use LEFT JOIN to ensure that all orders are included in the result set, even if some related records are missing in the joined tables. */

SELECT
  o.OrderID,
  c.FirstName AS CustomerFirstName,
  c.LastName AS CustomerLastName,
  p.Product,
  o.Sales,
  p.Price,
  e.FirstName AS EmployeeFirstName,
  e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c ON o.CustomerID=c.CustomerID
LEFT JOIN Sales.Employees AS e ON o.SalesPersonID=e.EmployeeID
LEFT JOIN Sales.Products AS p ON o.ProductID=p.ProductID

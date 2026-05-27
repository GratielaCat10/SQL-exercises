-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    City VARCHAR(50),
    Age INT
);


-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    ProductName VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2)
);


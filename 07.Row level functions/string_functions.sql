-- 1. Create a full name column by combining FirstName and LastName.
SELECT 
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM Sales.Customers;


-- 2. Generate a customer profile sentence that includes the customer's full name, country, and score.
SELECT
    CONCAT(
        FirstName,
        ' ',
        LastName,
        ' lives in ',
        Country,
        ' and has a score of ',
        Score
    ) AS CustomerProfile
FROM Sales.Customers;


-- 3. Display all customer first names in uppercase letters.
SELECT 
    UPPER(FirstName) AS FirstNameUpper
FROM Sales.Customers;


-- 4. Convert country names to lowercase.
SELECT 
    LOWER(Country) AS CountryLower
FROM Sales.Customers;


-- 5. Remove leading and trailing spaces from FirstName values.
SELECT 
    TRIM(FirstName) AS CleanFirstName
FROM Sales.Customers;


-- 6. Combine trimmed first and last names into a clean full name column.
SELECT
    CONCAT(
        TRIM(FirstName),
        ' ',
        TRIM(LastName)
    ) AS CleanFullName
FROM Sales.Customers
WHERE LastName IS NOT NULL;


-- 7. Replace 'USA' with 'United States' in the Country column.
SELECT 
    REPLACE(Country, 'USA', 'United States') AS CountryName
FROM Sales.Customers;


-- 8. Mask the letter 'a' in customer first names with '*'.
SELECT
    FirstName,
    REPLACE(LOWER(FirstName), 'a', '*') AS MaskedName
FROM Sales.Customers;


-- 9. Display customers whose first name contains more than 5 characters.
SELECT
    FirstName,
    LEN(FirstName) AS NameLength
FROM Sales.Customers
WHERE LEN(FirstName) > 5;


-- 10. Generate customer short codes using the first 2 letters of the first name and country.
SELECT
    CONCAT(
        LEFT(FirstName,2),
        '_',
        LEFT(Country,2)
    ) AS ShortCode
FROM Sales.Customers;


-- 11. Create customer suffix codes using the last 3 letters of the country name.
SELECT
    Country,
    RIGHT(Country,3) AS CountrySuffix
FROM Sales.Customers;


-- 12. Extract the first 3 letters of the first name and the first 2 letters of the country.
SELECT
    CONCAT(
        SUBSTRING(FirstName,1,3),
        '_',
        SUBSTRING(Country,1,2)
    ) AS ExtractedCode
FROM Sales.Customers;


-- 13. Display each customer's first name and return the name without its first character.
SELECT
    FirstName,
    SUBSTRING(TRIM(FirstName), 2, LEN(FirstName)) AS sub_name
FROM Sales.Customers


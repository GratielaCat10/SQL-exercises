-- 1. Calculate the absolute difference between two numbers and round the result to 2 decimal places.
SELECT 
    ROUND(ABS(125.567 - 450.891), 2) AS RoundedDifference;


-- 2. Calculate the absolute value of a negative decimal number and round it to the nearest whole number.
SELECT 
    ROUND(ABS(-987.654), 0) AS RoundedAbsoluteValue;


-- 3. Find the rounded absolute result of dividing two decimal numbers.
SELECT 
    ROUND(ABS(125.75 / -3.42), 3) AS RoundedDivisionResult;


-- 4. Calculate the rounded absolute difference between two calculated expressions.
SELECT 
    ROUND(
        ABS((150.45 * 2) - (99.99 + 45.67)),
        1
    ) AS FinalResult;


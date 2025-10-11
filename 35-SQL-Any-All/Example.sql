-- SQL ANY and ALL Operators

-- ANY: Returns TRUE if any value in the subquery satisfies the condition.
-- ALL: Returns TRUE only if all values in the subquery satisfy the condition.

-- Syntax for ANY:
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY (SELECT column_name
                                FROM table_name
                                WHERE condition);

-- Syntax for ALL:
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL (SELECT column_name
                                FROM table_name
                                WHERE condition);

-- SQL ANY Examples
-- List ProductName if ANY OrderDetails.Quantity = 10
SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID
                       FROM OrderDetails
                       WHERE Quantity = 10);

-- List ProductName if ANY OrderDetails.Quantity > 99
SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID
                       FROM OrderDetails
                       WHERE Quantity > 99);

-- List ProductName if ANY OrderDetails.Quantity > 1000 (returns FALSE)
SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID
                       FROM OrderDetails
                       WHERE Quantity > 1000);

-- SQL ALL Examples
-- List ALL product names
SELECT ALL ProductName
FROM Products
WHERE TRUE;

-- List ProductName if ALL OrderDetails.Quantity = 10 (returns FALSE)
SELECT ProductName
FROM Products
WHERE ProductID = ALL (SELECT ProductID
                       FROM OrderDetails
                       WHERE Quantity = 10);
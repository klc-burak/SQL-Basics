-- SQL Arithmetic Operators
-- Used to perform mathematical operations in SQL.
-- Operator  | Description        | Example
-- ----------|--------------------|--------------------------
-- +         | Add                | SELECT 10 + 5;   --> 15
-- -         | Subtract           | SELECT 10 - 5;   --> 5
-- *         | Multiply           | SELECT 10 * 5;   --> 50
-- /         | Divide             | SELECT 10 / 5;   --> 2
-- %         | Modulo (remainder) | SELECT 10 % 3;   --> 1


-- SQL Bitwise Operators
-- Used to perform bit-level operations.
-- Operator  | Description
-- ----------|---------------------
-- &         | Bitwise AND
-- |         | Bitwise OR
-- ^         | Bitwise exclusive OR


-- SQL Comparison Operators
-- Used to compare two expressions or values.
-- Operator  | Description                 | Example
-- ----------|-----------------------------|---------------------------
-- =         | Equal to                    | SELECT * FROM Users WHERE Age = 25;
-- >         | Greater than                | SELECT * FROM Users WHERE Age > 18;
-- <         | Less than                   | SELECT * FROM Users WHERE Age < 60;
-- >=        | Greater than or equal to    | SELECT * FROM Users WHERE Age >= 21;
-- <=        | Less than or equal to       | SELECT * FROM Users WHERE Age <= 40;
-- <>        | Not equal to                | SELECT * FROM Users WHERE Country <> 'USA';


-- SQL Compound Operators
-- Used to combine assignment with an arithmetic or bitwise operation.
-- Operator  | Description
-- ----------|-----------------------
-- +=        | Add equals
-- -=        | Subtract equals
-- *=        | Multiply equals
-- /=        | Divide equals
-- %=        | Modulo equals
-- &=        | Bitwise AND equals
-- ^=        | Bitwise exclusive equals
-- |=        | Bitwise OR equals


-- SQL Logical Operators
-- Used to determine the truth of logical expressions.
-- Operator  | Description                                     | Example
-- ----------|-------------------------------------------------|-----------------------------------------------
-- ALL       | TRUE if all subquery values meet the condition  | WHERE Salary > ALL (SELECT Salary FROM Interns)
-- AND       | TRUE if all conditions separated by AND are TRUE| WHERE Age > 18 AND Country = 'USA'
-- ANY       | TRUE if any subquery value meets the condition  | WHERE Age = ANY (SELECT Age FROM Employees)
-- BETWEEN   | TRUE if value is within a range                 | WHERE Age BETWEEN 18 AND 30
-- EXISTS    | TRUE if subquery returns one or more records    | WHERE EXISTS (SELECT * FROM Orders WHERE ...)
-- IN        | TRUE if value matches any in a list             | WHERE Country IN ('USA', 'UK', 'Canada')
-- LIKE      | TRUE if value matches a pattern                 | WHERE Name LIKE 'A%'
-- NOT       | Negates a condition                             | WHERE NOT Country = 'USA'
-- OR        | TRUE if any condition separated by OR is TRUE   | WHERE City = 'London' OR City = 'Paris'
-- SOME      | TRUE if any subquery value meets the condition  | WHERE Salary > SOME (SELECT Salary FROM Interns)
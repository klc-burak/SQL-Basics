-- SQL Injection

-- SQL Injection is a code injection technique that can destroy your database.
-- It occurs when an attacker places malicious SQL code into an input field
-- to manipulate queries executed by your application.

-- SQL in Web Pages
-- Suppose we ask a user for input (e.g., UserId) and use it directly in a query:
txtUserId = getRequestString("UserId");
txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId;

-- If the user enters a malicious value, this query can be exploited.


-- Example 1: SQL Injection Based on "1=1 is Always True"
-- Input:
-- UserId: 105 OR 1=1

-- The resulting SQL becomes:
SELECT *
FROM Users
WHERE UserId = 105 OR 1=1;

-- Since 1=1 is always TRUE, this query returns ALL rows from the "Users" table,
-- possibly exposing sensitive information like usernames and passwords.


-- Example 2: SQL Injection Based on ""="" is Always True
uName = getRequestString("username");
uPass = getRequestString("userpassword");
sql = 'SELECT * FROM Users WHERE Name ="' + uName + '" AND Pass ="' + uPass + '"';

-- Normal input:
-- Username: John Doe
-- Password: myPass
-- Result:
SELECT *
FROM Users
WHERE Name ="John Doe" AND Pass ="myPass";

-- Malicious input:
-- Username: " or ""="
-- Password: " or ""="
-- Result:
SELECT *
FROM Users
WHERE Name ="" or ""="" AND Pass ="" or ""="";
-- This also returns all rows because ""="" is always TRUE.


-- Example 3: SQL Injection Based on Batched SQL Statements
-- Some databases allow multiple SQL statements separated by semicolons (;)
-- Example malicious input:
-- UserId: 105; DROP TABLE Suppliers

-- The resulting SQL:
SELECT *
FROM Users
WHERE UserId = 105; DROP TABLE Suppliers;
-- This query returns all users and then deletes the "Suppliers" table.


-- Protection: Use SQL Parameters (Parameterized Queries)
-- The safest way to prevent SQL Injection is to use parameters.
-- Parameters ensure user input is treated as data, not as executable code.


-- Example in ASP.NET Razor:
txtUserId = getRequestString("UserId");
txtSQL = "SELECT * FROM Users WHERE UserId = @0";
db.Execute(txtSQL, txtUserId);

-- Example with multiple parameters:
txtNam = getRequestString("CustomerName");
txtAdd = getRequestString("Address");
txtCit = getRequestString("City");
txtSQL = "INSERT INTO Customers (CustomerName, Address, City) VALUES (@0, @1, @2)";
db.Execute(txtSQL, txtNam, txtAdd, txtCit);


-- Example in ASP.NET (C#)
txtUserId = getRequestString("UserId");
sql = "SELECT * FROM Customers WHERE CustomerId = @0";
command = new SqlCommand(sql);
command.Parameters.AddWithValue("@0", txtUserId);
command.ExecuteReader();


-- Example in PHP (PDO)
$stmt = $dbh->prepare("INSERT INTO Customers (CustomerName, Address, City)
                       VALUES (:nam, :add, :cit)");
$stmt->bindParam(':nam', $txtNam);
$stmt->bindParam(':add', $txtAdd);
$stmt->bindParam(':cit', $txtCit);
$stmt->execute();

-- Summary:
-- Never concatenate user input directly into SQL queries.
-- Always use parameterized queries or stored procedures.
-- Validate and sanitize user input before executing database operations.
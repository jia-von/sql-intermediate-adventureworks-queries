--Challenge: Determine how many employees have a login ID ending with each number (0-9).
--It was determined from the Data Dictionary at LoginID key was found in the employee table. 
--UNION ALL was used because there is duplicate found in the COUNT(LoginID) @link: https://dotnettutorials.net/lesson/differences-between-union-except-and-intersect-operators-in-sql-server/

SELECT COUNT(LoginID) FROM employee WHERE LoginID LIKE '%0' --Output 222
UNION ALL
SELECT COUNT(LoginID) FROM employee WHERE LoginID LIKE '%1' --Output 38
UNION ALL
SELECT COUNT(LoginID) FROM employee WHERE LoginID LIKE '%2' --Output 11
UNION ALL
SELECT COUNT(LoginID) FROM employee WHERE LoginID LIKE '%3' --Output 6
UNION ALL
SELECT COUNT(LoginID) FROM employee WHERE LoginID LIKE '%4' --Output 3
UNION ALL
SELECT COUNT(LoginID) FROM employee WHERE LoginID LIKE '%5' --Output 3
UNION ALL
SELECT COUNT(LoginID) FROM employee WHERE LoginID LIKE '%6' --Output 2
UNION ALL
SELECT COUNT(LoginID) FROM employee WHERE LoginID LIKE '%7' --Output 2
UNION ALL
SELECT COUNT(LoginID) FROM employee WHERE LoginID LIKE '%8' --Output 2
UNION ALL
SELECT COUNT(LoginID) FROM employee WHERE LoginID LIKE '%9'; --Output 1


--Challenge: Determine the first and last names of the employees who were hired in the most recent uptake. 
--Structure the query so that it will continue to work if new employees are hired (do not use a literal hire date value in the query).

--it was determined that employee table has HireDate
--Check data first using ORDER BY function

SELECT * FROM `employee`
ORDER BY HireDate DESC; 

SELECT c.FirstName, c.LastName, e.HireDate FROM employee e 
LEFT OUTER JOIN contact c
ON c.ContactID = e.ContactID
ORDER BY e.HireDate DESC
LIMIT 3;

--Current output is Lynn Tsoflias and Rachel Valdez. 


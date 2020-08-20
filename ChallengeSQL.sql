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


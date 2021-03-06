--Query: Determine the employee with the highest accumulated vacation hours.
--VacationHours column is found employee table

--The highest VacationHours would be:
SELECT MAX(VacationHours) FROM employee;

-- MAX(VacationHours) = 99

SELECT*FROM employee where VacationHours = '99';

--EmployeeID with VacationHours of 99 are 109, 179, 224

--Join two tables together with ContactID using unique table/alias
SELECT c.FirstName, c.LastName, c.ContactID, e.EmployeeID 
FROM contact c 
LEFT OUTER JOIN employee e 
ON e.ContactID = c.ContactID 
WHERE e.EmployeeID IN (109, 179, 224) 

--Output Is Ken Sanchez, Chad Niswonger, and Betsy Stadick. 

--Query: Determine how many employees there are whose names start with the letter S.

--According to the DataDictionary, employee table has ContactID foreign key. I filtered all the names with ContactID IS NOT NULL in contact table, therefore all employee should have ContactID in contact table. 

--According to the table there is a total of 1281, however I will use the COUNT function to compute. 
--The answer matches

SELECT COUNT(c.FirstName) from contact c
LEFT OUTER JOIN employee e
ON e.ContactID = c.ContactID
WHERE e.EmployeeID IS NOT NULL AND c.FirstName LIKE 'S%'; -- Output COUNT(FirstName) = 31

--Query: Determine the current payrate of the CEO of Adventure Works.
--Find Title with 'chief' for CEO

SELECT Title FROM employee WHERE Title LIKE 'chief%' 

--It was found that the CEO has NationalID = 295847284, Employee ID = 109, Contact ID = 1287
--The full title name is Chief Executive Officer

SELECT hist.Rate, hist.EmployeeID FROM employeepayhistory hist
INNER JOIN employee e
ON e.EmployeeID = hist.EmployeeID
WHERE e.EmployeeID = '109'; --Output ay Rate: 125.5. 

--Query: Determine how many employees are currently employed in each department.

--Both employeedepartmenthistory and department share the same DepartmentID key, where department has the DepartmentID as primary key
--Currently Active employee

SELECT DepartmentID FROM `employeedepartmenthistory` WHERE  EndDate IS NULL;

--to join department and employeedepartmenthistory with DepartmentID key. 

SELECT COUNT(dept.DepartmentID), dept.Name FROM department dept 
LEFT OUTER JOIN employeedepartmenthistory emp 
ON emp.DepartmentID = dept.DepartmentID 
WHERE emp.EndDate IS NULL
GROUP BY dept.Name; 


--used GROUP BY function to group categories together
--@link: https://www.w3schools.com/sql/sql_groupby.asp

--Employee      Dept Name
--5 	        Document Control
--6 	        Engineering
--2 	        Executive
--7 	        Facilities and Maintenance
--10 	        Finance
--6 	        Human Resources
--10 	        Information Services
--9 	        Marketing
--179	        Production
--6 	        Production Control
--12 	        Purchasing
--6 	        Quality Assurance
--4 	        Research and Development
--18 	        Sales
--6 	        Shipping and Receiving
--4 	        Tool Design






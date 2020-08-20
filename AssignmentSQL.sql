--Query: Determine the employee with the highest accumulated vacation hours.
--VacationHours column is found employee table

--The highest VacationHours would be:
SELECT MAX(VacationHours) FROM employee;

--ContactID is 1209, MAX(VacationHours) = 99

--Join two tables together with ContactID using unique table/alias
SELECT c.FirstName, c.LastName, c.ContactID FROM contact c 
INNER JOIN employee e ON e.ContactID = c.ContactID 
WHERE c.ContactID IN
(SELECT ContactID FROM employee HAVING MAX(VacationHours));
--Output is Guy Gilbert. 

--Query: Determine how many employees there are whose names start with the letter S.

--According to the DataDictionary, employee table has ContactID foreign key. I filtered all the names with ContactID IS NOT NULL in contact table, therefore all employee should have ContactID in contact table. 

--According to the table there is a total of 1281, however I will use the COUNT function to compute. 
--The answer matches

SELECT COUNT(FirstName), ContactID FROM contact WHERE ContactID IS NOT NULL AND FirstName LIKE 'S%'; -- Output COUNT(FirstName) = 1281

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

--to join department and employeedepartmenthistory with DepartmentID key. 

SELECT COUNT(dept.DepartmentID), dept.Name FROM department dept INNER JOIN employeedepartmenthistory emp 
ON emp.DepartmentID = dept.DepartmentID 
GROUP BY dept.Name 

--used GROUP BY function to group categories together
--@link: https://www.w3schools.com/sql/sql_groupby.asp

--Employee      Dept Name
--5 	        Document Control
--7 	        Engineering
--2 	        Executive
--7 	        Facilities and Maintenance
--11 	        Finance
--6 	        Human Resources
--10 	        Information Services
--10 	        Marketing
--180 	        Production
--6 	        Production Control
--13 	        Purchasing
--7 	        Quality Assurance
--4 	        Research and Development
--18 	        Sales
--6 	        Shipping and Receiving
--4 	        Tool Design






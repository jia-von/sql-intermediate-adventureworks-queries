--Query: Determine the employee with the highest accumulated vacation hours.
--VacationHours column is found employee table

--The highest VacationHours would be:
SELECT MAX(VacationHours) as MaxVacation FROM employee;

--ContactID is 1209, MAX(VacationHours) = 99

--Join two tables together with ContactID using unique table/alias
SELECT c.FirstName, c.LastName, c.ContactID FROM contact c 
INNER JOIN employee e ON e.ContactID = c.ContactID WHERE c.ContactID = '1209' --Output is Guy Gilbert. 

--Query: Determine how many employees there are whose names start with the letter S.

--According to the DataDictionary, employee table has ContactID foreign key. I filtered all the names with ContactID IS NOT NULL in contact table, therefore all employee should have ContactID in contact table. 

--According to the table there is a total of 1281, however I will use the COUNT function to compute. 
--The answer matches

SELECT COUNT(FirstName), ContactID FROM contact WHERE ContactID IS NOT NULL AND FirstName LIKE 'S%'; -- Output COUNT(FirstName) = 1281




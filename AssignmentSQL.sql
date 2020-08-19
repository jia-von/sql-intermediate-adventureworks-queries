--Query: Determine the employee with the highest accumulated vacation hours.
--VacationHours column is found employee table

--The highest VacationHours would be:
SELECT MAX(VacationHours) as MaxVacation FROM employee;

--ContactID is 1209, MAX(VacationHours) = 99

--Join two tables together with ContactID using unique table/alias
SELECT c.FirstName, c.LastName, c.ContactID FROM contact c 
INNER JOIN employee e ON e.ContactID = c.ContactID WHERE c.ContactID = '1209' 

--Name is Guy Gilbert. 



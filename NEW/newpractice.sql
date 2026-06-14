-- use office

-- SHOW tables

-- SELECT * FROM employes

-- CREATE TABLE departments (
--     DepartmentID INT PRIMARY KEY,
--     DepartmentName VARCHAR(50)
-- );

-- INSERT INTO departments VALUES
-- (101, 'Data Science'),
-- (102, 'AI'),
-- (103, 'Analytics'),
-- (104, 'Engineering'),
-- (105, 'HR');


-- SELECT * FROM departments

-- CREATE TABLE emplooyees (
--     EmployeeID INT PRIMARY KEY,
--     EmployeeName VARCHAR(50),
--     DepartmentID INT,
--     Salary INT
-- );


-- INSERT INTO emplooyees VALUES
-- (1, 'Rahul', 101, 50000),
-- (2, 'Rohit', 101, 60000),
-- (3, 'Virat', 102, 70000),
-- (4, 'Dhoni', 102, 80000),
-- (5, 'Hardik', 103, 55000);

-- SELECT * FROM emplooyees



-- SELECT EmployeeName,Salary,DepartmentID

-- FROM emplooyees WHERE DepartmentID in (
-- SELECT DepartmentID FROM emplooyees
-- GROUP BY DepartmentID HAVING MAX(Salary) > 75000)


-- SELECT EmployeeName,Salary,DepartmentID

-- FROM emplooyees WHERE DepartmentID in (

-- SELECT DepartmentID FROM emplooyees
-- GROUP BY DepartmentID HAVING MIN(Salary)<60000)


-- SELECT EmployeeName , Salary FROM emplooyees

-- WHERE Salary > ANY(

-- SELECT salary FROM emplooyees
-- WHERE DepartmentID=101)



-- SELECT EmployeeName,Salary
-- FROM emplooyees WHERE Salary > all(

-- SELECT salary FROM emplooyees
-- WHERE DepartmentID=101)


-- SELECT EmployeeName,Salary FROM emplooyees
-- WHERE Salary <ANY(

-- SELECT salary FROM emplooyees
-- WHERE DepartmentID=102)


-- SELECT EmployeeName,Salary FROM emplooyees

-- WHERE Salary < ALL(

-- SELECT Salary
-- FROM emplooyees WHERE DepartmentID=102)



-- SELECT EmployeeName,Salary,DepartmentID

-- FROM emplooyees e1

-- WHERE Salary > (

-- SELECT avg(salary)
-- FROM emplooyees e2 

-- WHERE e1.DepartmentID=e2.DepartmentID

-- )



-- SELECT EmployeeName,salary,DepartmentID

-- FROM emplooyees e1
-- WHERE Salary <(

-- SELECT AVG(Salary) FROM emplooyees e2
-- WHERE e1.DepartmentID=e2.DepartmentID

-- )


-- SELECT EmployeeName,Salary,DepartmentID

-- from emplooyees e1

-- WHERE Salary = (

-- SELECT max(Salary) FROM emplooyees e2

-- WHERE e1.DepartmentID=e2.DepartmentID)


-- SELECT EmployeeName,salary,DepartmentID

-- FROM emplooyees e1 WHERE Salary =
-- (
--     SELECT MIN(salary) from emplooyees e2

--     WHERE e1.DepartmentID=e2.DepartmentID
-- )




-- SELECT EmployeeName,Salary,DepartmentID

-- FROM employes e1 WHERE Salary >(
-- SELECT min(Salary) FROM employes e2 

-- WHERE e1.DepartmentID=e2.DepartmentID)



-- SELECT EmployeeName,DepartmentID,Salary

-- FROM employes e1 WHERE Salary <
-- (
--     SELECT max(salary) from emplooyees e2
--     WHERE e1.DepartmentID=e2.DepartmentID
-- )




-- SELECT EmployeeName,salary,DepartmentID

-- FROM emplooyees e1 WHERE Salary !=(


-- SELECT avg(Salary) FROM employes e2 

-- WHERE e1.DepartmentID=e2.DepartmentID)


-- SELECT EmployeeName,salary,DepartmentID

-- FROM emplooyees e1 WHERE 
-- Salary >(SELECT min(salary) from employes e2 WHERE e1.DepartmentID=e2.DepartmentID)
-- and
-- salary < (SELECT max(salary) from employes e2 WHERE e1.DepartmentID=e2.DepartmentID)


-- SELECT EmployeeName,Salary

-- FROM emplooyees WHERE Salary >(
--     SELECT AVG(salary) from employes
-- )



-- SELECT EmployeeName,salary,DepartmentID
-- FROM emplooyees e1 WHERE Salary = (
--     SELECT AVG(Salary) from emplooyees e2
--     WHERE e1.DepartmentID=e2.DepartmentID
-- )
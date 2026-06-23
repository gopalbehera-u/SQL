-- SELECT * FROM employee


-- SHOW databases


-- CREATE DATABASE IF NOT EXISTS coding

-- USE coding

-- CREATE TABLE employee_names (
--     EmployeeID INT,
--     EmployeeName VARCHAR(50),
--     Salary INT
-- );



-- INSERT INTO employee_names
-- VALUES
-- (1,'Rahul',50000),
-- (2,'Rohit',60000),
-- (3,'Ankit',55000),
-- (4,'Ramesh',70000),
-- (5,'Sita',45000),
-- (6,'Riya',65000),
-- (7,'Aman',52000),
-- (8,'Ram',75000);



-- CREATE TABLE department (
--     DepartmentID INT PRIMARY KEY,
--     DepartmentName VARCHAR(50)
-- );


-- INSERT INTO department
-- VALUES
-- (101,'HR'),
-- (102,'IT'),
-- (103,'Finance');



-- CREATE TABLE employee (
--     EmployeeID INT PRIMARY KEY,
--     EmployeeName VARCHAR(50),
--     Salary INT,
--     DepartmentID INT
-- );



-- INSERT INTO employee
-- VALUES
-- (1,'Rahul',50000,101),
-- (2,'Rohit',60000,102),
-- (3,'Virat',70000,102),
-- (4,'Ankit',55000,103),
-- (5,'Ramesh',80000,101),
-- (6,'Sita',45000,103);





-- SELECT * FROM employee_names WHERE EmployeeName LIke 'R%'


-- SELECT * FROM employee_names WHERE EmployeeName LIke '%a'


-- SELECT * FROM employee_names WHERE EmployeeName LIke '%am%'



-- SELECT * FROM employee_names WHERE length(EmployeeName)=5


-- SELECT upper(EmployeeName) FROM employee_names



-- SELECT EmployeeName , length(EmployeeName) as 'name lenght' FROM employee_names


-- SELECT employeename , LEFT(EmployeeName,3) as 'First 3 Char' FROM employee_names

-- SELECT employeename,RIGHT(EmployeeName,2) as 'Last 2 char' FROM employee_names


-- SELECT EmployeeName,Salary FROM employee_names WHERE Salary >(SELECT avg(Salary) FROM employee)

SELECT 

employeename,salary FROM employee_names

(SELECT department)
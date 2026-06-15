-- show tables

-- use office

-- SELECT *

-- FROM (SELECT  
-- employeename,salary,
-- DENSE_RANK() OVER(ORDER BY salary DESC) as dr
-- FROM employes

-- ) t WHERE dr=2




-- for row number

-- a=1
-- b=2
-- c=3
-- d=4


-- for rank()

-- a=1
-- b=2
-- c=2
-- d=4

-- for DENSE_RANK()

-- a=1
-- b=2
-- c=2
-- d=3


-- SELECT * FROM 

-- SELECT employeename,salary,
-- row_number() OVER(ORDER by salary DESC) as num
-- FROM emplooyees



-- CREATE TABLE employee_ranking (
--     EmployeeID INT,
--     EmployeeName VARCHAR(50),
--     DepartmentID INT,
--     Salary INT
-- );



-- INSERT INTO employee_ranking VALUES
-- (1, 'Rahul', 101, 50000),
-- (2, 'Rohit', 101, 60000),
-- (3, 'Virat', 102, 70000),
-- (4, 'Dhoni', 102, 80000),
-- (5, 'Hardik', 103, 55000),
-- (6, 'Gill', 103, 65000),
-- (7, 'Pant', 104, 90000),
-- (8, 'Surya', 104, 80000),
-- (9, 'KL Rahul', 105, 70000),
-- (10, 'Jadeja', 105, 60000);

-- SELECT * FROM employee_ranking


-- SELECT EmployeeName,Salary,
-- RANK() OVER(ORDER BY salary DESC) as rnk
-- FROM employee_ranking


-- SELECT EmployeeName,Salary,
-- DENSE_RANK() OVER(ORDER BY Salary DESC) as rnk
-- FROM employee_ranking


-- SELECT * FROM (
--     SELECT EmployeeName,Salary,
--     DENSE_RANK() OVER(ORDER BY Salary DESC) as rnk
--     FROM employee_ranking
-- ) AS t WHERE rnk=3




-- SELECT * FROM (
--     SELECT EmployeeName,salary ,
--     ROW_NUMBER()
--     OVER(ORDER BY salary DESC) as rk
--     FROM employee_ranking

-- ) as t WHERE rk=2


-- SELECT EmployeeName,Salary,DepartmentID,
-- ROW_NUMBER()
-- OVER(PARTITION BY DepartmentID ORDER BY Salary DESC)
-- FROM employee_ranking




-- SELECT EmployeeName,DepartmentID,Salary,
-- ROW_NUMBER() OVER(PARTITION BY DepartmentID ORDER BY salary DESC)
-- FROM employee_ranking


-- CREATE DATABASE office
-- USE office
-- CREATE TABLE IF NOT EXISTS employees(
--     EmployeesID INT auto_increment primary key,
--     EmployeesName varchar(30),
--     DepartmentID INT ,
--     salary int 

-- )


-- CREATE TABLE IF NOT EXISTS Department(
--     Department INT,
--     DepartmentName VARCHAR(30)
-- )

-- INSERT INTO employees VALUES
-- (1,"Rahul",101,50000),
-- (2,"Rohit",102,60000),
-- (3,"Virat",103,70000),
-- (4,"Dhoni",104,80000),
-- (5,"Hardik",105,55000)



-- INSERT INTO Department VALUES
-- (101,"Data Science"),
-- (102,"AI"),
-- (103,"Data Analytics")


-- SELECT * FROM employees


-- SELECT * FROM department


-- SELECT EmployeesName,salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees)


-- SELECT EmployeesName,salary FROM employees WHERE salary = (SELECT max(salary) FROM employees)



-- Show all employees whose salary is equal
--  to the lowest salary in the company.

-- SELECT EmployeesName,salary FROM employees WHERE salary = (SELECT min(salary) FROM employees)


-- SELECT EmployeesName ,salary from employees GROUP BY EmployeesName HAVING AVG(salary)<salary


-- SELECT EmployeesName,salary FROM employees WHERE salary > (SELECT min(salary) FROM employees)


-- SELECT EmployeesName,salary FROM employees WHERE salary <(SELECT max(salary) from employees )



-- SELECT EmployeesName,salary FROM employees WHERE salary  BETWEEN (SELECT min(salary) from employees) and ( SELECT max(salary) from employees)


-- SELECT EmployeesName,salary FROM employees WHERE salary> (SELECT salary from employees WHERE EmployeesName='Rahul')



-- SELECT EmployeesName,salary FROM employees WHERE salary <(SELECT salary from employees WHERE EmployeesName="Dhoni")


-- SELECT EmployeesName,salary FROM employees WHERE salary =(SELECT salary from employees WHERE EmployeesName='Virat' )



-- SELECT EmployeesName,salary FROM employees WHERE
--  salary >(SELECT salary from employees WHERE EmployeesName='Rahul' ) and
-- salary <(SELECT salary from employees WHERE EmployeesName="Dhoni")



-- SELECT salary,EmployeesName FROM employees WHERE salary > (SELECT AVG(salary) from employees)
-- and salary <(SELECT max(salary) from employees)


-- SELECT salary,EmployeesName FROM employees WHERE
-- salary <>(SELECT max(salary) FROM employees)



-- SELECT EmployeesName,salary FROM employees
-- WHERE salary <> (SELECT min(salary) from employees)

-- SELECT AVG(salary) FROM (SELECT salary FROM employees WHERE salary > 60000)  t


-- SELECT min(salary) FROM (SELECT salary FROM employees WHERE salary >55000) t


-- SELECT max(salary) FROM  (SELECT salary FROM employees WHERE salary < 70000) t


-- SELECT sum(salary) FROM (SELECT salary FROM employees WHERE salary > 55000) t 


-- SELECT count(*) FROM (SELECT salary FROM employees WHERE salary > 55000) t



-- SELECT AVG(salary) FROM (
--     SELECT salary FROM employees 
--     WHERE salary < (SELECT AVG(salary) from employees)
-- ) t


-- SELECT min(salary) FROM (
--     SELECT salary FROM employees 
--     WHERE salary >(SELECT AVG(salary) from employees)
-- ) t




-- SELECT max(salary) FROM (
--     SELECT salary FROM employees 
--     WHERE salary >(SELECT AVG(salary) from employees)
-- ) t



-- SELECT sum(salary) FROM (
--     SELECT salary FROM employees 
--     WHERE salary <(SELECT max(salary) from employees)
-- ) t


-- SELECT AVG(salary) FROM (
--     SELECT DepartmentID,sum(salary) FROM employees GROUP BY EmployeeID
-- ) t





-- CREATE TABLE employes (
--     EmployeeID INT,
--     EmployeeName VARCHAR(50),
--     DepartmentID INT,
--     Salary INT
-- );



-- INSERT INTO employes VALUES
-- (1,'Rahul',101,50000),
-- (2,'Rohit',101,60000),
-- (3,'Virat',102,70000),
-- (4,'Dhoni',102,80000),
-- (5,'Hardik',103,55000),
-- (6,'Gill',103,65000),
-- (7,'Pant',104,90000),
-- (8,'Surya',104,75000);


-- SELECT * FROM employes


-- CREATE TABLE departmnts (
--     DepartmentID INT,
--     DepartmentName VARCHAR(50)
-- );


-- INSERT INTO departmnts VALUES
-- (101,'Data Science'),
-- (102,'AI'),
-- (103,'Analytics'),
-- (104,'Engineering');


-- SELECT * FROM departmnts



-- SELECT AVG(totalsalary) FROM (
--     SELECT DepartmentID,sum(salary) as totalsalary
--     FROM employes
--     GROUP BY DepartmentID

-- ) t


-- SELECT count(*) FROM (
--     SELECT DepartmentID,sum(salary) as totalsalary
--     FROM employes
--     GROUP BY DepartmentID 
-- ) t WHERE totalsalary> 120000



-- SELECT EmployeeName, salary, AVG(salary) OVER()
-- FROM employes


-- SELECT EmployeeName,Salary,
-- ROW_NUMBER() OVER(
--     ORDER by salary DESC
--     -- gives unique row number 
-- ) as rn from employes 




-- SELECT EmployeeName,Salary,RANK()
-- OVER(
--     ORDER BY salary DESC
-- ) as rnk

-- FROM employes



SELECT EmployeeName,
       Salary,
       DENSE_RANK() OVER(
           ORDER BY Salary DESC
       ) AS drnk
FROM employes;
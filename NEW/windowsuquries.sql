-- SHOW databases;


-- use leo

-- SHOW tables

-- SELECT * FROM marks

-- use office

-- SHOW tables


-- SELECT * FROM departmnts

-- SELECT * FROM employes


-- SELECT AVG(totalsalry) FROM

-- (SELECT  DepartmentID,
-- sum(salary) as totalsalry

-- FROM employes

-- GROUP BY DepartmentID

-- ) t


-- SELECT t.DepartmentID, max(totalsalary) FROM (
-- SELECT DepartmentID,sum(salary) as totalsalary FROM employes

-- GROUP BY DepartmentID) t GROUP BY t.DepartmentID ORDER BY  max(totalsalary) DESC LIMIT 1



-- SELECT t.DepartmentID ,min(totalsalary) FROM (
--     SELECT 
-- DepartmentID,sum(salary) as totalsalary FROM employes

-- GROUP BY DepartmentID

-- ) t GROUP BY t.DepartmentID  ORDER BY min(totalsalary) DESC LIMIT 1



-- SELECT count(*) FROM
-- (SELECT DepartmentID,sum(salary) as totalsalary FROM employes
-- GROUP BY DepartmentID) t WHERE totalsalary <130000

-- SELECT AVG(totalsalary) FROM (
-- SELECT DepartmentID,sum(salary) as totalsalary
-- FROM employes GROUP BY DepartmentID) t WHERE totalsalary >120000



-- SELECT DepartmentID,
--        TotalSalary
-- FROM (
--     SELECT DepartmentID,
--            SUM(Salary) AS TotalSalary
--     FROM employees
--     GROUP BY DepartmentID
-- ) t
-- WHERE TotalSalary >
-- (
--     SELECT AVG(TotalSalary)
--     FROM (
--         SELECT DepartmentID,
--                SUM(Salary) AS TotalSalary
--         FROM employees
--         GROUP BY DepartmentID
--     ) x
-- );


-- SELECT count(*) FROM (
-- SELECT DepartmentID,sum(Salary) as totalsalary
-- FROM employes GROUP BY DepartmentID) t

-- WHERE totalsalary >
-- (
--     SELECT AVG(TotalSalary)FROM( 
-- SELECT DepartmentID,SUM(Salary) as totalsalary
-- FROM employes GROUP BY DepartmentID) x)

-- SELECT DepartmentID,
--        TotalSalary
-- FROM (
--     SELECT DepartmentID,
--            SUM(Salary) AS TotalSalary
--     FROM employees
--     GROUP BY DepartmentID
-- ) t
-- ORDER BY TotalSalary DESC
-- LIMIT 1,1;


-- SELECT DepartmentID,
--        TotalSalary
-- FROM (
--     SELECT DepartmentID,
--            SUM(Salary) AS TotalSalary
--     FROM employees
--     GROUP BY DepartmentID
-- ) t
-- WHERE TotalSalary =
-- (
--     SELECT MAX(TotalSalary)
--     FROM (
--         SELECT DepartmentID,
--                SUM(Salary) AS TotalSalary
--         FROM employees
--         GROUP BY DepartmentID
--     ) x
-- );


-- SELECT EmployeeName,salary,DepartmentID FROM employes

-- WHERE DepartmentID in (
-- SELECT DepartmentID FROM employes
-- WHERE Salary>65000
-- )

-- SELECT * FROM employes


-- SELECT EmployeeName,Salary,DepartmentID
-- FROM employes WHERE DepartmentID not in 
-- (SELECT DepartmentID FROM employes

-- WHERE Salary > 65000) 



-- SELECT Salary,EmployeeName,DepartmentID from employes
-- WHERE Salary=90000



-- SELECT EmployeeName,salary,DepartmentID
-- from employes WHERE DepartmentID in (

-- SELECT DepartmentID from employes
-- WHERE Salary=90000


-- )



-- SELECT DepartmentID,Salary,EmployeeName

-- FROM employes WHERE DepartmentID in (


-- SELECT DepartmentID from employes
-- WHERE salary <55000)



-- SELECT EmployeeName,DepartmentID,Salary

-- FROM employes WHERE DepartmentID NOT IN (

-- SELECT DepartmentID from employes
-- WHERE Salary <55000)


-- SELECT EmployeeName,salary,DepartmentID

-- FROM employes WHERE DepartmentID in (

-- SELECT DepartmentID from employes
-- WHERE Salary in (90000,80000))




-- SELECT DepartmentID,salary,EmployeeName FROM employes

-- WHERE DepartmentID in (

-- SELECT  DepartmentID FROM employes
-- WHERE Salary !=80000)





-- SELECT DepartmentID,salary,EmployeeName FROM employes

-- WHERE DepartmentID not  in (

-- SELECT  DepartmentID FROM employes
-- WHERE Salary >80000)


SELECT EmployeeName,DepartmentID,salary FROM employes

WHERE DepartmentID IN (

SELECT DepartmentID FROM employes
WHERE Salary >60000
GROUP BY DepartmentID HAVING count(*)>=2
)
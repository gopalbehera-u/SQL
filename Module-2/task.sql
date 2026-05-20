-- SHOW databases;

-- use sqlpractice;


-- SHOW tables;


-- SELECT * from employees;


-- SELECT NAME from employees WHERE DEPARTMENT='IT';



-- SELECT NAME FROM employees WHERE salary>50000;



-- SELECT NAME , salary from employees where salary < 50000;

-- SELECT NAME , salary from employees where salary >=50000;


-- SELECT NAME,AGE from employees WHERE AGE<=25;

-- SELECT NAME,DEPARTMENT from employees where DEPARTMENT!='IT';

-- SELECT NAME,salary FROM employees WHERE DEPARTMENT='IT' AND salary>50000;


-- SELECT NAME,city from employees where  CITY = 'Delhi' or CITY='Mumbai';

-- SELECT NAME,CITY FROM employees WHERE CITY in ('Delhi' ,'Mumbai');


-- SELECT NAME,salary from employees WHERE salary  BETWEEN 45000 and 50000;


-- SELECT name, CITY from employees WHERE CITY in ("Delhi","Mumbai","Pune");


SELECT name, DEPARTMENT FROM employees where DEPARTMENT NOT IN ("IT","HR");
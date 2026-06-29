-- -- CREATE DATABASE IF NOT EXISTS NIT

-- -- -- CREATE TABLE IF NOT EXISTS student(
-- -- --     sid int,
-- -- --     sname VARCHAR(20),
-- -- --     dob DATE,
-- -- --     mark int
-- -- -- )

-- -- USE NIT

-- -- SHOW TABLES

-- -- -- SELECT * FROM student

-- -- -- INSERT INTO student VALUES
-- -- -- (100,'Rohit','1990-12-12',600),
-- -- -- (101,'Rahul','1992-11-04',500),
-- -- -- (102,'Virat','1999-12-05',700)

-- -- -- INSERT into student VALUES
-- -- -- (103,'Hardik',null,600)


-- -- -- INSERT INTO student(sid,sname,dob)
-- -- -- VALUES(104,'Rishab','1999-06-09')

-- -- SELECT * FROM student


-- -- CREATE TABLE CUST (
-- --     cid INT,
-- --     name VARCHAR(10),
-- --     gender CHAR(1),
-- --     age TINYINT,
-- --     city VARCHAR(10),
-- --     der DATE
-- -- )



-- -- SELECT * FROM cust

-- -- INSERT into cust VALUES
-- -- (100,'Rahul','m',34,'blg','2020-09-01'),
-- -- (101,'Rohit','m',39,'mum','2023-10-19'),
-- -- (102,'Virat','m',38,'del','2026-12-12'),
-- -- (103,'Rishab','m',27,'del','2014-09-09'),
-- -- (104,'Hardik','m',33,'mum','2018-09-06'),
-- -- (105,'Shubaman','m',26,'guj','2022-09-09'),
-- -- (106,'smiti','f',30,'blg','2020-09-01'),
-- -- (107,'harleen','f',24,'guj','2026-12-02'),
-- -- (108,'pratika','f',22,'hyd','2019-08-07'),
-- -- (109,'ruchika','f',25,'hyd','2021-09-09'),
-- -- (110,'harman','f',37,'mum','2013-09-10')


-- -- SELECT * FROM cust


-- -- inserting null value to the table 

-- -- INSERT INTO cust VALUES
-- -- (111,'ishan','m',27,'mum',null)

-- -- INSERT INTO cust(cid,name,gender,city) VALUES
-- -- (112, 'isha','f','guj')


-- -- SELECT * FROM cust


-- -- SELECT NAME,gender FROM cust

-- -- SELECT NAME,age,der FROM cust


-- -- display custmer where cid=102

-- -- SELECT * FROM cust WHERE cid=102

-- display details where name='rahul'

-- SELECT * FROM cust WHERE name='rahul'


-- diplay cust where age>30

-- SELECT * FROM cust WHERE age>30


-- diplay  cust who registered after 2020

-- SELECT * FROM cust WHERE der > '2020-12-31'

-- display customers registered before 2020

-- SELECT * from cust where der < '2020-01-01'


-- display customers who are not staying in hyd

-- SELECT * FROM cust WHERE city <> 'hyd'


-- list of cust whose id=100,103,105

-- SELECT * FROM cust WHERE cid =100 or cid=103 or cid=105


-- list of cust whose in mum and age > 30

SELECT * FROM cust WHERE age>30 and city='mum'
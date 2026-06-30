-- use NIT
-- SHOW TABLES
-- SELECT * FROM cust
-- SELECT * FROM cust WHERE cid=103
-- SELECT * FROM cust WHERE cid=103 AND cid=102
-- SELECT * FROM cust WHERE city='hyd' or city='mum'
-- SELECT * FROM cust WHERE city = 'hyd' and age>
-- SELECT * FROM cust WHERE age >20 AND age<30
-- SELECT * FROM cust WHERE der >'2020-01-01' AND der < '2020-12-31'
-- SELECT * FROM cust where (city='hyd' or city='mum')  and age> 30
-- ALTER table cust add mark int
-- SELECT * FROM cust
-- CREATE TABLE IF NOT EXISTS student
-- (
--     sno INT,
--     sname VARCHAR(10),
--     s1 TINYINT,
--     s2 TINYINT,
--     s3 TINYINT
-- )
-- INSERT INTO student VALUES
-- (1,'A',80,90,70),
-- (2,'B',30,60,50),
-- (3,'C',50,30,20),
-- (4,'D',10,20,30)
-- SELECT * FROM student
-- SELECT * FROM student WHERE s1>=35 AND s2>=35 AND s3>=35
-- SELECT * FROM student WHERE s1<35 or s2<35 OR s3<35
-- SELECT * FROM student WHERE (s1<35 AND s2 >=35 AND s3>=35)
-- or
-- (s1>=35 AND s2 <35 AND s3>=35)
-- or
-- (s1>=35 AND s2 >=35 AND s3<35)
-- SELECT * FROM student WHERE (s1>=35 AND s2 <35 AND s3<35)
-- or
-- (s1>=35 AND s2 <35 AND s3<35)
-- or
-- (s1<35 AND s2 >=35 AND s3<35)
-- SELECT * FROM student
-- SELECT * FROM student WHERE (s1<35 AND s2 <35 AND s3<35)
-- SELECT * FROM cust WHERE cid in (100,101,103)
-- SELECT NAME, age FROM cust WHERE cid in (100, 102 , 104)
-- SELECT * FROM cust WHERE city in ('hyd','blg','mum')
-- SELECT * FROM cust WHERE city NOT in ('hyd','blg','mum')
-- SELECT * FROM cust WHERE age BETWEEN 20 AND 30
-- SELECT * FROM cust WHERE der BETWEEN '2020-01-01' and '2020-12-31'
-- SELECT * FROM cust WHERE der not BETWEEN '2020-01-01' and '2020-12-31'


-- SELECT * FROM cust WHERE gender='f' AND city in ('hyd','blg') 
-- AND age BETWEEN 20 AND 30 AND der not BETWEEN '2020-01-01' and '2020-12-31'





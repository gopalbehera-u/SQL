select * from emp


select * from emp where ename like '-----'

select * from emp where len(ename)=5

select * from emp where len(ename)>5

select * from emp where len(ename)<5

select left('HELLO WELCOME',5)
select RIGHT('HELLO WELCOME',7)

select * from emp where ename like 'a%' and ename like '%n'

select * from emp where left(ename,1) = right(ename,1)


set implicit_transactions on 


select * from emp

update emp set ename ='nitin' where EMPNO=7369

rollback


select ename,empno ,
LEFT(ename,3)+LEFT(empno,3)+'tcs@.com'
as emailid from EMP


alter table emp add  emailid varchar(30)

select * from emp

update emp set emailid = LEFT(ename,3)+LEFT(empno,3)+'tcs@.com'

select SUBSTRING('hello welcome',4,5)
select SUBSTRING('hello welcome',7,5)

select substring('hello welcome', 8)

select CHARINDEX('O' ,'HELLO WELCOME')
select CHARINDEX('A' ,'HELLO WELCOME')

select CHARINDEX('O' ,'HELLO WELCOME',6)

select CHARINDEX(' ' ,'HELLO WELCOME')

CREATE TABLE CUSTOMER(
CID INT ,
CNAME VARCHAR(20))


INSERT INTO CUSTOMER VALUES
(1,'SACHIN TENDULKAR'),
(2,'VIRAT KOHLI')

SELECT * FROM CUSTOMER

--FIRSTNAME 
SELECT CID, SUBSTRING(CNAME,1,CHARINDEX('',CNAME)-1) AS FIRSTNAME FROM CUSTOMER


SELECT ENAME,REPLICATE('*',LEN(SAL)) AS SAL FROM EMP
-- distinct
select * from emp

select distinct job from emp

select distinct empno from emp

select distinct empno,ename from emp

select  distinct * from emp 


--top

select top 5 ename from emp


select top 5 sal from emp 

select top 5 sal from emp order by sal desc

select distinct top 3 sal from emp order by sal desc

select top 3 * from emp order by HIREDATE asc

select top 3 ename,hiredate from emp order by HIREDATE asc

set implicit_transactions on 
 SET IMPLICIT_TRANSACTIONS ON


 -- upadte 
 update emp set comm=1000

 select * from emp

 commit

 rollback

 update emp set COMM=800 where empno=7369
 

 update emp set sal=2000,comm=800 where job='salesman' and HIREDATE like '1981%'
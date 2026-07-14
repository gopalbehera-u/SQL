select * from emp

select ename,sal,deptno from emp

select ename,deptno,sal,
      DENSE_RANK() over(partition by deptno order by sal ) as rank from emp


delete from emp where deptno is null


select empno,ename,sal ,row_number() over (order by sal desc )
from emp

select empno,ename,sal,ROW_NUMBER() over(order by  empno asc)
    from emp 

select  empno,ename,sal,ROW_NUMBER() over(order by  empno asc)
    from emp 


with E as (select empno,ename,sal,ROW_NUMBER() over (order by empno asc) as rno  from emp)

select * from E where rno in (5 , 10)

with E as (select empno,ename,sal,ROW_NUMBER() over (order by empno asc) as rno  from emp)

select * from E where rno between 5 and 10


with E as (select empno,ename,sal,ROW_NUMBER() over (order by empno asc) as rno  from emp)

select * from E where rno%2=0


set implicit_transactions on 


with e as  (select empno,sal,ename, row_number() over(order by empno asc) as rno
from emp
)
delete from e where rno=5

rollback

create table emp44(
eno int,
ename varchar(10),sal money
)


insert into emp44 values
(1,'A',6000),
(2,'B',5000),(3,'C',7000),(1,'A',6000),(2,'B',5000)


SELECT * FROM emp44


with e as 
(
SELECT ENO,ENAME,SAL , ROW_NUMBER() OVER(PARTITION BY ENO,ENAME,SAL ORDER BY ENO ASC) as rno from emp44
)

delete from e where rno>1


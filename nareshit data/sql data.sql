select * from emp



intersect
select * from emp 




with e as (select empno,ename,sal, dense_rank() over(order by sal desc) as rnk  from emp)
select * from e where rnk<=5

select * from 
(select empno,ename,sal, dense_rank() over(PARTITION BY deptno order by sal desc) as rnk  from emp) as e
where e.rnk<=5



select empno,ename,sal,
row_number() over(order by empno Asc) AS rno
from emp
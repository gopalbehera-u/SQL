select job,sal from emp where deptno=20
union  
select job,sal from emp where deptno=30



select job,sal from emp where deptno=20
union  all
select job,sal from emp where deptno=30




select ename,sal from emp 
where sal>(select sal from emp where ename='blake')
   
   
select job from emp where deptno=20
intersect
select job from emp where deptno=30


  
select job from emp where deptno=20
except
select job from emp where deptno=30

 
select ename ,sal from emp where sal=(
 select  max(sal) from emp
 )

 select ename from emp
 where sal > (select avg(sal) from emp)

  select ename from emp
 where HIREDATE = (select min(HIREDATE) from emp)


select * from emp
select * from dept
select ename from emp where deptno= (select deptno from DEPT where loc='new york') 

select * from emp t1 inner join DEPT t2 on t1.DEPTNO=t2.DEPTNO
where t2.LOC='new york'


update emp
set sal = case EMPNO
         when 7369 then (select sal from emp where EMPNO=7499)
         when 7499 then (select sal from emp where EMPNO=7369)
         end

select * from emp


select ename from emp where DEPTNO in (select DEPTNO from dept where loc in ('newyork','chicago'))














   
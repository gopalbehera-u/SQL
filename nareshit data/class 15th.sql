select * from emp

select job,DEPTNO from emp
group by job

select * from dept 

select ename,sal from emp
where sal > all(select sal from dept where DEPTNO=10)



select * from emp


select ename,sal from emp
where sal > all(select sal from emp where job='salesman')


select * from emp as e where sal > (select avg(sal) from emp where deptno=e.DEPTNO)


select * from emp as e  where 
HIREDATE= (select min(HIREDATE) from emp where DEPTNO=e.DEPTNO)








select * from emp as e where sal = (select max(sal) from emp where deptno=e.DEPTNO)

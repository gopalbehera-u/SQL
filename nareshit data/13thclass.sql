select * from emp

select empno,ename,sal,dname,loc, t1.deptno from emp as t1 inner join dept as t2
on t1.deptno=t2.deptno  

select empno,ename,sal,dname,t2.loc from emp as t1 inner join dept as t2
on t1.deptno=t2.deptno  where t2.loc='new york'


select empno,ename,sal,dname,t2.loc from emp as t1 inner join dept as t2
on t1.deptno=t2.deptno  where t2.loc='new york' and  t1.sal > 2000


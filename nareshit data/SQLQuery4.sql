select * from emp


set implicit_transactions on
update emp set sal=(sal*0.2)+sal ,COMM=COMM+(COMM*0.1)
where job in ('clerk','manager') and DEPTNO in (10,20)

rollback


delete from emp

delete from emp where EMPNO=7369




update emp set sal= null where sal=1600 

delete from emp where JOB in ('clerk','%man%')

delete from emp where JOB ='clerk' or  job like '%man%'

delete  from emp where SAL=1600 

SP_HELP emp

select * from emp

alter table emp add gender char(1)

update emp set gender='M' where empno=7369


alter table emp drop column gender

alter table emp drop column mgr 
select * from emp

alter table emp alter column empno int 

sp_help emp


alter table emp alter column empno smallint

alter table emp alter column empno tinyint


set implicit_transactions on 


  alter table emp 
    alter column hiredate datetime 

    sp_rename 'emp.comm' , 'bomous'



alter table emp 
alter column ename varchar(20)


sp_help emp


drop table emp

select * from emp


rollback

truncate table emp

sp_rename 'emp' , 'gopal'

--select * from gopal


select * from emp

select empno,lower(ename) as ename from emp 

select empno,upper(ename) as ename from emp

update emp set ename =UPPER(ename)

select len('naresh it')
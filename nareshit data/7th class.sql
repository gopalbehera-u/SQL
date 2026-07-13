select cast(getdate() as date)

select GETDATE()

insert into emp (empno,ename,sal , hiredate)
values(100,'ABC',2000,GETDATE())


select * from EMP

use [NARESH IT]

select * from emp where  HIREDATE = cast(getdate() as date)
select * from emp where  HIREDATE = getdate()




select cast(DATEADD(dd,-1,getdate() ) as date)
select cast(DATEADD(mm,-1,getdate() ) as date)
select cast(dateadd(yy,-1,getdate()) as date)

select DATEDIFF(mm,'2025-07-10',getdate())
select DATEDIFF(dd,'2025-07-10',getdate())
select DATEDIFF(yy,'2025-07-10',getdate())

select DATEDIFF(dd,getdate(),'2025-07-10')
select DATEDIFF(mm,getdate(),'2025-07-10')
select DATEDIFF(yy,getdate(),'2025-07-10')


select ename,DATEDIFF(yy,hiredate,GETDATE()) as ex from emp
select ename,DATEDIFF(mm,hiredate,GETDATE()) as ex from emp

select ename , DATEDIFF(mm,hiredate,getdate())/12 as years,
DATEDIFF(mm,hiredate,GETDATE())%12 as montht from emp

select ename,DATEDIFF(dd,hiredate,GETDATE())/365 as year,
(DATEDIFF(dd,hiredate,GETDATE())%365)/30 as monthh,
((DATEDIFF(dd,hiredate,GETDATE())%365)%30) as dayss
from emp


select ROUND(38.9888,0)

select round(35.443,2)
select ROUND(343,-3)
select ROUND(343,-1)
select ROUND(343,-2)


select CEILING(3.1)
select CEILING(3.8)
select floor(3.2)
select floor(3.8)


select cast(10 as decimal(4,2))
select cast(10.5 as int)

select CAST(getdate() as date)

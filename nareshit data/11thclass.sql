select * from customers



select cname,gender,case
       when left(gender,1) in ('f','g','w') then 'FEMALE'
       WHEN LEFT(gender,1) in ('M','B')  then 'MALE'
       else 'UNKNOWN'
       END AS GENDER FROM customers




update customers 
set gender = case when left(gender,1) in ('f','G','W') THEN 'FEMALE'
              WHEN LEFT(gender,1) IN ('M','B')  THEN 'MALE'
              ELSE 'UNKNOWN' END


select * from customers


select * from student

create table result 
(sno int , total int , avg decimal(5,2), result varchar (4))

select * from result 
insert into result 
select sno,
    (m+p+c) as total,
    (m+p+c)/3  as avg,
    case 
    when m >=35  and  c >=35 and   p>=35   then 'pass'
    else 'fail'
    end as result from student



select * from result


select * from emp

select job,count(*) as numberofemployee
from emp group by job 


select DEPTNO,count(*) as no_of_emp
from emp group by DEPTNO


select job, count(*) as no_of_emp,min(sal) as misal
,sum(sal) as totalsal,avg(sal) as avgsal
from emp group by job 

select count(*) as number_of_emp,datepart(qq,hiredate) from emp
where DATEPART(yy,HIREDATE) = 1981
group by datepart(qq,hiredate)  
use companybd


create table employees(
empid int ,
empname varchar(100),
age int,
gender varchar(10),
department varchar(10),
salary int ,
city varchar (10),
join_date date
)


insert into employees values
(1,'guru',52,'m','it',50000,'mum','2020-09-05'),
(2,'pratyush',92,'f','salesman',70000,'hyd','2024-07-04'),
(3,'gopal',86,'m','manager',90000,'blg','2021-04-19'),
(4,'panchu',72,'m','analyst',40000,'chen','2019-12-15'),
(5,'sipu',42,'f','it',80000,'pune','1909-03-09')

select * from employees


select * from employees where salary > 50000



select * from 
employees where salary > 60000 and department = 'it'

select * from employees
where department in ('it','manager')

select * from employees
where department = 'it' or  department ='manager'


select * from employees
where city in ('hyd','chen','pune')

select * from employees
where department not in ('it')

select * from employees
where department !='it'


select  * from employees
where salary between 40000 and 80000

select * from employees
where empname like 'g%'

select * from employees
where empname like '%u'


select * from employees
where empname like '%op%'

insert into employees(empid,empname) values
(1,'ashish')

select * from employees


select * from employees
where city is null


select empname as Employee_name , 
salary as Monthly_salary
from employees 

select distinct department from employees


select top 3* from employees 

select * from employees
order by salary asc

select * from employees
order by department asc,salary desc

update employees set salary=75000 where empid=3

update employees set city = 'Mumbai' where department='it'

set implicit_transactions on

delete from employees where empid=5

rollback


delete from employees where salary <50000

alter table employees add  email varchar(100)





alter table employees add experince int 

select * from employees

sp_rename 'employees.empname','Employee_name','column'

sp_help employees


alter table employees alter column experince smallint

alter table employees add email varchar(100)

alter table employees drop column email


truncate table employees

delete from employees

select * from employees
rollback 

drop table employees

drop database companybd




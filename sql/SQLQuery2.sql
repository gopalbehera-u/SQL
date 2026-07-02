select * from EMP


select ename,sal*12 as anualsal from emp



select * from emp order by sal desc

select * from emp order by ename asc

select * from emp order by sal desc

select * from emp order by HIREDATE desc

select * from emp order by HIREDATE asc

select empno,ename,sal,deptno from emp order by DEPTNO asc,sal desc

select empno,ename,sal,deptno from emp order by DEPTNO asc,sal desc,ename asc


create table student (
sno int,
sname varchar(10),
m int ,
p int ,
c int 
)


insert into student values
(1,'A',80,90,70),
(2,'B',60,70,50),
(3,'A',90,70,80),
(4,'A',90,80,70)


select * from student


select * from student 
order by (m+p+c) desc,m desc , p desc


select *,(m+c+p) as total from student 
order by (m+p+c) desc,m desc , p desc


select * from emp where  HIREDATE like '1981%'  order by ename asc
select * from groupa
select * from groupb


select A.team + ' VS ' + B.team
from groupa as A cross join groupb as B
union all
select A.team + ' VS ' + B.team
from groupa as A cross join groupb as B


select deptno,sum(sal) from emp
group by DEPTNO



select d.DNAME ,sum(e.sal) as total
from emp e inner join dept as d
on e.DEPTNO=d.DEPTNO
group by d.dname

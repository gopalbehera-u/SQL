select * from emp

select empno,ename,sal, lag(sal,2) over(order by empno asc) from emp
CREATE TABLE population
       (  
             year   INT,
             population  NUMERIC
      )

  INSERT INTO population VALUES(2020,1328024498) ,
(2021,1402617695),
   (2022,1425423212),
(2023,1438069596),
(2024,1450935791),
(2025,1470935791)


select *  from population

select year,population , population-LAG(population,1)
over (order by year asc)  as growth from population


select year,population , population-LAG(population,1)
over (order by year asc)  as growth ,
((population-LAG(population,1)
over (order by year asc))/LAG(population,1) OVER (ORDER BY year ASC))*100 as growthpercentage

from population



SELECT
    year,
    population,

    population - LAG(population, 1) OVER (ORDER BY year ASC) AS growth,

    (
        (population - LAG(population, 1) OVER (ORDER BY year ASC))
        / LAG(population, 1) OVER (ORDER BY year ASC)
    ) * 100 AS growth_percentage

FROM population;


select ename,sal ,lead(sal,1) over (order by empno asc) as next_sal from emp









CREATE TABLE sales
 (
    id   INT,
    sdate  date,
    amt    MONEY
  );

 insert into sales values(1,'2026-07-05',1000);
 insert into sales values(2,'2026-07-06',800);
 insert into sales values(3,'2026-07-10',2000);
 insert into sales values(4,'2026-07-11',500);
 insert into sales values(5,'2026-07-15',3000);


 select * from sales


 with e as 
 (
 select id , sdate , amt ,

 datediff(dd,lag(sdate,1) over (order by id asc),sdate) as days
 from sales

 )

 select * from e where days >=3
SELECT *
FROM   emp;

SELECT CONVERT (VARCHAR, getdate(), 101);

SELECT CONVERT (VARCHAR, getdate(), 105);

SELECT CONVERT (VARCHAR, getdate(), 110);

SELECT CONVERT (VARCHAR, getdate(), 115);

SELECT CONVERT (DATE, '21-04-2025', 105);

SELECT DATEDIFF(yy, CONVERT (DATE, '04/21/2023', 101), getdate());

SELECT isnull(NULL, 80);

SELECT isnull(900, 80);

SELECT isnull(90, 800);

SELECT isnull(90, NULL);

SELECT ename,
       sal,
       comm,
       sal + comm AS total
FROM   emp;

SELECT ename,
       sal,
       comm,
       sal + isnull(comm, 0) AS total
FROM   emp;

SELECT COALESCE (100, 200, 300);

SELECT COALESCE (100, 200, 300);

SELECT COALESCE (NULL, 100, 200, NULL);

SELECT COALESCE (NULL, NULL, NULL, 1);

SELECT ename,
       sal,
       comm,
       (sal + comm) AS totalsal
FROM   EMP;

SELECT ename,
       sal,
       comm,
       (sal + ISNULL(0, comm)) AS total
FROM   emp;

SELECT ename,
       sal,
       isnull(CAST (comm AS VARCHAR), 'N/A') AS comm
FROM   emp;

SELECT COALESCE (100, NULL, 200);

SELECT COALESCE (NULL, NULL, 100, NULL, 200);

CREATE TABLE t1 (
    d VARCHAR (20)
);

INSERT  INTO t1
VALUES ('13-07-20206'),
('07/13/20206'),
('13.07.20206'),
('07-13-20206'),
('20120713');

SELECT CONVERT (VARCHAR, GETDATE(), 105); --select coalesce()'

select empno,ename,sal,RANK() over(order by sal desc) from emp

select empno,ename,sal,DENSE_RANK() over(order by sal desc) from emp
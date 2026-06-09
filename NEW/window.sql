-- SHOW databases

-- CREATE DATABASE IF NOT EXISTS leo;

-- use leo



-- CREATE TABLE marks (
--  student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(255),
--     branch VARCHAR(255),
--     marks INTEGER
-- );

-- INSERT INTO marks (name,branch,marks)VALUES 
-- ('Nitish','EEE',82),
-- ('Rishabh','EEE',91),
-- ('Anukant','EEE',69),
-- ('Rupesh','EEE',55),
-- ('Shubham','CSE',78),
-- ('Ved','CSE',43),
-- ('Deepak','CSE',98),
-- ('Arpan','CSE',95),
-- ('Vinay','ECE',95),
-- ('Ankit','ECE',88),
-- ('Anand','ECE',81),
-- ('Rohit','ECE',95),
-- ('Prashant','MECH',75),
-- ('Amit','MECH',69),
-- ('Sunny','MECH',39),
-- ('Gautam','MECH',51)

-- SELECT * FROM marks

-- SELECT * , AVG(marks) OVER(PARTITION BY branch) FROM marks


-- SELECT *, AVG(marks) OVER(),
-- min(marks) OVER(),
-- max(marks) OVER()
-- FROM marks ORDER BY student_id



-- SELECT * FROM (
-- SELECT * ,
-- AVG(marks) OVER(PARTITION BY branch) as "branch_avg"
-- FROM marks) t WHERE t.marks < t.branch_avg


-- SELECT * , RANK() OVER(PARTITION BY branch ORDER BY marks DESC),
-- DENSE_RANK() OVER(PARTITION BY branch ORDER BY marks DESC)
-- FROM marks


-- SELECT *,ROW_NUMBER() OVER (PARTITION BY branch)
-- FROM marks;


-- CREATE DATABASE IF NOT EXISTS ZOMATO

-- use ZOMATO


-- SHOW TABLEs

-- SELECT
--     MONTHNAME(date) AS month,
--     user_id,
--     SUM(amount) AS total,
--     RANK() OVER (
--         PARTITION BY MONTHNAME(date)
--         ORDER BY SUM(amount) DESC
--     ) AS month_rank
-- FROM orders
-- GROUP BY MONTH(date), MONTHNAME(date), user_id
-- ORDER BY MONTH(date);


-- SHOW TABLEs

-- use leo

-- SELECT * ,first_value(marks) OVER(ORDER BY marks DESC)

-- FROM marks



-- SELECT * , LAST_VALUE(marks) OVER(ORDER BY marks DESC
-- ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING

-- )

-- FROM marks


-- SELECT * ,nth_value(name,2) OVER(PARTITION by branch
-- ORDER by marks DESC  
-- ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
-- ) FROM marks


-- SELECT name,branch,marks FROM(
-- SELECT * ,
-- FIRST_VALUE(NAME) OVER(PARTITION BY branch ORDER BY marks DESC) as topper_name,
-- FIRST_VALUE(marks) OVER(PARTITION BY branch ORDER BY marks DESC) as topper_marks

-- FROM marks) t 

-- WHERE t.name=t.topper_name AND t.marks=t.topper_marks



-- SELECT * ,

-- LAG(marks) OVER(PARTITION BY branch ORDER by student_id),
-- Lead(marks) OVER(PARTITION BY branch ORDER BY student_id)

-- FROM marks




-- SELECT MONTHNAME(date),sum(amount),

-- FROM orders

-- GROUP BY MONTHNAME(date)
-- ORDER BY MONTH(date)
-- ASC


-- CREATE TABLE sales (
--     MonthName VARCHAR(20),
--     Sales INT
-- );



-- INSERT INTO sales
-- VALUES
-- ('Jan',100),
-- ('Feb',120),
-- ('Mar',150),
-- ('Apr',130);



-- SELECT * FROM sales


-- SELECT MonthName,sales,LEAD(sales)
-- OVER(ORDER BY MonthName) as nextmonth

-- FROM sales


SELECT MonthName,sales,LAG(sales)
OVER(ORDER BY MonthName) as prevsales

FROM sales
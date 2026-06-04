-- show databases;

-- use pythondata

-- SHOW tables;

-- SELECT * FROM countryab

-- SELECT * FROM countrycd

-- SELECT * FROM countrycl

-- SELECT * FROM countryefg



-- Find out top 10 countries' which have maximum A and D values.


-- SELECT t1.Country,t1.A,t2.D FROM countryab t1 JOIN countrycd t2 ON t1.Country=t2.Country
-- ORDER BY t1.A DESC,t2.D DESC LIMIT 10



-- Find out highest CL value for 2020 for every region.
-- Also sort the result in descending order. Also display the CL values in descending order.


-- SELECT  MAX(t1.CL) AS highest_cl,t2.`Edition` ,t2.Region from countrycl t1 JOIN countryefg t2 ON t1.Country=t2.Country 
-- WHERE t2.`Edition`=2020
-- GROUP BY t2.Region
-- ORDER BY highest_cl DESC 


-- USE xgb

-- SHOW tables

-- SELECT * FROM customers

-- SELECT * FROM employees

-- SELECT * FROM sales

-- SELECT * FROM products



-- Find top-5 most sold products.

-- SELECT t1.ProductID,t1.Name,sum(t2.Quantity) as 'toatl_qunt' FROM products t1 JOIN sales t2 ON t1.ProductID=t2.ProductID
-- GROUP BY t1.ProductID,t1.Name ORDER BY toatl_qunt DESC LIMIT 5



--  Find sales man who sold most no of products.

-- SELECT t2.SalesPersonID,t1.FirstName,sum(t2.Quantity) as 'total_qnt' FROM employees t1 JOIN sales t2 ON t1.EmployeeID=t2.SalesPersonID 

-- GROUP BY t2.SalesPersonID,t1.FirstName ORDER BY total_qnt DESC



-- Sales man name who has most no of unique customer.



-- SELECT t2.SalesPersonID,t1.FirstName,count(DISTINCT( t2.CustomerID)) 'unique_cost',sum(t2.Quantity) as 'total_qnt' FROM employees t1 JOIN sales t2 ON t1.EmployeeID=t2.SalesPersonID 

-- GROUP BY t2.SalesPersonID,t1.FirstName ORDER BY unique_cost DESC






-- SELECT * FROM customers

-- SELECT * FROM employees

-- SELECT * FROM sales

-- SELECT * FROM products


-- Sales man who has generated most revenue. Show top 5.


-- SELECT t1.SalesPersonID ,t3.FirstName, round(sum(Quantity*price)) as "Revenue"
-- FROM sales t1 JOIN products t2  ON t1.ProductID=t2.ProductID JOIN employees t3 on t1.SalesPersonID=t3.EmployeeID

-- GROUP BY t1.SalesPersonID,t3.FirstName ORDER BY Revenue DESC LIMIT 5



-- List all customers who have made more than 10 purchases.


-- SELECT t2.FirstName,t1.CustomerID,count(t2.FirstName) as "Number of times" FROM sales t1 JOIN customers t2 ON t1.CustomerID=t2.CustomerID

-- GROUP BY t2.FirstName,t1.CustomerID HAVING count(t2.FirstName)>10 ORDER BY count(t2.FirstName) DESC


-- List all salespeople who have made sales to more than 5 customers


-- SELECT * FROM employees
-- SELECT * FROM customers


-- SELECT * FROM sales



-- SELECT t1.SalesPersonID,count(DISTINCT(t1.CustomerID)) as "custer" FROM sales t1 JOIN employees  t2 ON t1.SalesPersonID=t2.EmployeeID

-- GROUP BY t1.SalesPersonID HAVING custer>5 ORDER BY custer DESC





--  List all pairs of customers who have made purchases with the same salesperson.




-- SELECT t1.CustomerID,t2.EmployeeID,t3.FirstName,t2.FirstName FROM sales t1 JOIN employees t2 ON t1.SalesPersonID=t2.EmployeeID  
-- JOIN customers t3 ON t1.CustomerID=t3.CustomerID

-- GROUP BY t1.CustomerID,t2.EmployeeID,t3.FirstName,t2.FirstName 




SELECT
    s1.CustomerID AS Customer1,
    s2.CustomerID AS Customer2,
    s1.SalesPersonID
FROM sales s1
JOIN sales s2
    ON s1.SalesPersonID = s2.SalesPersonID
   AND s1.CustomerID < s2.CustomerID;
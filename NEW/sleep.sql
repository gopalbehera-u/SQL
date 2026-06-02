-- show databases

-- use alex

-- SHOW tables

-- SELECT * FROM sleep




-- -- The question is:
-- -- Find out the average sleep duration of top 15 male candidates who's sleep duration are equal to 7.5 or greater than 7.5.

-- SELECT AVG(`Sleep duration`) as 'avg_sleep_duration' FROM sleep WHERE Gender='male' AND avg_sleep_duration>=7.5 LIMIT 15;


-- SELECT AVG(`Sleep duration`) AS avg_sleep_duration
-- FROM (
--     SELECT `Sleep duration`
--     FROM sleep
--     WHERE Gender = 'Male'
--       AND `Sleep duration` >= 7.5
--     LIMIT 15
-- ) AS t;



-- Problem 2: Show avg deep sleep time for both gender. Round result at 2 decimal places.


-- SELECT Gender, round(AVG(`Sleep duration`),2) as 'AVGduration' from sleep GROUP BY Gender  



-- Find out the lowest 10th to 30th light sleep percentage records where
--  deep sleep percentage values are between 25 to 45. Display age, light
--   sleep percentage and deep sleep percentage columns only.

-- SELECT age,`Light sleep percentage`,`Deep sleep percentage` FROM sleep

-- WHERE `Deep sleep percentage` BETWEEN 25 AND 45 ORDER BY `Light sleep percentage` ASC LIMIT 9,21



-- Group by on exercise frequency and smoking status and 
-- show average deep sleep time, average light sleep time and 
-- avg rem sleep time.
-- Note the differences in deep sleep time for smoking and
--  non smoking status



-- SELECT `Exercise frequency`, `Smoking status`, AVG(`Deep sleep percentage`) as 'avgdeepsleep',avg(`Light sleep percentage`) as 'avgsleeppercentage',
-- avg(`REM sleep percentage`) as 'avgremsleeppercentage' from sleep GROUP BY `Exercise frequency`,`Smoking status`


-- Group By on Awekning and show AVG Caffeine consumption, AVG Deep sleep time and AVG Alcohol 
-- consumption only for people who do exercise atleast 3 days a week. Show result in descending order awekenings


-- SELECT `Awakenings`,AVG(`Caffeine consumption`) as 'avg_caffieine',avg(`Deep sleep percentage`) as 'avg_deepsleep'
-- ,avg(`Alcohol consumption`) as 'avg_alcoholconsuption' from sleep
-- WHERE  `Exercise frequency`>=3
-- GROUP BY `Awakenings`  ORDER BY `Awakenings` DESC 



-- SHOW tables

-- SELECT * FROM powergeneration


-- Display those power stations which have average 'Monitored Cap.(MW)' (display the values) 
-- between 1000 and 2000 and the number of occurance of the power stations (also display these values) 
-- are greater than 200. Also sort the result in ascending order.



-- SELECT `Power Station`,AVG(`Monitored Cap.(MW)`) as 'avg_monitored',count(`Power Station`) as 'num_powerstation' FROM powergeneration GROUP BY `Power Station` 
-- HAVING avg_monitored BETWEEN 1000 AND 2000 AND count(`Power Station`)>200 ORDER BY `Power Station`  ASC 



-- SELECT * FROM nces

-- Display top 10 lowest "value" State 
-- names of which the Year either belong to 2013 or 2017 or 2021 
-- and type is 'Public In-State'. Also the number of occurance should be 
-- between 6 to 10. Display the average value upto 2 decimal places, state names 
-- and the occurance of the states.


-- SELECT round(AVG(`Value`),2) as 'avg_avlue', 
-- `State`, count(*) as 'count_state'  
--  FROM nces WHERE Year IN (2013,2017,2021) 
--  AND Type = 'Public In-State'  GROUP BY `State` HAVING COUNT(*) BETWEEN 6 AND 10 ORDER BY avg_avlue ASC LIMIT 10



-- Best state in terms of low education 
-- cost (Tution Fees) in 'Public' type university.


-- SELECT `Type`,Expense, `Value` from nces WHERE `Type` like
--  '%Public%' AND Expense='Fees/Tuition' ORDER BY `Value` ASC



-- 2nd Costliest state for Private education in year 2021.
--  Consider, Tution and Room fee both.

-- SELECT
--     `State`,
--     SUM(`Value`) AS total_value
-- FROM nces
-- WHERE Year = 2021
--   AND `Type` = 'Private'
--   AND Expense IN ('Fees/Tuition', 'Room/Board')
-- GROUP BY `State`
-- ORDER BY total_value DESC
-- LIMIT 1,1;



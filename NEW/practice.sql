-- show databases;

-- use company

-- SHOW tables


-- CREATE TABLE emplooyeess (
--     emp_id int primary key auto_increment,
--     name varchar(100) not null,
--     department varchar(100) not null,
--     salary int check(salary>0),
--     joined_at datetime default current_timestamp
-- )


-- INSERT INTO emplooyeess(name,department,salary) VALUES
-- ("rahul","it",45000),
-- ("rohit","hr",55000),
-- ("virat","hr",60000),
-- ("shubman","it",40000),
-- ("hardik","sales",50000);


-- SELECT * FROM emplooyeess


-- SHOW databases;

-- use xavier


-- SHOW tables

-- SELECT * from smartphones


-- SELECT DISTINCT brand_name from smartphones WHERE price>50000


-- SELECT model,price,rating from smartphones WHERE brand_name NOT IN('apple','samsung','oneplus') AND price<20000 and rating > 75;



-- ALTER TABLE emplooyeess add column phone varchar(15) after name 

-- SELECT * FROM emplooyeess


-- ALTER TABLE emplooyeess modify column salary bigint


-- ALTER TABLE emplooyeess drop column phone


-- SELECT model,price,battery_capacity ,round(battery_capacity/price,4) as 'battery_pre_price'
-- FROM smartphones



SELECT model,price,screen_size,rating, round(sqrt(pow(resolution_height,2)+pow(resolution_width,2))/screen_size,2) AS 'ppi'
FROM smartphones 
WHERE price BETWEEN 15000 AND 40000 and processor_brand in ('snapdragon','mediatek')
AND rating > 78
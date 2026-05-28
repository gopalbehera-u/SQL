-- SHOW databases


-- use xavier;

-- SHOW TABLES

-- SELECT * FROM smartphones


-- SELECT price , model FROM smartphones WHERE price BETWEEN 20000 and 50000


-- SELECT DISTINCT(processor_brand) FROM smartphones


-- SELECT model,brand_name,rating  FROM smartphones WHERE rating>80  AND processor_brand in ('snapdragon','mediatek')

-- SELECT max(price),min(price),AVG(rating) from smartphones


-- SELECT MAX(price) FROM smartphones

-- SELECT model,price from smartphones where price=179900;

-- SELECT model,brand_name FROM smartphones WHERE processor_brand NOT IN('snapdragon','mediatek','exynos')


-- SELECT * FROM smartphones



-- SELECT price-5000 as discounted_price , abs(price-30000) as diff_from_30k FROM smartphones 




-- SELECT model,resolution_width,resolution_height,screen_size, round(sqrt(resolution_width*resolution_width+resolution_height*resolution_height)/screen_size,2) as ppi from smartphones






-- SELECT model,price,rating FROM smartphones WHERE rating>85 and price<30000 and processor_brand='snapdragon' AND ram_capacity=8



-- SELECT count(brand_name)  as total_number  from  smartphones where brand_name='samsung'

-- SELECT AVG(price) as avg_price from smartphones 

-- SELECT sum(price) as total_price from smartphones




SELECT model,price FROM smartphones where brand_name='apple' or brand_name='samsung' AND price BETWEEN 50000 AND 150000 and rating>80 ORDER BY price
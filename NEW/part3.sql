-- -- -- SHOW databases;

-- -- -- use xavier
-- -- -- SELECT * FROM smartphones WHERE brand_name='samsung' ORDER BY screen_size ASC LIMIT 5


-- -- -- SELECT model,screen_size FROM smartphones WHERE brand_name='samsung' ORDER BY screen_size DESC LIMIT 5


-- -- -- SELECT * FROM smartphones

-- -- -- SELECT model, num_front_cameras + num_rear_cameras as total_camera from smartphones ORDER BY total_camera DESC


-- -- -- SELECT model, sqrt(pow(resolution_height,2) + pow(resolution_width,2))/screen_size as ppi from smartphones ORDER BY ppi DESC



-- -- -- SELECT model,battery_capacity FROM smartphones ORDER BY battery_capacity DESC LIMIT 1,1

-- -- -- SELECT model,battery_capacity FROM smartphones ORDER BY battery_capacity DESC LIMIT 3,1

-- -- -- SELECT model,battery_capacity FROM smartphones ORDER BY battery_capacity DESC LIMIT 3



-- -- -- SELECT model,rating from smartphones WHERE brand_name='apple' ORDER BY rating ASC LIMIT 3


-- -- -- SHOW tables
-- -- -- SELECT * FROM ipl


-- -- -- SELECT * FROM smartphones ORDER BY brand_name ASC ,price ASC


-- -- -- SELECT * FROM smartphones ORDER BY brand_name ASC , rating DESC



-- -- -- SELECT brand_name, count(brand_name) FROM smartphones  GROUP by brand_name

-- -- -- SELECT brand_name, count(brand_name),sum(price) FROM smartphones  GROUP by brand_name




-- -- -- SELECT brand_name, count(brand_name),AVG(price),max(rating),AVG(screen_size),AVG(battery_capacity) FROM smartphones  GROUP by brand_name


-- -- -- SELECT has_nfc,AVG(price) as 'avg price' ,AVG(rating) as 'rating' from smartphones  GROUP BY has_nfc

-- -- -- SELECT has_5g,AVG(price) as 'avg price' ,AVG(rating) as 'rating' from smartphones  GROUP BY has_5g


-- -- -- SELECT fast_charging_available,AVG(price) as avg_price ,AVG(rating) as rating from smartphones  GROUP BY fast_charging_available


-- -- -- SELECT extended_memory_available,AVG(price) as avg_price ,AVG(rating) as rating from smartphones  GROUP BY extended_memory_available




-- -- -- SELECT brand_name,processor_brand,count(*) as 'num phones',AVG(primary_camera_rear) as 'avg camera resolution'

-- -- -- FROM smartphones GROUP BY brand_name,processor_brand


-- -- -- USE xavier


-- SELECT * FROM smartphones




-- -- -- SELECT brand_name,AVG(price) as 'avg_price' FROM smartphones
-- -- -- GROUP BY brand_name
-- -- -- ORDER BY avg_price DESC LIMIT 5


-- -- SELECT brand_name, AVG(screen_size) as 'avg_scrrensize' FROM smartphones

-- -- GROUP BY brand_name ORDER BY avg_scrrensize DESC LIMIT 4


-- -- use xavier

-- -- SELECT has_ir_blaster,has_nfc FROM smartphones 

-- -- SELECT  * FROM smartphones WHERE has_ir_blaster='true' AND has_nfc='true'



-- -- SELECT brand_name, count(*) as 'count' FROM smartphones
-- -- WHERE has_nfc='true' AND has_ir_blaster='true'
-- -- GROUP BY brand_name ORDER BY count DESC LIMIT 1


-- -- SELECT brand_name , AVG(price) as 'avg_price',has_nfc from smartphones WHERE brand_name='samsung'

-- -- GROUP BY has_nfc ORDER BY avg_price DESC 



-- -- SELECT brand_name,max(price) as 'max_price' from smartphones 
-- -- GROUP BY brand_name
-- -- ORDER BY max_price DESC


-- -- SELECT model,price FROM smartphones ORDER BY price DESC LIMIT 1




-- SELECT brand_name, count(*) as 'count',

-- avg(price) as 'avg_price' from smartphones

-- GROUP BY brand_name HAVING count>15 ORDER BY avg_price DESC LIMIT 10 ;




-- SELECT brand_name,AVG(rating) as 'avg_rating' ,count(*) as 'count' from smartphones
-- GROUP BY brand_name HAVING count>20 ORDER BY avg_rating DESC LIMIT 5


-- SELECT brand_name,AVG(ram_capacity) as "avg_ram" ,count(*) as 'count' FROM smartphones 
-- where refresh_rate>=90 and fast_charging_available=1
-- GROUP BY brand_name HAVING count>20 ORDER BY avg_ram DESC LIMIT 3


-- SELECT brand_name,count(*) as "count",AVG(price) as 'avg_price',AVG(rating) as 'avg_rating' from smartphones 

-- WHERE  has_5g='True' 

-- GROUP BY brand_name HAVING count>20 and avg_rating > 70 ORDER BY avg_price DESC LIMIT 3



-- SELECT * FROM ipl


-- SELECT batter,sum(batsman_run) as 'total_runs' from ipl

-- GROUP BY batter ORDER BY total_runs DESC LIMIT 5



-- SELECT batter,count(*)  as 'num_six'

-- from ipl WHERE batsman_run=6

-- GROUP BY batter ORDER BY num_six DESC LIMIT 1,1




-- SELECT  batter,id,sum(batsman_run) as 'score' FROM ipl

-- GROUP  BY batter,ID

-- HAVING score>=100

-- ORDER BY score DESC



SELECT batter,sum(batsman_run),count(batsman_run),

round((sum(batsman_run)/count(batsman_run))*100,2) as 'str'

from ipl

GROUP BY batter
HAVING count(batsman_run)>1000
 ORDER BY str DESC LIMIT 5
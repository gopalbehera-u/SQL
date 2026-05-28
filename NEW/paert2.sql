-- -- SHOW databases;
-- -- CREATE DATABASE xavier;



-- USE  xavier;

-- -- CREATE TABLE users(
-- --     user_id int primary key auto_increment,
-- --     name varchar(255) not null,
-- --     email varchar(233) not null unique,
-- --     password varchar(255) not null
-- -- );

-- -- SHOW TABLEs;


-- -- INSERT into users VALUES
-- -- (1,"rahul","rahul@gmail.com",'1234');




-- LOAD DATA INFILE "C:\Users\beher\Downloads\smartphones_cleaned_v6.csv"
-- INTO TABLE smartphones
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;


-- SHOW TABLEs;


-- SELECT * FROM smartphones;


-- SELECT model,price,rating from smartphones;

-- SELECT model,battery_capacity,os FROM smartphones;


-- SELECT os as 'operating_system' ,battery_capacity as 'MAH' FROM smartphones;


-- SELECT model, sqrt(resolution_width*resolution_width + resolution_height * resolution_height)/screen_size as ppi FROM smartphones;

-- SELECT model ,"smartphone" as 'type' FROM smartphones;


-- SELECT DISTINCT (brand_name) as "all brands" FROM smartphones;


-- SELECT DISTINCT(processor_brand) as "all_processors" FROM smartphones;


-- SELECT DISTINCT brand_name,processor_brand FROM smartphones;


-- SELECT * FROM smartphones WHERE brand_name="samsung";

-- SELECT * FROM smartphones WHERE brand_name ="apple";


-- SELECT * FROM smartphones WHERE price>50000;

-- SELECT * FROM smartphones WHERE price>100000;


-- SELECT * FROM smartphones WHERE price>10000 AND price <20000;


-- SELECT * FROM smartphones WHERE price BETWEEN 10000 AND 20000;



-- SELECT * FROM smartphones WHERE rating >80 AND price <25000;

-- SELECT * FROM smartphones WHERE price <15000 AND rating > 80 AND processor_brand='snapdragon'


-- SELECT * FROM smartphones WHERE ram_capacity >8 AND brand_name='samsung'


-- SELECT * FROM smartphones WHERE processor_brand="snapdragon" AND brand_name="samsung"


-- SELECT DISTINCT brand_name FROM smartphones WHERE price > 50000;



-- SELECT * FROM smartphones WHERE processor_brand='snapdragon' OR processor_brand='exynos' or processor_brand='bionoc';



-- SELECT * FROM smartphones WHERE processor_brand in ('snapdragon','exynos','boinic')



-- SELECT * FROM smartphones WHERE processor_brand not IN ('snapdragon','exynos','boinic');


-- SELECT * FROM smartphones WHERE processor_brand ='mediatek';


-- UPDATE  smartphone SET processor_brand='mediatek' WHERE processor_brand='dimensity';



-- SELECT * FROM smartphones;


-- SELECT processor_brand FROM smartphones WHERE processor_brand='mediatek';


-- UPDATE smartphones set processor_brand='mediatek' WHERE processor_brand='exynos';


-- SELECT  processor_brand FROM smartphones WHERE processor_brand='exynos';



-- SELECT * from smartphones WHERE price > 200000;



-- delete from smartphones  where price > 200000;

-- SELECT * FROM smartphones WHERE primary_camera_rear>100;


-- delete from smartphones where primary_camera_rear>150 and brand_name='samsung'


-- SELECt * FROM smartphones WHERE primary_camera_rear> 100;


-- SELECT * FROM smartphones


-- SELECT max(price) FROM smartphones;

-- SELECT min(price) FROM smartphones ;

-- SELECT max(ram_capacity) FROM smartphones;


-- SELECT min(ram_capacity) FROM smartphones;


-- SELECT max(price) FROM smartphones WHERE brand_name='samsung'

-- SELECT min(price) FROM smartphones WHERE brand_name='samsung'


-- SELECT AVG(rating) FROM smartphones WHERE brand_name='apple'


-- SELECT sum(price) from smartphones 

-- SELECT sum(price) from smartphones  WHERE brand_name='samsung'


-- SELECT count(brand_name) FROM smartphones where brand_name='samsung'


-- SELECT count( DISTINCT(brand_name)) FROM smartphones;


-- SELECT std(screen_size) FROM smartphones;

-- SELECT variance(screen_size) FROM smartphones;


-- SELECT * FROM smartphones



-- SELECT price-100000 as temp FROM smartphones;


-- SELECT abs(price-10000) as temp FROM smartphones;


-- SELECT model, round(sqrt(resolution_width*resolution_width + resolution_height * resolution_height)/screen_size,2) as ppi FROM smartphones;


-- SELECT screen_size FROM smartphones


-- SELECT ceil(screen_size) FROM smartphones

SELECT floor(screen_size) from smartphones

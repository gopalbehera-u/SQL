-- show databases
-- use alex

-- SHOW tables

-- SELECT * FROM movies

-- SELECT `name` ,max(score) FROM movies

-- SELECT * FROM movies
-- WHERE score=(SELECT max(score) FROM movies)


-- SELECT * FROM movies
-- WHERE (gross-budget)=(SELECT max(gross-budget) from movies)


-- SELECT * FROM movies ORDER BY (gross-budget) DESC LIMIT 1


-- SELECT count(*) FROM movies WHERE score> (SELECT avg(score) from movies)


-- SELECT * FROM movies 
-- WHERE year=2000 AND score=(SELECT max(score) from movies WHERE year=2000)




-- SELECT * FROM movies

-- WHERE score=(SELECT max(score) from movies WHERE votes > (SELECT avg(votes) from movies))


-- SELECT * FROM orders


-- SELECT * FROM users WHERE user_id NOT IN

-- (SELECT DISTINCT(user_id) FROM orders)

-- SELECT * FROM users


-- SELECT * FROM movies

-- WHERE director IN (
    -- SELECT director FROM movies GROUP BY director ORDER BY sum(gross) DESC LIMIT 3
-- )



-- SELECT * FROM movies

-- WHERE star in (
--     SELECT star FROM movies
--     WHERE votes >250000 GROUP BY star HAVING AVG(score)>8.5
-- ) AND votes >250000





-- SELECT * FROM movies

-- WHERE (year,gross-budget) in (

-- SELECT year,max(gross-budget) FROM movies

-- GROUP BY year )



-- SELECT * FROM movies 

-- WHERE (genre,score) in (SELECT genre,max(score) from movies WHERE votes>25000 GROUP BY genre)



-- SELECT star,director, sum(gross),max(gross)

-- FROM movies

-- GROUP BY star,director ORDER BY sum(gross) DESC LIMIT 5



-- SELECT * FROM movies m1

-- WHERE score > (SELECT AVG(score) from movies m2 WHERE m2.genre=m1.genre)


-- WITH fav_food as (

--     SELECT name,f_name,count(*) as 'frequency' FROM users t1
--     JOIN orders t2 on t1.user_id=t2.user_id
--     JOIN order_details t3 on t2.order_id=t3.order_id
--     JOIN food t4 ON t3.f_id=t4.f_id
--     GROUP BY t2.user_id , t3.f_id
-- )


-- SELECT * FROM fav_food f1 

-- WHERE frequency=(SELECT max(frequency) from fav_food f2 WHERE f2.user_id=f1.user_id )



-- SELECT NAME,(votes/(SELECT sum(votes) from movies))*100 from movies


-- -- SELECT * FROM movies


-- SELECT NAME,genre,score ,(select avg(score) from movies m2.genre=m1.genre)
-- from movies m1



-- SELECT r_name,avg_rating from (SELECT r_id , AVG(restaurant_rating)
--  as 'avg_rating' FROM orders GROUP BY r_id
-- ) t1 JOIN restaurants t2 on t1.r_id=t2.r_id



-- SELECT genre ,AVG(score)

-- FROM movies

-- GROUP BY genre

-- HAVING AVG(score) > (SELECT avg(score) FROM movies)



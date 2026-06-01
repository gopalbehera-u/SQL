-- SHOW databases;

-- use xavier

-- SHOW tables

-- SELECT * from membership

-- SELECT * FROM `groups`;


-- SELECT * FROM users t1 cross JOIN `groups` t2


-- SELECT * FROM users1
-- SELECT * FROM membership t1 INNER JOIN users1 ON t1.user_id=t1.user_id

-- SELECT * FROM membership

-- SELECT * FROM users1

-- SELECT * FROM membership t1 LEFT JOIN users1 t2 ON t1.user_id=t2.user_id


-- SELECT * FROM membership t1 RIGHT JOIN users1 t2 on t1.user_id = t2.user_id

-- SELECT * FROM person1

-- SELECT * FROM person2

-- SELECT * FROM person1 
-- UNION 
-- SELECT * FROM person2



-- SELECT * FROM person1
-- UNION ALL
-- SELECT * FROM person2

-- SELECT * FROM person1
-- intersect
-- SELECT * from person2

-- SELECT * FROM person1
-- except
-- SELECT * from person2

-- SELECT * FROM person1 t1 LEFT JOIN person2 t2 ON t1.id=t2.id
-- UNION 
-- SELECT * FROM person1 t1 RIGHT JOIN person2 t2 on t1.id=t2.id


-- SELECT * FROM membership t1 LEFT JOIN  users1 t2 on t1.user_id=t2.user_id

-- UNION 

-- SELECT * from membership t1 RIGHT JOIN  users1 t2 on t1.user_id = t2.user_id


-- SELECT * FROM users1

-- SELECT * FROM users1 t1  JOIN users1 t2 on t1.emergency_contact=t2.user_id


-- SELECT * FROM students
-- SELECT * FROM class

-- SELECT * FROM students t1 JOIN class t2 ON t1.class_id=t2.class_id AND t1.enrollment_year = t2.class_year


SELECT * FROM users
-- SHOW tables


-- SELECT * FROM order_details t1 JOIN `orders (1)` t2 ON t1.order_id=t2.order_id
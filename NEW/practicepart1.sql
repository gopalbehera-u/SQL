-- CREATE DATABASE IF NOT EXISTS school;


-- use school;


-- CREATE TABLE IF NOT EXISTS students (

--     student_id INT primary key auto_increment,

--     name VARCHAR(100) not NULL,
--     EMAIL VARCHAR(140) NOT NULL UNIQUE,

--     age int check (age>5 and age<25)
-- );




-- INSERT INTO students(name,EMAIL,age) VALUES
-- ("Rahul","rahual@school.com",15),
-- ("Priya","priya@school.com",17),
-- ("Arjun","arjun@school.com",22);


-- SELECT * FROM students;



-- ALTER TABLE students add column phone_number VARCHAR(15) NOT NULL after name;


-- ALTER TABLE students drop column phone_number;



-- CREATE TABLE teachers(
--     teacher_id int primary key auto_increment,
--     name VARCHAR(100) not NULL,
--     EMAIL VARCHAR(150) not NULL UNIQUE
-- )





-- CREATE TABLE classes (
--     class_id INT primary key auto_increment,
--     class_name VARCHAR(100) not NULL,
--     teacher_id int NOT NULL,

--     constraint class_fk foreign key (teacher_id) references teachers(teacher_id)
--     on delete cascade
--     on update cascade


-- )



-- INSERT INTO teachers(name,EMAIL) VALUES
-- ("Mr.Sharma","sharma@school.com"),
-- ("Ms.Priya","Priya@school.com");




-- INSERT INTO classes(class_name,teacher_id) VALUES
-- ("Math",1),
-- ("Science",2),
-- ("English",1);



-- -- SELECT * FROM teachers;


-- SELECT * FROM classes;


-- delete from teachers where teacher_id=1;

-- SELECT * FROM classes;



-- ALTER TABLE students add constraint check (age>12);


-- ALTER TABLE students  modify  name VARCHAR(200);


-- delete from students where student_id=2;


-- TRUNCATE TABLE students;




-- CREATE TABLE IF NOT EXISTS products(
--     product_id INT primary key  auto_increment,
--     product_name VARCHAR(100) not NULL,
--     price int check(price>0),
--     created_at datetime default current_timestamp
-- );


-- INSERT INTO products(product_name,price) VALUES
-- ("Laptop",55000),
-- ("shoes",500),
-- ("shirt",300);



SELECT * FROM products;
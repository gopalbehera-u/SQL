-- -- CREATE DATABASE Gopal;
-- -- drop DATABASE Gopal;
-- -- CREATE DATABASE IF NOT EXISTS Gopal;
-- -- drop DATABASE IF EXISTS Gopal;
-- -- CREATE DATABASE if NOT EXISTS Gopal;
-- USE Gopal;
-- -- CREATE TABLe IF NOT EXISTS USERS(
-- --     USERID INT,
-- --     NAME VARCHAR(25),
-- --     EMAIL VARCHAR(30),
-- --     PASSWORD VARCHAR(45)
-- -- );
-- -- SELECT * FROM users;
-- -- INSERT INTO users VALUES
-- -- (1,"Rahul","rahul@123gmail.com","Rahul152"),
-- -- (2,"Rohit","rohit@45gmail.com","Rohit264");
-- -- SELECT * FROM users;
-- -- TRUNCATE TABLE users;
-- -- DROP TABLE IF EXISTS users;

-- -- SHOW TABLES;

-- -- CREATE TABLE users(
-- --     user_id INT NOT NULL,
-- --     NAME VARCHAR(233) NOT NULL,
-- --     EMAIL VARCHAR(33) NOT NULL,
-- --     PASSWORD VARCHAR(44)
-- -- );

-- -- INSERT INTO users VALUES
-- -- (1,"rahul","rahul@122","rahul12");

-- -- SELECT * FROM users;

-- -- INSERT INTO users VALUES
-- -- (2,"rohit","rohit@123gmail.com",NULL);

-- -- SELECT * from users;

-- -- DROP TABLE users;


-- -- CREATE TABLE users(
-- --     user_id INT NOT NULL,
-- --     NAME VARCHAR(44) NOT NULL,
-- --     EMAIL VARCHAR(90) NOT NULL UNIQUE,
-- --     PASSWORD VARCHAR(45) NOT NULL
-- -- );

-- -- INSERT INTO users VALUES
-- -- (1,"rahul","rahul@123","rahul@122");


-- -- SELECT * FROM users;


-- -- INSERT INTO users VALUES
-- -- (2,"rohit","rohit@123","rohit45");


-- -- DROP TABLE users;

-- -- CREATE TABLE users(
-- --     user_id INT not NULL,
-- --     NAME VARCHAR(255) not NULL,
-- --     EMAIL VARCHAR(233) NOT NULL,
-- --     PASSWORD VARCHAR(43) NOT NULL,


-- --     constraint user_email_unique UNIQUE(name,EMAIL),
-- --     constraint user_pk primary key (user_id,name)
-- -- );


-- -- drop TABLE users;


-- -- CREATE TABLE users(
-- --     user_id INT primary key auto_increment,
-- --     name VARCHAR(255) NOT NULL,
-- --     EMAIL VARCHAR(255) not NULL UNIQUE,
-- --     PASSWORD VARCHAR(44) not NULL
-- -- );



-- -- INSERT INTO users(name,EMAIL,PASSWORD) VALUES
-- -- ("rahul","rahul@123","rahu44"),
-- -- ("rohit","rohit@23","rohit56");


-- -- SELECT * FROM users;


-- -- CREATE TABLE students(
-- --     student_id INT primary key auto_increment,
-- --     name VARCHAR(59) not NULL,
-- --     age INT check (age>6 and age < 25)
-- -- );

-- -- INSERT INTO students VALUES
-- -- (1,"rahul",14);



-- -- CREATE TABLE ticket(
-- --     ticket_id INT primary key auto_increment,
-- --     name VARCHAR(34) not NULL,
-- --     travel_date  datetime default CURRENT_TIMESTAMP
-- -- );


-- -- INSERT INTO ticket(ticket_id,name) VALUES
-- -- (1,"gopal");

-- -- SELECT * FROM ticket;



-- -- CREATE TABLE customers(
-- --     cid INT primary key auto_increment,
-- --     name VARCHAR(255) not NULL,
-- --     EMAIL VARCHAR(244) not NULL UNIQUE
-- -- );



-- -- CREATE TABLE orders(
-- --     order_id INT primary key auto_increment,
-- --     cid int not NULL,
-- --     order_date datetime not NULL default CURRENT_TIMESTAMP,


-- --     constraint order_fk foreign key (cid) references customers(cid)
-- -- );


-- -- INSERT INTO customers VALUES
-- -- (1,"rohit","rohit@12"),
-- -- (2,"rahul","rahul@145");


-- -- SELECT * FROM customers;

-- -- SHOW TABLES;

-- -- SELECT * FROM orders;


-- -- DROP TABLE orders;


-- -- CREATE TABLE orders(
-- --     order_id INT primary key,
-- --     cid int not NULL,
-- --     order_date datetime not NULL default CURRENT_TIMESTAMP,


-- --     constraint order_fk foreign key (cid) references customers(cid)
-- --     on delete cascade
-- --     on update cascade
-- -- );



-- referential actions
-- 1.restrict 
-- 2.cascade
-- 3.set NULL
-- 4.set default

-- ALTER TABLE customers add column PASSWORD VARCHAR (90) NOT NULL;


-- SELECT * FROM customers;


-- ALTER TABLE customers add column surname VARCHAR(33) not NULL after name;



-- ALTER TABLE customers
-- add column pan_number VARCHAR(39) NOT NULL after surname,
-- add column join_date datetime not NULL default CURRENT_TIMESTAMP ;




-- ALTER TABLE customers drop column pan_number;



-- ALTER TABLE customers
-- drop column surname,
-- drop column join_date;




-- ALTER TABLE customers modify column PASSWORD int 

-- SELECT * FROM customers;



-- ALTER TABLE customers add constraint custome_age_check check(age>12);



-- SELECT * FROM customers;
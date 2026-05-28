-- SHOW databases;


-- CREATE DATABASE Hospital;


-- CREATE TABLE doctor(
--     doctor_id INT primary key auto_increment,
--     name varchar(100) not null,
--     email varchar(150) not null,
--     experience int check(experience>=0)
-- );


-- SELECT * FROM doctor



-- CREATE TABLE patients(
--     patient_id int primary key auto_increment,
--     name varchar(100) not null,
--     age int check(age>0),
--     admitted_at datetime default current_timestamp

-- );



-- SELECT * FROM patients;


-- CREATE TABLE appointment(
--     appointment_id int primary key auto_increment,
--     doctor_id int not null, 
--     patient_id int not null,
--     appointment_date datetime default current_timestamp,

--     constraint   appointments_fk1 foreign key (doctor_id)
--     references doctor(doctor_id)
--     on delete cascade ,


--     constraint appointments_fk2 foreign key (patient_id)

--     references patients(patient_id)
--     on delete cascade
-- );



-- INSERT INTO doctor VALUES
-- (1,"rahul","rahul@gmail.com",3),
-- (2,"rohit","rohit@45gmail.com",12),
-- (3,"virat","virat@18gmail.com",16);


-- SELECT * FROM doctor;



-- INSERT INTO patients(patient_id,name,age) VALUES
-- (1,"xavier",34),
-- (2,"tim",29),
-- (3,"sam",45);


-- SELECT * FROM patients;



-- INSERT INTO appointment(appointment_id,doctor_id,patient_id) VALUES
-- (1,1,1),
-- (2,2,2),
-- (3,3,3);


-- SELECT * FROM appointment;


-- ALTER TABLE patients add column phone varchar(15);



-- ALTER TABLE patients drop column phone;


-- delete from doctor WHERE doctor_id=1;


-- SELECT * FROM appointment;


-- TRUNCATE  patients;


-- First truncate child table
-- TRUNCATE TABLE appointment;

-- Then truncate parent table
TRUNCATE TABLE patients;
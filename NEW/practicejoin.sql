-- -- CREATE DATABASE IF NOT EXISTS info

-- USE info
-- CREATE TABLE Students (
--     StudentID INT,
--     StudentName VARCHAR(50),
--     CourseID INT
-- );


-- INSERT INTO Students VALUES
-- (1,'Rahul',101),
-- (2,'Rohit',102),
-- (3,'Virat',101),
-- (4,'Dhoni',103),
-- (5,'Hardik',102);


-- SELECT * FROM students


-- CREATE TABLE Courses (
--     CourseID INT,
--     CourseName VARCHAR(50),
--     Fee INT
-- );


-- INSERT INTO Courses VALUES
-- (101,'Data Science',50000),
-- (102,'Web Development',40000),
-- (103,'Cyber Security',60000);


-- SELECT * FROM courses


-- CREATE TABLE Instructors (
--     InstructorID INT,
--     InstructorName VARCHAR(50),
--     CourseID INT
-- );

-- INSERT INTO Instructors VALUES
-- (1,'Amit',101),
-- (2,'Suresh',102),
-- (3,'Priya',103);



-- CREATE TABLE Payments (
--     PaymentID INT,
--     StudentID INT,
--     AmountPaid INT
-- );


-- INSERT INTO Payments VALUES
-- (1,1,30000),
-- (2,2,40000),
-- (3,3,50000),
-- (4,4,60000),
-- (5,5,20000);


-- SELECT * FROM payments



-- Show Student Name and Course Name for all students.

-- SELECT t1.StudentName,t2.CourseName FROM students t1 JOIN courses t2 ON t1.CourseID=t2.CourseID



-- Show Student Name, Course Name, and Course Fee.

-- SELECT t1.StudentName,t2.AmountPaid,t3.CourseName FROM students t1 JOIN payments t2 ON t1.StudentID=t2.StudentID  JOIN courses t3 ON t1.CourseID=t3.CourseID



-- SELECT t1.StudentName,t2.CourseName,t2.Fee FROM students t1 JOIN courses t2 ON t1.CourseID=t2.CourseID


-- Show Instructor Name and Course Name for all instructors.


-- SELECT t1.InstructorName,t2.CourseName FROM instructors t1 JOIN courses t2 ON t1.CourseID=t2.CourseID


-- Show Student Name, Course Name, and Instructor Name for all students.


-- SELECT t3.StudentName,t1.CourseName,t2.InstructorName FROM courses t1 JOIN instructors t2 ON t1.CourseID=t2.CourseID JOIN students t3 ON t3.CourseID=t1.CourseID

-- Show Student Name and Amount Paid by each student.

-- SELECT t1.StudentName,t2.AmountPaid FROM students t1 JOIN payments t2 ON t1.StudentID=t2.StudentID

-- Show Student Name, Course Name, and Amount Paid by each student.

-- SELECT t1.StudentName,t2.CourseName,t3.AmountPaid FROM students t1 JOIN courses t2 ON t1.CourseID=t2.CourseID JOIN payments t3 ON t3.StudentID=t1.StudentID

-- Show the number of students enrolled in each course.

-- SELECT t1.CourseName,count(*) FROM courses t1 JOIN students t2 ON t1.CourseID=t2.CourseID

-- GROUP BY t1.CourseName

-- Show the total amount paid by students in each course.

-- SELECT t3.CourseName,sum(t2.AmountPaid) FROM students t1 JOIN payments t2 ON t1.StudentID=t2.StudentID

-- JOIN courses t3 ON t1.CourseID=t3.CourseID

-- GROUP BY t3.CourseName

-- Show the average amount paid by students in each course.


-- SELECT t2.CourseName, AVG(t3.AmountPaid) as "avg_payment_per_student" FROM students t1 JOIN courses t2 ON t1.CourseID=t2.CourseID
-- JOIN payments t3 ON t1.StudentID=t3.StudentID

-- GROUP BY t2.CourseName 



-- Show the course that has the highest number of students enrolled.


-- SELECT t2.CourseName,count(*) as "number_of_student" FROM students t1 JOIN courses t2 ON t1.CourseID=t2.CourseID
-- GROUP BY t2.CourseName ORDER BY number_of_student DESC LIMIT 1






-- SELECT * FROM students
-- SELECT * FROM instructors
-- SELECT * FROM payments
-- SELECT * FROM courses

-- Show the total course fee value for each course


-- SELECT t2.CourseName, count(*) as "coursecount",count(*)*t2.Fee as "total"
--  FROM students t1 JOIN courses t2 ON t1.CourseID=t2.CourseID

-- GROUP BY t2.CourseName,t2.Fee



-- Show the instructor who teaches the highest number of students.


-- SELECT t2.InstructorName,count(*) as "number_of_student" FROM students t1 JOIN instructors t2 ON t1.CourseID=t2.CourseID

-- GROUP BY t2.InstructorName ORDER BY number_of_student DESC LIMIT 1



-- Show the instructor who generates the highest course fee value.


-- SELECT t2.InstructorName,count(*) as "numberofstudent",count(*)*t3.Fee as "totalvalue" FROM  students t1 JOIN instructors t2 ON t1.CourseID=t2.CourseID

-- JOIN courses t3 ON t3.CourseID=t1.CourseID

-- GROUP BY t2.InstructorName,Fee


-- SELECT * FROM students
-- SELECT * FROM instructors
-- SELECT * FROM payments
-- SELECT * FROM courses

-- Show the total amount paid by students under each instructor.

-- SELECT t2.InstructorName ,sum(t3.AmountPaid) as  "totalamountpaid" FROM  students t1 JOIN instructors t2 ON t1.CourseID=t2.CourseID

-- JOIN payments t3 ON t3.StudentID=t1.StudentID

-- GROUP BY t2.InstructorName



-- Show all students who have paid less than the course fee.


-- SELECT t1.StudentName,t2.CourseName,t3.AmountPaid,t2.Fee,(t2.Fee-t3.AmountPaid) as "pending" FROM students t1 JOIN courses t2 ON t1.CourseID=t2.CourseID

-- JOIN payments t3 ON t3.StudentID=t1.StudentID

-- WHERE t2.Fee>t3.AmountPaid

-- GROUP BY t1.StudentName,t2.CourseName,t3.AmountPaid,t2.Fee



-- SELECT
--     t1.StudentName,
--     t2.CourseName,
--     t3.AmountPaid,
--     t2.Fee,
--     (t2.Fee - t3.AmountPaid) AS pending
-- FROM students t1
-- JOIN courses t2
--     ON t1.CourseID = t2.CourseID
-- JOIN payments t3
--     ON t3.StudentID = t1.StudentID
-- WHERE t2.Fee > t3.AmountPaid;


-- Show the course that has the highest total amount paid by students.

-- SELECT t3.CourseName,t1.StudentName,sum(t2.AmountPaid) as "totalpaid" FROM students t1 JOIN payments t2 ON t1.StudentID=t2.StudentID
-- JOIN courses t3 ON t1.CourseID=t3.CourseID 

-- GROUP BY t3.CourseName,t1.StudentName ORDER BY totalpaid DESC LIMIT 1



-- Show all instructors whose students have paid more than ₹50,000 in total.

-- SELECT t2.InstructorName,sum(t3.AmountPaid) FROM students t1 JOIN instructors t2 ON t2.CourseID=t1.CourseID

-- JOIN payments t3 ON t3.StudentID=t1.StudentID

-- GROUP BY t2.InstructorName HAVING sum(t3.AmountPaid)>50000


-- Show the courses where the average payment made by students is greater than ₹35,000.


-- SELECT t2.CourseName,AVG(t3.AmountPaid) FROM students t1 JOIN courses t2 on t1.CourseID=t2.CourseID

-- JOIN payments t3 ON t3.StudentID=t1.StudentID


-- GROUP BY t2.CourseName HAVING AVG(t3.AmountPaid)>35000


--  SELECT * FROM students
-- SELECT * FROM instructors
-- SELECT * FROM payments
-- SELECT * FROM courses


-- Show students whose payment is less than 50% of their course fee.

-- SELECT t1.StudentName,t2.CourseName,t2.Fee,t3.AmountPaid FROM students t1 JOIN courses t2 ON t1.CourseID=t2.CourseID

-- JOIN payments t3 ON t3.StudentID=t1.StudentID

-- WHERE t3.AmountPaid<(t2.Fee*0.5)




-- Show the instructor name, course name,
--  and number of students enrolled in that course.


-- SELECT t2.InstructorName,t3.CourseName,count(*) as "numberofstudent" FROM students t1 JOIN instructors t2 ON t1.CourseID=t2.CourseID

-- JOIN courses t3 ON t3.CourseID=t1.CourseID

-- GROUP BY t2.InstructorName,t3.CourseName




-- Show the instructor name, course name, total amount paid by students, 
-- and average amount paid by students.


-- SELECT t2.CourseName,t3.InstructorName,AVG(t4.AmountPaid) as "avgpayment",sum(t4.AmountPaid) as "totalpayment" 
-- FROM students t1 JOIN courses t2 ON t1.CourseID=t2.CourseID

-- JOIN instructors t3 ON t3.CourseID=t2.CourseID

-- JOIN payments t4 ON t4.StudentID=t1.StudentID

-- GROUP BY t2.CourseName,t3.InstructorName



-- Show all instructors whose average 
-- student payment is greater than ₹40,000.

-- SELECT t2.InstructorName,AVG(AmountPaid) as "avgamountpaid" FROM students t1 JOIN instructors t2 ON t2.CourseID=t1.CourseID

-- JOIN payments t3 ON t3.StudentID=t1.StudentID

-- GROUP BY t2.InstructorName HAVING AVG(AmountPaid)





-- SELECT t2.CourseName,AVG(AmountPaid) as "avgamountpaid" FROM students t1 JOIN courses t2 ON t2.CourseID=t1.CourseID

-- JOIN payments t3 ON t3.StudentID=t1.StudentID

-- GROUP BY t2.CourseName ORDER BY avgamountpaid DESC LIMIT 1






-- SELECT t2.InstructorName,AVG(AmountPaid) as "avgamountpaid" FROM students t1 JOIN instructors t2 ON t2.CourseID=t1.CourseID

-- JOIN payments t3 ON t3.StudentID=t1.StudentID

-- GROUP BY t2.InstructorName ORDER BY avgamountpaid DESC LIMIT 1
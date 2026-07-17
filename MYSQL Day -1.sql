Create Database College;
Create Database  if not exists college;
use college;


Create Table Student1(
Id INT Primary key,
name Varchar(50),
age INT Not Null
);

show databases;

show Tables;

select * from student1;



CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    category VARCHAR(50)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    exam_date DATE
);

show tables;

Insert into students values(1, 'Rishi', 20, 'male', 'Kompally');
Insert into students values(2, 'Rajesh', 21, 'male', 'Alwal');
Insert into students values(3, 'Jagadish', 22, 'male', 'Secundrabad');
Insert into students values(4, 'Rahul', 21, 'male', 'Kukatapally');
Insert into students values(5, 'Hemanth', 22, 'male', 'Guta');
Insert into students values(6, 'Likith', 20, 'male', 'Bownepally');
Insert into students values(7, 'Harsha', 20, 'male', 'Hyderabad');
Insert into students values(8, 'Vikas', 20, 'male', 'Amerpeat');
Insert into students values(9, 'Mani', 20, 'male', 'Lingampally');
Insert into students values(10, 'Manish', 19, 'male', 'Duallapally');





Insert into courses values(101, 'AWS','Cloud');
Insert into courses values(102, 'Python','Data Analyst');
Insert into courses values(103, 'Machine Learining','Data Engineer');
Insert into courses values(104, 'SQL','Data Science');
Insert into courses values(105, 'Excel','Data Analyst');
Insert into courses values(106, 'Power Bi','Data Analyst');
Insert into courses values(107, 'AI','Data Science');
Insert into courses values(108, 'SIEM','Cyber Security');
Insert into courses values(109, 'Sales Force','Sales Force');
Insert into courses values(110, 'Hadoop','Big Data');


DROP TABLE enrollments;


DROP TABLE enrollments;

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    exam_date DATE
);
INSERT INTO enrollments VALUES
(201,1,101,85,'2024-01-01'),
(202,2,102,75,'2024-02-02'),
(203,3,103,65,'2024-03-03'),
(204,4,101,77,'2024-04-05'),
(205,5,101,87,'2024-05-06'),
(206,6,101,73,'2024-06-07'),
(207,7,101,72,'2024-07-08'),
(208,8,101,71,'2024-11-09'),
(209,9,101,91,'2024-11-21'),
(210,10,101,81,'2024-12-23');


Select * From Students;


SELECT * 
FROM students
WHERE city = 'Lingampally';

Drop Table students;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50)
);


INSERT INTO students VALUES
(1, 'Ravi', 20, 'Male', 'Hyderabad'),
(2, 'Sneha', 22, 'Female', 'Mumbai'),
(3, 'Arjun', 21, 'Male', 'Delhi'),
(4, 'Priya', 23, 'Female', 'Bangalore'),
(5, 'Jagadish', 26, 'Male', 'Hyderabad'),
(6, 'Suchi', 25, 'Female', 'Andra Pradesh'),
(7, 'Susmitha', 24, 'Female', 'Chennai'),
(8, 'Bunny', 23, 'Male', 'Gujarat'),
(9, 'Karthik', 22, 'Male', 'Hyderabad'),
(10,'Harshitha',25,'Female','Madhya Pradesh');



SELECT * 
FROM students
WHERE city = 'Hyderabad';

SELECT * 
FROM students
WHERE city = 'Delhi';


SELECT student_name, age
FROM students
WHERE age < 26;

Select student_name, age
From Students
where age >23;




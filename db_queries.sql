-- Active: 1692265852855@@localhost@3306

-- create a database named "mydb" 
CREATE DATABASE mydb;

-- select "mydb" for further operations
USE mydb;

-- create a table named "student" having columns named "rollno", "name", "branch", "fee"
CREATE TABLE student(
    rollno int PRIMARY KEY,
    name varchar(50),
    branch varchar(100),
    fee int
);

-- insert four records into the "student" table
INSERT INTO student VALUES
    (1001, 'Alok', 'IT', 12000),
    (1002, 'Hemant', 'IT', 12000),
    (1003, 'Aayush', 'CS', 15000),
    (1004, 'Aayushi', 'CS', 15000);

-- display all the data from table "student"
SELECT * FROM student;

-- display all the records with "rollno", "name", and "branch" column of "student" table
SELECT rollno, name, branch FROM student;

-- display all the records having branch "IT"
SELECT * FROM student  WHERE branch = 'IT';

-- display all the records having rollno "1003"
SELECT * FROM student WHERE rollno = 1003;

-- display all the records having fee greater than "12000"
SELECT * FROM student WHERE fee > 12000;

-- display all the records having rollno "1004"
SELECT * FROM student WHERE rollno = 1004;

-- delete records from "student" table having rollno "1004"
DELETE FROM student WHERE rollno = 1004;

-- delete records from "student" table having rollno "1004"
DROP TABLE student;
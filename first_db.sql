-- Active: 1692265852855@@localhost@3306

CREATE DATABASE mydb;

USE mydb;

CREATE TABLE student(
    rollno int PRIMARY KEY,
    name varchar(50),
    branch varchar(100),
    fee int
);

INSERT INTO student VALUES
    (1001, 'Alok', 'IT', 12000),
    (1002, 'Hemant', 'IT', 12000),
    (1003, 'Aayush', 'CS', 15000),
    (1004, 'Aayushi', 'CS', 15000);

SELECT * FROM student;

SELECT rollno, name, branch FROM student;

SELECT * FROM student  WHERE branch = 'IT';

SELECT * FROM student WHERE rollno = 1003;

SELECT * FROM student WHERE fee > 12000;

SELECT * FROM student WHERE rollno = 1004;

DELETE FROM student WHERE rollno = 1004;

DROP TABLE student;
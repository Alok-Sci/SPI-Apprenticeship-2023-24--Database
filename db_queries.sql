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

-- delete records from "student" table having rollno "1004"
DROP TABLE student;

-- delete all the records from "student" table
DELETE FROM student;

-- delete records from "student" table having rollno "1004"
DELETE FROM student WHERE rollno = 1004;

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

-- display the records in sorted order(default)
SELECT * FROM student ORDER BY emp_name;

-- display the records in sorted order(ascending) based on "emp_name" column
SELECT * FROM student ORDER BY emp_name ASC;

-- display the records in sorted order(descending) based on "emp_name" column
SELECT * FROM student ORDER BY emp_name DESC;

-- update value of a column having rollno "1002"
UPDATE student SET branch='ME' WHERE rollno=1002;

-- update values of multiple columns at the same time having rollno "1002"
UPDATE student SET branch='ME', fee=11000 WHERE rollno=1002;


ALTER 



-- practice question (09 oct 2023) task-2

--create a table with columns (cust_id, name, address)
CREATE TABLE customer 
(
    cust_id int,
    name varchar(50),
    address varchar(500)
);


USE mydb;

-- display all the data from table "student"
SELECT * FROM customer;

-- add connect_date col inside customer
ALTER TABLE customer ADD connect_date date;
-- drop connect_date COLUMN
ALTER TABLE customer DROP COLUMN connect_date;

-- add cust_id with primary key CONSTRAINT
ALTER TABLE customer MODIFY cust_id int PRIMARY KEY;

-- add connect_date date after name column.ADD
ALTER TABLE customer ADD connect_date date AFTER name; 

-- create a table name orders having columns (pid int PM, pname varchar(50), cust_id int FK to cust_id->customer)
CREATE TABLE orders 
(
    pid int PRIMARY KEY,
    pname varchar(50),
    cust_id int,
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);

-- delete customer named table
DROP TABLE customer;


-- practice question (09 oct 2023) task-3
-- create a table named person
CREATE TABLE person
(
    id int PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100)
);

-- create a table named account
CREATE TABLE account
(
    acid int AUTO_INCREMENT PRIMARY KEY,
    bs int,
    hra int,
    da int,
    id int,
    FOREIGN KEY (id) REFERENCES person(id) 
);

-- insert records into the person table
INSERT INTO person VALUES
(1001, 'Dhirendra Singh', 'Lucknow'),
(1002, 'Jitendra Verma', 'Sitapur'),
(1003, 'Brijesh Mishra', 'Barabanki'),
(1004, 'Rohit Singh', 'Bihar'),
(1005, 'Priya Singh', 'Kanpur');

-- insert records into the account table
INSERT INTO account (bs, hra, da, id) VALUES
(20000, 5000, 10000, 1001),
(30000, 7500, 15000, 1002),
(40000, 10000, 20000, 1003),
(50000, 12500, 25000, 1004);
INSERT INTO account (bs, hra, da) VALUES (40000, 10000, 20000);

--display records from person and account
SELECT * FROM account;
SELECT * FROM person;
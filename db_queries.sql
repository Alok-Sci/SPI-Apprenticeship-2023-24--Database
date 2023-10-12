-- Active: 1692265852855@@localhost@3306
-- q1.1
-- create a database named "mydb" 
CREATE DATABASE mydb;

-- select "mydb" for further operations
USE mydb;

-- q.1.2
-- create a table named "student" having columns named "rollno", "name", "branch", "fee"
CREATE TABLE student(
    rollno int PRIMARY KEY,
    name varchar(50),
    branch varchar(100),
    fee int
);

-- q.1.3
-- insert four records into the "student" table
INSERT INTO student VALUES
    (1001, 'Alok', 'IT', 12000),
    (1002, 'Hemant', 'IT', 12000),
    (1003, 'Aayush', 'CS', 15000),
    (1004, 'Aayushi', 'CS', 15000);

-- q.1.4.1
-- display all the data from table "student"
SELECT * FROM student;

-- q.1.4.2
-- display all the records with "rollno", "name", and "branch" column of "student" table
SELECT rollno, name, branch FROM student;

-- q.1.4.3
-- display all the records having branch "IT"
SELECT * FROM student  WHERE branch = 'IT';

-- q.1.4.4
-- display all the records having rollno "1003"
SELECT * FROM student WHERE rollno = 1003;

-- q.1.4.5
-- display all the records having fee greater than "12000"
SELECT * FROM student WHERE fee > 12000;

-- q.1.4.6
-- display all the records having rollno "1004"
SELECT * FROM student WHERE rollno = 1004;

-- q.1.5
-- delete records from "student" table having rollno "1004"
DELETE FROM student WHERE rollno = 1004;

-- delete all the records from "student" table
DELETE FROM student;

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

----------------------------------------------
-- practice question (09 oct 2023) task-2

-- q.2.1
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

--q.2.2.1
-- add connect_date col inside customer
ALTER TABLE customer ADD connect_date date;

-- q.2.2.2
-- drop connect_date COLUMN
ALTER TABLE customer DROP COLUMN connect_date;

-- q.2.2.3
-- add cust_id with primary key CONSTRAINT
ALTER TABLE customer MODIFY cust_id int PRIMARY KEY;

-- q.2.2.4
-- add connect_date date after name column.ADD
ALTER TABLE customer ADD connect_date date AFTER name; 

-- q.2.3.1
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

--------------------------------------
-- practice question (09 oct 2023) task-3

-- q3.1.1
-- create a table named person
CREATE TABLE person
(
    id int PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100)
);

-- q3.1.2
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

-- q3.2.1
-- insert records into the person table
INSERT INTO person VALUES
(1001, 'Dhirendra Singh', 'Lucknow'),
(1002, 'Jitendra Verma', 'Sitapur'),
(1003, 'Brijesh Mishra', 'Barabanki'),
(1004, 'Rohit Singh', 'Bihar'),
(1005, 'Priya Singh', 'Kanpur');

-- q3.2.2
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

-- q3.3.1
-- i. select name from person table, bs, hra and da from account table by performing inner join operation.
SELECT person.name, account.bs, account.hra, account.da FROM person INNER JOIN account ON person.id=account.id;

-- ii. select name from person table, bs, hra and da from account table by performing left join operation.
SELECT person.name, account.bs, account.hra, account.da FROM person LEFT JOIN account ON person.id=account.id;

-- iii. select name from person table, bs, hra and da from account table by performing right join operation.
SELECT person.name, account.bs, account.hra, account.da FROM person RIGHT JOIN account ON person.id=account.id;

-- iv. select name from person table, bs, hra and da from account table by performing full join operation.
SELECT person.name, account.bs, account.hra, account.da FROM person LEFT JOIN account ON person.id=account.id
UNION
SELECT person.name, account.bs, account.hra, account.da FROM person RIGHT JOIN account ON person.id=account.id;
--------------------------
-- 12 oct 2023------
-- tast - 5
-- create database
CREATE DATABASE testdb;

-- create table
USE testdb;
CREATE TABLE bookstore
(
    bookid VARCHAR(15) PRIMARY KEY,
    isbnno VARCHAR(15),
    program VARCHAR(15),
    branch VARCHAR(100),
    subject VARCHAR(100),
    bookname VARCHAR(100),
    authorname VARCHAR(100)
);

-- insert query

INSERT INTO testdb VALUES
('TMBU1', '12345678', 'B.Tech.', 'CS', 'C', 'Let Us C', 'Y.P.Kanetkar'),
('TMBU2', '12345678', 'B.Tech.', 'CS', 'C', 'Let Us C', 'Y.P.Kanetkar'),
('TMBU3', '12345678', 'B.Tech.', 'CS', 'C', 'Let Us C', 'Y.P.Kanetkar'),
('TMBU4', '12345679', 'B.Tech.', 'CS', 'Java', 'Effective Java', 'Joshua Bloch'),
('TMBU5', '12345679', 'B.Tech.', 'CS', 'Java', 'Effective Java', 'Joshua Bloch'),
('TMBU6', '12345679', 'B.Tech.', 'CS', 'Java', 'Effective Java', 'Joshua Bloch'),
('TMBU7', '12345688', 'B.Tech.', 'IT', 'Database', 'RDBMS Using MySQL', 'Brijesh Mishra');

-- select bookid, isbnno, program, bookname, authorname from bookstore table with all rows.
SELECT (bookid, isbnno, program, bookname, authorname) FROM bookstore;

-- select all books of "CS" branch
SELECT bookname FROM bookstore WHERE branch='CS';

-- count no. of books with name "Let Us C"
SELECT COUNT(*) FROM bookstore WHERE bookname='Let Us C';

-- Update authorname with "Vipin C. Desai" for bookid TMBU7
UPDATE bookstore SET authorname='Vipin C. Desai' WHERE bookid='TMBU7';

-- delete record of book with bookid TMBU7.
DELETE FROM bookstore WHERE bookid='TMBU7';

-- create a table with name "issuebook" with rows (issueid int pm, bookid varchar(15) fk to bookstroe
USE testdb;
CREATE TABLE issuebook 
(
    issueid int PRIMARY KEY,
    bookid VARCHAR(15),
    Rollno int,
    studentname VARCHAR(50),
    Bookname VARCHAR(100),
    authorname VARCHAR(100),
    FOREIGN KEY (bookid) REFERENCES bookstore(bookid)
);

-- insert records
INSERT INTO issuebook VALUES 
(1, 'TMBU1', 1001, 'Rajat Singh', 'Let Us C', 'Y.P.Kanetkar'),
(2, 'TMBU4', 1001, 'Rajat Singh', 'Effective Java', 'Joshua Bloch'),
(3, 'TMBU2', 1002, 'Dinesh Singh', 'Let Us C', 'Y.P.Kanetkar'),
(4, 'TMBU5', 1003, 'Nisha Kumari', 'Effective Java', 'Joshua Bloch');

-- select bookid, isbno, rollno, studentname, bookname, authorname from bookstore and issuebook tables using inner join operation.
SELECT (bookid, isbno, rollno, studentname, bookname, authorname) FROM bookstore INNER JOIN issuebook ON bookstore.bookid=issuebook.bookid;

-- select bookid, isbno, rollno, studentname, bookname, authorname from bookstore and issuebook tables using full outer join operation.
SELECT (bookid, isbno, rollno, studentname, bookname, authorname) FROM bookstore LEFT JOIN issuebook
UNION
SELECT (bookid, isbno, rollno, studentname, bookname, authorname) FROM bookstore RIGHT JOIN issuebook;

-- create a table staff with rows (staffid varchar(10) pm, staffname varchar(50), department varchar(100), salary int);
CREATE TABLE staff 
(
    staffid VARCHAR(10) PRIMARY KEY,
    staffname VARCHAR(50),
    department VARCHAR(100),
    salary int 
);
-- now create a view with name 'st' having fields staffid, staffname, department.
CREATE VIEW st 
AS
SELECT (staffid, staffname, department) FROM staff;

-- now insert some records in 'st' view.
INSERT INTO st VALUES 

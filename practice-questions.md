# Database Practice Questions

## Task - 1 (07 october 2023)

#### **Q1.** Write a query to create a `database` named `mydb`.

**Ans.** 
```sql
CREATE DATABASE mydb;
```

#### **Q2.** Write a query to create a `table` named `student` with following columns:
- `rollno` with `int` data type, is `primary key`.
- `name` with `varchar` data type having size `40`.
- `branch` with `varchar` data type having size `100`.
- `fee` with `int` data type. 

**Ans.**
```sql      
CREATE TABLE student
(
    rollno int PRIMARY KEY,
    name varchar(50),
    branch varchar(100),
    fee int
);
```

#### **Q3.** Write a query to insert the following `data` into the `student` table.
- 1001, Rohit, CS, 12000
- 1002, Mohit, CS, 12000
- 1003, Shobhit, IT, 15000
- 1004, Mudit, IT, 15000

**Ans.**
```sql
INSERT INTO student VALUES
(1001, 'Alok', 'IT', 12000),
(1002, 'Hemant', 'IT', 12000),
(1003, 'Aayush', 'CS', 15000),
(1004, 'Aayushi', 'CS', 15000);
```

#### **Q4.** Write the following queries to `select` the data.
##### - Select all records of `student` table with all columns.
##### - Select all records of `student` table with `rollno`, `name`, `branch` columns.
##### - Select all records of `student` table with all columns havign `branch` `IT`.
##### - Select record of `student` table having `rollno` `1003`.
##### - Select all records of `student` table with `fee` greater than `12000`.
##### - Select record of `student` table with column `rollno`, `name`, `fee` having `rollno` `1004`.

**Ans.**
- Select all records with all columns.
```sql
SELECT * FROM student;
```
- Select all records with `rollno`, `name`, `branch` columns.
```sql
SELECT rollno, name, branch FROM student;
``` 
- Select all records of `student` table with all columns havign `branch` `IT`.
```sql
SELECT * FROM student WHERE branch='IT';
``` 
- Select record of `student` table having `rollno` `1003`.
```sql
SELECT * FROM student WHERE rollno=1003;
``` 
- Select all records of `student` table with `fee` greater than `12000`.
```sql
SELECT * FROM student WHERE fee>12000;
``` 
- Select record of `student` table with column `rollno`, `name`, `fee` having `rollno` `1004`.
```sql
SELECT rollno, name, fee FROM student WHERE rollno=1004;
``` 

#### **Q5.** Write a query to `delete` the record having rollno `1004` from `student` table.

**Ans.**
```sql
DELETE FROM student WHERE rollno = 1004;
```
## Task - 2 (09 october 2023)

#### **Q1.** In `mydb` database create a table `customer` with following structure:-.

| Column name | Data Type | Constraint |
| --- | --- | --- |
| cust_id | int | |
| name | varchar(50) | | 
| address | varchar(500) |  |

**Ans.**
```sql
CREATE TABLE customer 
(
    cust_id int,
    name varchar(50),
    address varchar(500)
);
```

#### **Q2.** Do following operations and `customer` table:-

- Add a new column with name `connect_date` with datatype
`date`.
- Drop column `connect_date`.

- Add primary key on `cust_id` column.

- Add a new column `connect_date` with datatype `date` after
`name` column.

**Ans.**
- Add a new column with name `connect_date` with datatype
`date`.
    ```sql
    ALTER TABLE customer ADD connect_date date;
    ```
- Drop column `connect_date`.
    ```sql
    ALTER TABLE customer DROP COLUMN connect_date;
    ```
- Add primary key on `cust_id` column.
    ```sql
    ALTER TABLE customer MODIFY cust_id int PRIMARY KEY;
    ```

- Add a new column `connect_date` with datatype `date` after
`name` column.
    ```sql
    ALTER TABLE customer ADD connect_date date AFTER name; 
    ```

#### **Q3.** Create a table with name `orders` with following structure:-
| Column name | Data type | Constraint |
|--- | --- | --- |
| pid | int | PRIMARY KEY |
| pname | varchar(50) |  |
| cust_id | int | FOREIGN KEY references to `cust_id` of `customer` table

**Ans.** 
```sql
CREATE TABLE orders 
(
    pid int PRIMARY KEY,
    pname varchar(50),
    cust_id int,
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);
```
## Task - 3 (09 october 2023)

#### **Q1.1** Create a table person with following structure:-
| Column Name | Data Type | Constraint |
| --- | --- | --- |
| id | INT | PRIMARY KEY |
| name | VARCHAR(50) | |
| address | VARCHAR(100) |  |

#### **Q1.2** Create a table account with following strucutre:-
| Column Name | Data Type | Constraint |
| --- | --- | --- |
| acid | INT | Primary key |
| bs | INT | |
| hra | INT | |
| da | INT | |
| id | INT | FOREIGN KEY references to person(id) |

**Ans.**
```sql
CREATE TABLE person
(
    id int PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100)
);

CREATE TABLE account
(
    acid int AUTO_INCREMENT PRIMARY KEY,
    bs int,
    hra int,
    da int,
    id int,
    FOREIGN KEY (id) REFERENCES person(id) 
);
```

#### **Q2.1** Insert following records in person table:-
| Id | Name | Address |
| --- | --- | --- |
| 1001 | Dhirendra Singh | Lucknow |
| 1002 | Jitendra Verma | Sitapur |
| 1003 | Brijesh Mishra | Barabanki |
| 1004 | Rohit Singh | Bihar |
| 1005 | Priya Singh | Kanpur |

#### **Q2.2** Insert following records in account table:-
| Acid | Bs  |Hra | Da | Id |
| --- | --- | --- | --- | --- |
| 1 | 20000 | 5000 | 10000 | 1001 |
| 2 | 30000 | 7500 | 15000 | 1002| 
| 3 | 40000 | 10000 | 20000 | 1003| 
| 4 | 50000 | 12500 | 25000 | 1004| 
| 5 | 40000 | 10000 | 20000| 


**Ans.**
```sql
INSERT INTO person VALUES
(1001, 'Dhirendra Singh', 'Lucknow'),
(1002, 'Jitendra Verma', 'Sitapur'),
(1003, 'Brijesh Mishra', 'Barabanki'),
(1004, 'Rohit Singh', 'Bihar'),
(1005, 'Priya Singh', 'Kanpur');

INSERT INTO account (bs, hra, da, id) VALUES
(20000, 5000, 10000, 1001),
(30000, 7500, 15000, 1002),
(40000, 10000, 20000, 1003),
(50000, 12500, 25000, 1004);

INSERT INTO account (bs, hra, da) VALUES 
(40000, 10000, 20000);

```

#### **Q3.**
##### **i.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `inner join` operation.
##### **ii.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `left join` operation.
##### **iii.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `right join` operation.
##### **iv.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `full join` operation.

**Ans.**
**i.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `inner join` operation.
```sql
SELECT person.name, account.bs, account.hra, account.da FROM person INNER JOIN account ON person.id=account.id;
```
| name | bs | hra | da |
| --- | --- | --- | --- |
| Dhirendra Singh | 20000 | 5000 | 10000 |
| Jitendra Verma | 30000 | 7500 | 15000 |
| Brijesh Mishra | 40000 | 10000 | 20000 |
| Rohit Singh | 50000 | 12500 | 25000 |

**ii.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `left join` operation.
```sql
SELECT person.name, account.bs, account.hra, account.da FROM person LEFT JOIN account ON person.id=account.id;
```
| name | bs | hra | da |
| --- | --- | --- | --- |
| Dhirendra Singh | 20000 | 5000 | 10000 |
| Jitendra Verma | 30000 | 7500 | 15000 |
| Brijesh Mishra | 40000 | 10000 | 20000 |
| Rohit Singh | 50000 | 12500 | 25000 |
| Priya Singh | _NULL_ | _NULL_ | _NULL_ |

**iii.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `right join` operation.
```sql
SELECT person.name, account.bs, account.hra, account.da FROM person RIGHT JOIN account ON person.id=account.id;
```
| name | bs | hra | da |
| --- | --- | --- | --- |
| Dhirendra Singh | 20000 | 5000 | 10000 |
| Jitendra Verma | 30000 | 7500 | 15000 |
| Brijesh Mishra | 40000 | 10000 | 20000 |
| Rohit Singh | 50000 | 12500 | 25000 |
| _NULL_ | 40000 | 10000 | 20000 |

**iv.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `full join` operation.
```sql
SELECT person.name, account.bs, account.hra, account.da FROM person LEFT JOIN account ON person.id=account.id
UNION
SELECT person.name, account.bs, account.hra, account.da FROM person RIGHT JOIN account ON person.id=account.id;
```
| name | bs | hra | da |
| --- | --- | --- | --- |
| Dhirendra Singh | 20000 | 5000 | 10000 |
| Jitendra Verma | 30000 | 7500 | 15000 |
| Brijesh Mishra | 40000 | 10000 | 20000 |
| Rohit Singh | 50000 | 12500 | 25000 |
| Priya Singh | _NULL_ | _NULL_ | _NULL_ |
| _NULL_ | 40000 | 10000 | 20000 |

## Task - 4 (10 october 2023)

#### **Q1.** 
- Create a database with name ‘practicedb’. 
- In practicedb database create a table with name ‘userinfo’ with following structure:-

| Column Name | Data Type | Constraint |
| --- | --- | --- |
| Firstname | VARCHAR(30) | |
| Lastname | VARCHAR(30)| |
| Contactno | VARCHAR(15) |Primary Key |
| Emailaddress | VARCHAR(50)| |
- Now add a new column gender with data type type varchar(6) after Lastname.

**Ans.**
- Create a database with name ‘practicedb’. 
```sql
CREATE DATABASE practicedb;
```
- In practicedb database create a table with name ‘userinfo’ with following structure:-
```sql
USE practicedb;
CREATE TABLE userinfo
{
    Firstname VARCHAR(30),
    Lastname VARCHAR(30),
    Contactno VARCHAR(15) PRIMARY KEY,
    Emailaddress VARCHAR(50)
};
```
- Now add a new column gender with data type type varchar(6) after Lastname.
```sql
ALTER TABLE userinfo ADD gender varchar(6) AFTER Lastname;
```

#### **Q2.** Insert following records in userinfo table:-
| Firstname | Lastname | Gender | Contactno | Emailaddress |
| --- | --- | --- | --- | --- |
| Brijesh | Mishra | Male | 9453318798 | brijesh@gmail.com |
| Rajat | Verma | Male | 9936652039 | rajat@gmail.com |
| Nisha | Singh | Female | 9559763249 | nisha@gmail.com |
| Priya | Singh | Female | 7753001621 | priya@gmail.com |

**Ans.**
```sql
INSERT INTO userinfo VALUES
('Brijesh', 'Mishra', 'Male', 9453318798, 'brijesh@gmail.com'),
('Rajat', 'Verma', 'Male', 9936652039, 'rajat@gmail.com'),
('Nisha', 'Singh', 'Female', 9559763249, 'nisha@gmail.com'),
('Priya', 'Singh', 'Female', 7753001621, 'priya@gmail.com');
```

#### **Q3.** Now perform following operations on userinfo table:-
##### **i.** Select all records from `userinfo` table.
##### **ii.** Select `Firstname`, `Lastname`, `Emailaddress` columns from `userinfo` table.
##### **iii.** Select record with `contactno` `9453318798`.
##### **iv.** Select all records with `gender` `Male`.
##### **v.** Count records with `gender` `Female`.
##### **vi.** Update `emailaddress` with value `brijesh.225409@gmail.com` for `contactno` `9453318798`.
##### **vii.** Delete record with `contactno` `7753001621`.
##### **viii.** Truncate table `userinfo`.
##### **ix.** Drop table `userinfo`.

**Ans.** 
**i.** Select all records from `userinfo` table.
```sql
SELECT * FROM userinfo;
```
**ii.** Select `Firstname`, `Lastname`, `Emailaddress` columns from `userinfo` table.
```sql
SELECT Firstname, Lastname, Emailaddress FROM userinfo;
```
**iii.** Select record with `contactno` `9453318798`.
```sql
SELECT * FROM userinfo WHERE contactno=9453318798;
```
**iv.** Select all records with `gender` `Male`.
```sql
SELECT * FROM userinfo WHERE gender='Male';
```
**v.** Count records with `gender` `Female`.
```sql
SELECT COUNT(*) FROM userinfo WHERE gender='Female';
```
**vi.** Update `emailaddress` with value `brijesh.225409@gmail.com` for `contactno` `9453318798`.
```sql
UPDATE userinfo SET emailaddress='brijesh.225409@gmail.com' WHERE contactno=9453318798;
```
**vii.** Delete record with `contactno` `7753001621`.
```sql
DELETE FROM userinfo WHERE contactno=7753001621;
```
**viii.** Truncate table `userinfo`.
```sql
TRUNCATE TABLE userinfo;
```
**ix.** Drop table `userinfo`.
```sql
DROP TABLE userinfo;
```

#### **Q4.** Create tables with following structures:-
##### Table name:- country
| Column Name | Data Type | Constraint |
| --- | --- | --- |
| countryid | int | PRIMARY KEY, AUTO_INCREMENT |
| countryname | VARCHAR(100) | |

##### Table name:- state
| Column Name | Data Type | Constraint |
| --- | --- | --- |
| stateid | int | PRIMARY KEY, AUTO_INCREMENT |
| statename | VARCHAR(100) | |
| countryname | int | FOREIGN KEY REFERENCES to country(countryid) |

##### Table name:- city
| Column Name | Data Type | Constraint |
| --- | --- | --- |
| cityid | int | PRIMARY KEY, AUTO_INCREMENT |
| cityname | VARCHAR(100) | |
| stateid | int | FOREIGN KEY REFERENCES to state(stateid) |

**Ans.**
```sql
CREATE TABLE country
(
    countryid int AUTO_INCREMENT PRIMARY KEY,
    countryname VARCHAR(100)
);
CREATE TABLE state
(
    stateid int AUTO_INCREMENT PRIMARY KEY,
    statename VARCHAR(100),
    countryid int,
    FOREIGn KEY (countryid) REFERENCES country(countryid)
);
CREATE TABLE city
(
    cityid int AUTO_INCREMENT PRIMARY KEY,
    cityname VARCHAR(100),
    stateid int,
    FOREIGN KEY (stateid) REFERENCES state(stateid)
);
```

## Task - 5 (12 october 2023)

#### **Q.1** create database
```sql
CREATE DATABASE testdb;
```
#### create table
```sql
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
```

#### insert query
```sql
INSERT INTO bookstore VALUES
('TMBU1', '12345678', 'B.Tech.', 'CS', 'C', 'Let Us C', 'Y.P.Kanetkar'),
('TMBU2', '12345678', 'B.Tech.', 'CS', 'C', 'Let Us C', 'Y.P.Kanetkar'),
('TMBU3', '12345678', 'B.Tech.', 'CS', 'C', 'Let Us C', 'Y.P.Kanetkar'),
('TMBU4', '12345679', 'B.Tech.', 'CS', 'Java', 'Effective Java', 'Joshua Bloch'),
('TMBU5', '12345679', 'B.Tech.', 'CS', 'Java', 'Effective Java', 'Joshua Bloch'),
('TMBU6', '12345679', 'B.Tech.', 'CS', 'Java', 'Effective Java', 'Joshua Bloch'),
('TMBU7', '12345688', 'B.Tech.', 'IT', 'Database', 'RDBMS Using MySQL', 'Brijesh Mishra');
```
#### select bookid, isbnno, program, bookname, authorname from bookstore table with all rows.
```sql
SELECT bookid, isbnno, program, bookname, authorname FROM bookstore;
```
#### select all books of "CS" branch
```sql
SELECT * FROM bookstore WHERE branch='CS';
```
#### count no. of books with name "Let Us C"
```sql
SELECT COUNT(*) FROM bookstore WHERE bookname='Let Us C';
```
#### Update authorname with "Vipin C. Desai" for bookid TMBU7
```sql
UPDATE bookstore SET authorname='Vipin C. Desai' WHERE bookid='TMBU7';
```
#### delete record of book with bookid TMBU7.
```sql
DELETE FROM bookstore WHERE bookid='TMBU7';
```
#### create a table with name "issuebook" with rows (issueid int pm, bookid varchar(15) fk to bookstroe
```sql
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
```
#### insert records
```sql
INSERT INTO issuebook VALUES 
(1, 'TMBU1', 1001, 'Rajat Singh', 'Let Us C', 'Y.P.Kanetkar'),
(2, 'TMBU4', 1001, 'Rajat Singh', 'Effective Java', 'Joshua Bloch'),
(3, 'TMBU2', 1002, 'Dinesh Singh', 'Let Us C', 'Y.P.Kanetkar'),
(4, 'TMBU5', 1003, 'Nisha Kumari', 'Effective Java', 'Joshua Bloch');
```
#### select bookid, isbno, rollno, studentname, bookname, authorname from bookstore and issuebook tables using inner join operation.
```sql
SELECT bookstore.bookid, isbnno, rollno, studentname, bookstore.bookname, bookstore.authorname FROM bookstore INNER JOIN issuebook ON bookstore.bookid=issuebook.bookid;
```
#### select bookid, isbno, rollno, studentname, bookname, authorname from bookstore and issuebook tables using full outer join operation.
```sql
SELECT bookstore.bookid, isbnno, rollno, studentname, bookstore.bookname, bookstore.authorname
FROM bookstore
LEFT JOIN issuebook
ON bookstore.bookid=issuebook.bookid
UNION
SELECT bookstore.bookid, isbnno, rollno, studentname, bookstore.bookname, bookstore.authorname
FROM bookstore
RIGHT JOIN issuebook
ON bookstore.bookid=issuebook.bookid;
```
#### create a table staff with rows (staffid varchar(10) pm, staffname varchar(50), department varchar(100), salary int);
```sql
CREATE TABLE staff 
(
    staffid VARCHAR(10) PRIMARY KEY,
    staffname VARCHAR(50),
    department VARCHAR(100),
    salary int 
);
```
#### now create a view with name 'st' having fields staffid, staffname, department.
```sql
CREATE VIEW st 
AS
SELECT staffid, staffname, department FROM staff;
```
#### now insert some records in 'st' view.
```sql
INSERT INTO st VALUES
```

# Database Practice Questions

## Task - 1 (07 october 2023)

**Q1.** Write a query to create a `database` named `mydb`.

**Ans.** 
```sql
CREATE DATABASE mydb;
```

**Q2.** Write a query to create a `table` named `student` with following columns:
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

**Q3.** Write a query to insert the following `data` into the `student` table.
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

**Q4.** Write the following queries to `select` the data.
- select all records with all columns.
- select all records with `rollno`, `name`, `branch` columns.
- select all records with all columns havign `branch` `IT`.
- Select record of student having `rollno` `1003`.
- Select all records of students with `fee` greater than `12000`.
- Select record with column `rollno`, `name`, `fee` having `rollno`
`1004`.

**Ans.**
```sql
SELECT * FROM student;
```


**Q5.** Write a query to `delete` the record having rollno `1004` from `student` table.

**Ans.**
```sql
DELETE FROM student WHERE rollno = 1004;
```
## Task - 2 (09 october 2023)

**Q1.** In `mydb` database create a table `customer` with following structure:-.

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

**Q2.** Do following operations and `customer` table:-

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

**Q3.** Create a table with name `orders` with following structure:-
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

**Q1.1** Create a table person with following structure:-
| Column Name | Data Type | Constraint |
| --- | --- | --- |
| id | INT | PRIMARY KEY |
| name | VARCHAR(50) | |
| address | VARCHAR(100) |  |

**Q1.2** Create a table account with following strucutre:-
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

**Q2.1** Insert following records in person table:-
| Id | Name | Address |
| --- | --- | --- |
| 1001 | Dhirendra Singh | Lucknow |
| 1002 | Jitendra Verma | Sitapur |
| 1003 | Brijesh Mishra | Barabanki |
| 1004 | Rohit Singh | Bihar |
| 1005 | Priya Singh | Kanpur |

**Q2.2** Insert following records in account table:-
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

**Q3.**  \
**i.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `inner join` operation. \
**ii.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `left join` operation. \
**iii.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `right join` operation. \
**iv.** select name from `person` table, `bs`, `hra` and `da` from `account` table by performing `full join` operation.
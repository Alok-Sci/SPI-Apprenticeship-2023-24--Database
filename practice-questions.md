# Database Practice Questions

## 07 october 2023

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
---





## 09 october 2023

### Part - 1

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
---
### Part - 2


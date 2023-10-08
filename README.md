# Database

## Software
- is a set of instructions or programs.
- is used to operate computers and to execute specific tasks.
- executes specific tasks as per user commands.
- are designed using various types of technologies and programming langauges.
- without software, computers would be of no use.
- without software, computers would be incapable of processing information or executing commands.

### Types of software
Softwares are generally of two types:
1. System softwares
2. Application softwares

#### **1. System software**
- software that is designed to run or operate a computer's hardware.
- system software allows other softwares to interact with the hardware resources.
- provides a platform for other softwares to run.
- system software works as an interface between the computer hardware components and user applications. 
  
  ***Example:*** Operating System (e.i. MS windows, Linux, CentOS, etc.)
    
    
#### **2. Application software** 
- a software that fulfills specific user needs and tasks.
- designed to perform specific tasks as per user requirements.
- these softwares are tailored according to the users' need.
  
  ***Example:*** Notepad, VLC Media Player, MS Word, etc.
  
  ##### **Types of application softwares:**
    1. Web application
    2. Desktop application
    3. Mobile application
  
## Basic Terminologies
### **Malware**
- Malware is a type of software
- Malware stands for `Malicious Software`
- This software or program is intentionally created by a person having intent of harm the files, devices, or networks.
  #### **Types of malwares** includes `viruses`, `worms`, `ransomwares`, `spywares`, `trojan horses`, etc.
  
### **Firmware**
- is a specialied software.
- embedded in hardware devices.
- provides low-level control for specific hardware components.
- is stored in non-volatile memory within devices like printers, routers, etc.
- manufacturers can customize firmware to optimize hardware performance for specific applications.

### **Upload** 
- Process of transferring files from a local device to a server or database.

### **Download:** 
- Process of copying files from a server or a device to a local system.

### **Internet**
- the term `Internet` is the combination of `Interconnected + Network`
  - ***Interconnected***: connected with each other
  - ***Network***: refers to the connection between computer systems or electronic devices  
- it is a massive network of networks(both public and private).
- it was originally developed for *militiary purposes*.
- allows instant `communication` and `information`.
- there are many underlying complex technologies used to make the internet operable.
- miles long internet cables are one of the things that makes the internet work
- these fibre optic cables connect one or more countries or continent to form a bigger network or to connect the countries to the internet or interconnected network.

### **Web**
- sort for `World Wide Web`.
- is a vast system of interconnected documents, images, videos, and other resources.
- we are required to be connected to the internet to access web.
- web in simple terms can also be described as a web of information, that is stored in the computers, or storage devices in the distant locations on the earth.
- can be accessed using a software called web browser.
  
## Database Terminologies
### **Data:**
- is raw, unprocessed facts, numbers, or symbols. 
- `raw(kaccha)` -> something which is in its original form.
- data in itself may or may not be meaningful.
- is anything that can be digitally stored.
  
### **Information:**
- formed using raw data.
- data in organized and structured form.
- meaningful and comprehensive form of data.
- data that can be used for decision making.
- is complete in itself.

### **Database:**
- is a structured collection of data stored electronically.
- allows efficient storage, retrieval, and management of data.
- data can be thought of as a place in the servers where we store, retrieve from, and manage data.
- in simple terms; it is a collection of data.


## Database Operations

>Click 👉[here](/practice-questions.md)👈 to see `practice questions`.

>Click 👉[here](/db_queries.sql)👈 to see all `queries`.
### 1. Create a Database
***Syntax:***
```sql
CREATE DATABASE <database_name>;
```

`CREATE` command is used to create a `Database` or `Table`, whichever keyword is used after `CREATE` command.

`DATABASE` with `CREATE` command is used to create a database.

`<database_name>` is the name of the table, that you want to create

***Example:*** Write a query to create a database named `employee`.

```sql
CREATE DATABASE employee;
```

### 2. Create a Table in a specific Database


***Syntax:***

```sql
USE <database_name>,
CREATE TABLE <table_name>
(
    <col_name> <data_type>,
    <col_name> <data_type>,
);
```

`USE` command is used to choose a `Database`.

`CREATE` command is used to create a `Database` or `Table`, whichever keyword is used after `CREATE` command.

`TABLE` with `CREATE` command is used to create a Table.

`<table_name>` is the name of the table, that you want to create

`<col_name>` is the name for the column, that you want to create.

`<data_type>` is type of the data that can be store in the particular column.

***Example:*** Write a query to create a table named `empinfo` inside of database named `employee`. `empinfo` has columns named emp_id, emp_name, desg, dept, salary.

```sql
USE employee,
CREATE TABLE empinfo
(
    emp_id int,
    emp_name varchar(20),
    desg varchar(40),
    dept varchar(50),
    salary int
);
```

### 3. Create a Table
#### Creation:
Creation involves setting up the structure of a database, including tables, columns, and data types, to store information systematically.

***Syntax:***
```sql
CREATE TABLE <table_name>
(
    <col_name> <data_type>,
    <col_name> <data_type>,
);
```

`CREATE` command is used to create a `Database` or `Table`, whichever keyword is used after `CREATE` command.

`TABLE` with `CREATE` command is used to create a Table.

`<table_name>` is the name of the table, that you want to create

`<col_name>` is the name for the column, that you want to create.

`<data_type>` is type of the data that can be store in the particular column.

***Example:*** Lets create a table named `empinfo`.
```sql
CREATE TABLE empinfo
(
    emp_id int,
    emp_name varchar(20),
    desg varchar(40),
    dept varchar(50),
    salary int
);
```

### 4. Insert a record
#### Insertion:
Insertion is the process of adding new records or data into a table in a database.

***Syntax:***
```sql
INSERT INTO <table_name> VALUES (val1, val2, val_n);
```

`INSERT INTO` command is used to insert a record into the table.

`<table_name>` is the name of the table, that you want to create

`VALUES` command is used with `INSERT INTO` to insert one or more records into the table.

`val1` `val2` `val_n` are the values to be inserted.

***Example:*** Write a query to insert values into the `empinfo` table.

- insert single record:
    ```sql
    INSERT INTO empinfo VALUES (1, "Alok Singh", "IT");
    ```
- insert multiple records at once:
    ```sql
    INSERT INTO empinfo VALUES 
    (1, "Alok Singh", "IT"),
    (2, "Aishwary Dwivedi", "CS"),
    (3, "Rishabh Singh", "CS");
    ```

### 5. Delete a table
#### Deletion: 
involves removing records from a table based on specified criteria.

`DELETE` command is used to delete a table.

***Syntax:***
```sql
DROP TABLE <table_name>;
```

`DROP` command is used to delete a table or database.

`TABLE` command when used with `DROP` command is used to delete a table.

`<table_name>` is the name of the table, which you want to delete.

***Example:*** \
Write a query to insert values into the `empinfo` table.

```sql
DROP TABLE empinfo;
```

### 6. Delete records from a table
#### Deletion: 
Deletion involves removing records from a tbale based on specified criteria.

`DELETE` command is used to delete records in a table.

***Syntax:***

- To delete all the records from a table:
    ```sql
    DELETE FROM <table_name>;
    ```

- To delete specific records from a table:
    ```sql
    DELETE FROM <table_name> WHERE <column_name>=<value>;

***Example:***

- To delete all the records from a table:
    ```sql
    DELETE * FROM student;
    ```

- To delete specific records from a table:
    ```sql
    DELETE FROM student;
    ```
    
### 7. Display the data from the table
#### Display Data:
Displaying data retrieves information stored in a table for viewing.

`SELECT` command is used for data retrieval.
To display all columns from a table:

***Syntax:***
```sql
SELECT * FROM <table_name>
```

### 8. Sorting the order of data to display
#### Sorting data: 
Sorting arranges elements in a specific order(ascending or descending). 

`ORDER BY` command is used for sorting records.
Default value for `ORDER BY` is ascending order.

***Syntax:***
- for ascending order:
```sql
SELECT <col_name> FROM <table_name> ORDER BY <col_name> ASC;
```
- for descending order:
```sql
SELECT <col_name> FROM <table_name> ORDER BY <col_name> ASC;
```

***Example:***

- default order is ascending:
    ```sql
    SELECT * FROM student ORDER BY emp_name;
    ```
- for ascending order:
    ```sql
    SELECT * FROM student ORDER BY emp_name ASC;
    ```
- for descending order:
    ```sql
    SELECT * FROM student ORDER BY emp_name DESC;
    ```

### 9. Update the records
#### Updating Records: 
Updating records modifies existing data in a table based on specified conditions.

`UPDATE` command is used for record modification.

***Syntax:***
```sql
UPDATE <table_name> SET <column_name>=<value> WHERE <condition>
```

***Example:***
```sql
UPDATE student SET branch='ME' WHERE rollno=1002;
``` 

### 10. Modify the structure of table

`ALTER` command is used to modify structure of database objects like table.

`ALTER` command can be categorized into 3 types:
1. ADD
2. DELETE
3. MODIFY

***Syntax:*** 
- to add a column in a table
    ```sql
    ALTER TABLE <table_name> ADD <column_name><data_type>;
    ```
- to add a column in a specific position in a table
    ```sql
    ALTER TABLE <table_name> ADD <column_name><data_type> AFTER <column_name>;
    ```
- to add a column in the first position in a table
    ```sql
    ALTER TABLE <table_name> ADD <column_name><data_type> FIRST;
    ```
- to delete a column in a table
    ```sql
    ALTER TABLE <table_name> DROP COLUMN <column_name>;
    ```
- to modify the structure of a column in a table
    ```sql
    ALTER TABLE <table_name> MODIFY <column_name><data_type><constraint>;
    ```
- to rename the column of a table
    ```sql
    ALTER TABLE <table_name> RENAME <column_name> SET <new_column_name>;
    ```
<!-- ---  -->
<!-- 
## SQL Commands

### CREATE

### INSERT INTO

### SELECT

### UPDATE
### DELETE

## Clauses in SQL

### WHERE

### FIRST

### ORDER BY

### LIKE

### ADD 

### MODIFY

 -->


## Constraints in SQL
- `constraints` are like rules for columns.
- it defines what kind of data can be stored in a table.
- `validates` data before it's inserted into a table.
- prevents `incorrect` or `inconsistent` data from entering into the table.
- constraints ensures the `accuracy` and `consistency` of data within the database.

### 1. Primary Key:
- Primary key is a key which is defined uniquely.
- used to distinguish the `records` in a table.
- the field that is defined as `PRIMARY KEY`, can not be `NULL`

### 2. Foreign Key:
- this key links data between two or more tables.
- it maintains relationships between tables.
- it keeps related data aligned.
### 2. Unique Key:
- it enforces uniqueness in a column of a table.
- it permits null values.
- this key ensures integrity of data in a table.
- unique key prevents duplicate data insertion.
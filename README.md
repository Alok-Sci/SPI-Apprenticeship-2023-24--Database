# Database

>List of all the [project contributors👨‍💻](/contributions.md)
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
  #### **Types of malwares** includes:
    - `viruses`,
    - `worms`,
    - `ransomwares`,
    - `spywares`,
    - `trojan horses`, etc.
  
### **Firmware**
- is a specialied software.
- embedded in hardware devices.
- provides `low-level` control for specific hardware components.
- is stored in `non-volatile memory` within devices like printers, routers, etc.
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
- is a *structured collection of data* stored electronically.
- allows efficient storage, retrieval, and management of data.
- data can be thought of as a place in the servers where we store, retrieve from, and manage data.
- in simple terms; it is a collection of data.

### **DBMS:**
- stands for `Database Management System`.
- is an *application software*.
- is used to *manage* databases.
- provides *functionalities* to `create`, `access`, and `manipulate` data within databases.

### **SQL:**
- stands for `Structured Query Language`.
- also known as `Database Langauge`
- used to perform database operations and communicate with the databases.
- is a langauge used to interact with specifically relational databases.
- supports `CRUD` operations.
- used to define the structure of databases.

#### **Categories of SQL:**
Based on database operations SQL can be categorized into four parts:
##### 1. DDL (Data Definition Language)
- used to define data structures and modify data.
- `DDL commands` includes `CREATE`, `ALTER`, and `DROP`.
- allows users to define, modify, and remove database structures, including tables and constraints.
    
    | Commands | Description |
    | --- | --- |
    | CREATE | The `CREATE` command is used to create a new database object. |
    | ALTER | The `ALTER` command is used to modify database object. |
    | DROP | The `DROP` command is used to delete database object. |
    | TRUNCATE | The `TRUNCATE` command is used to delete all data from database object but structure is remaining. |
    | BACKUP | The `BACKUP` is most important command; it is used to take backup of database. |
    | RESTORE | The `RESTORE` command is used to reconstruct database from its backup. |

##### 2. DML (Data Manipulation Language)
- used to manipulate the data inside a table.
- `DML commands` includes `SELECT`, `INSERT`, `UPDATE`, and `DELETE`.
- enable users to interact with data within databases.

    | Commands | Description |
    | --- | --- |
    | INSERT | The `INSERT` command is used to insert record into a database object. |
    | DELETE | The `DELETE` command is used to delete the data from database object. |
    | UPDATE | The `UPDATE` command is used to modify data of database object. |
    | SELECT | The `SELECT` command is used to select data from database object. |
    
##### 3. DCL (Data Control Language)
- used to manage database controls.
- `DCL commands` includes `GRANT` and `REVOKE`. 
- manage `user permissions` and `access rights`, controlling who can perform specific actions within the database.

    | Commands | Description |
    | --- | --- |
    | GRANT | The `GRANT` command is used to give rights to database user |
    | REVOKE | The `REVOKE` is just opposite to grant command. It is used to take off rights from database user. |
    | RENAME | The `RENAME` command is used to change the name of database object. |
    
##### 4. TCL (Transaction Control Language)
- used to manage transactions in the database.
- used to manage the changes.
- `TCL commands` includes `COMMIT` and `ROLLBACK`
- manages transactions, ensuring that multiple database operations occur atomically and consistently.

    | Commands | Description |
    | --- | --- |
    | COMMIT | The `COMMIT` command is used to save the transaction. |
    | ROLLBACK | The `ROLLBACK` command is used to undo the transaction. |

### **DBA:**
- stands for `Database Administrator`.
- is a person or group of person who is/are responsible for creation of whole database.
- ensures database security, efficiency, and reliability.



## Database Operations

>Click 👉[here](/practice-questions.md)👈 to see `practice questions`.

>Click 👉[here](/db_queries.sql)👈 to see all `queries`.

### 1. Create a Database
***Syntax:***
```sql
CREATE DATABASE <database_name>;
```

- `CREATE` command: is used to create a `Database` or `Table`, whichever keyword is used after `CREATE` command.

- `DATABASE` with `CREATE` command is used to create a database.

- `<database_name>`: is the name of the table, that you want to create

***Example:*** \
Write a query to create a database named `employee`.

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
    <col_name> <data_type>
);
```
***Breakdown:***
- `USE`: command is used to choose a `Database`.

- `CREATE`: command is used to create a `Database` or `Table`, whichever keyword is used after `CREATE` command.

- `TABLE` with `CREATE` command is used to create a Table.

- `<table_name>`: is the name of the table, that you want to create

- `<col_name>`: is the name for the column, that you want to create.

- `<data_type>`: is type of the data that can be store in the particular column.

***Example:*** \
Write a query to create a table named `empinfo` inside of database named `employee`. `empinfo` has columns named emp_id, emp_name, desg, dept, salary.

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

***Breakdown:***
- `CREATE` command: is used to create a `Database` or `Table`, whichever keyword is used after `CREATE` command.

- `TABLE` with `CREATE` command is used to create a Table.

- `<table_name>`: is the name of the table, that you want to create

- `<col_name>`: is the name for the column, that you want to create.

- `<data_type>`: is type of the data that can be store in the particular column.

***Example:*** \
Lets create a table named `empinfo`.
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

***Breakdown:***
- `INSERT INTO` command: is used to insert a record into the table.

-`<table_name>`: is the name of the table, that you want to create

- `VALUES`: command is used with `INSERT INTO` to insert one or more records into the table.

- `val1` `val2` `val_n`: are the values to be inserted.

***Example:*** \
Write a query to insert values into the `empinfo` table.

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

`DROP` command is used to delete database objects.

***Syntax:***
```sql
DROP TABLE <table_name>;
```

***Breakdown:***
- `DROP` command: is used to delete a table or database.

- `TABLE` command: when used with `DROP` command is used to delete a table.

- `<table_name>`: is the name of the table, which you want to delete.

***Example:*** \
Write a query to insert values into the `empinfo` table.

```sql
DROP TABLE empinfo;
```

### 6. Delete one or more records from a table
#### Deletion: 
Deletion involves removing records from a tbale based on specified criteria.

`DELETE` command is used to delete records in a table.

***Syntax:***

- to delete all the records from a table:
    ```sql
    DELETE FROM <table_name>;
    ```

- to delete specific records from a table:
    ```sql
    DELETE FROM <table_name> WHERE <column_name>=<value>;
    ```
    
**Breakdown:**
- `DELETE FROM` command: is used to remove/delete records from the table.
- `<table_name>`: is the name of the table from which the records need to be deleted.
- `WHERE` clause: is used to apply a condition to delete records from table.
- `<column_name>`: name of column.
- `<value>`: value in a field.   

***Example:*** \
Write a query:

- to delete all the records from a table:
    ```sql
    DELETE FROM student;
    ```
- to delete specific records from a table:
    ```sql
    DELETE FROM student WHERE name='alok singh';
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

***Breakdown:***
- `SELECT`: Keyword indicating data retrieval operation.
- `*`: Wildcard symbol selecting all columns in the specified table.
- `FROM <table_name>`: Specifies the table from which to retrieve data.

***Example:*** \
Write a query to display all the records from table `empinfo`.
```sql
SELECT * FROM empinfo;
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
SELECT <col_name> FROM <table_name> ORDER BY <col_name> DESC;
```

***Breakdown:***

- `SELECT <col_name>`: Specifies the columns to retrieve from the table.
- `FROM <table_name>`: Indicates the table from which to retrieve data.
- `ORDER BY <col_name> ASC;`: Orders the result set based on the specified column (<col_name>) in ascending order (ASC).
- `ORDER BY <col_name> DESC;`: Orders the result set based on the specified column (<col_name>) in descending order (DESC).

***Example:*** \
Write a query to display the records in sorted orders
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

***Breakdown:***
- `UPDATE`: is used to modify existing records in a table.
- `<table_name>`: Name of the table where records will be updated.
- `SET <column_name>=<value>`: Specifies the column to be updated and the new value to be set.
- `WHERE <condition>`: Optional clause to specify conditions. If omitted, all records in the table will be updated.

***Example:*** \
Write a query to update modify the value in branch field that has rollno `1002`.
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
    ALTER TABLE <table_name> RENAME <column_name> TO <new_column_name>;
    ```
***Breakdown:***
- `ALTER TABLE`: Keyword indicating modification of an existing table.
- `<table_name>`: Name of the table to be altered.
- `ADD <column_name> <data_type> <constraint>`: Adds a new column with the specified name, data type, and constraint.
- `AFTER <existing_column>`: Specifies the position of the new column after an existing column.
- `FIRST`: Adds the new column as the first column in the table.
- `DROP COLUMN <column_name>`: Deletes the specified column from the table.
- `MODIFY <column_name> <data_type> <constraint>`: Alters the data type or constraint of an existing column.
- `RENAME <old_column_name> TO <new_column_name>`: Renames an existing column.

***Example:*** \
Write a query to modify the column structure:
- to add a column in a table
    ```sql
    ALTER TABLE student ADD name INT PRIMARY KEY;
    ```
- to add a column in a specific position in a table
    ```sql
    ALTER TABLE student ADD name INT AFTER branch;
    ```
- to add a column in the first position in a table
    ```sql
    ALTER TABLE student ADD name INT FIRST;
    ```
- to delete a column in a table
    ```sql
    ALTER TABLE student DROP COLUMN name;
    ```
- to modify the structure of a column in a table
    ```sql
    ALTER TABLE student MODIFY name INT PRIMARY KEY;
    ```
- to rename the column of a table
    ```sql
    ALTER TABLE student RENAME name TO student_name;
    ```

### 11. Empty the table(Remove all records from the table)
`TRUNCATE` command is used to remove all the records from a table.

***Syntax:***
```sql
TRUNCATE TABLE <table_name>;
```

***Breakdown:***
`TRUNCATE TABLE`:  is a SQL statement used to quickly delete all records from a table.

***Example:*** \
Write a query to `delete` all the `records` from the table
```sql
TRUNCATE TABLE student;
```


--- 
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

### 1. PRIMARY KEY Constraint:
- is a key constraint.
- is like a unique ID for each record.
- used to distinguish the `records` in a table.
- is simple, unique, and essential for every table.

**Syntax:**
```sql
<column_name> <data_type> PRIMARY KEY;
```

**Breakdown:**
- `column_name`: Name of the column designated as the primary key.
- `data_type`: Data type specifying the kind of data the column can hold.
- `PRIMARY KEY`: Constraint indicating the column as the primary key.

**Example:**
```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50)
);
```

>**Note:**
>- No two records can have the same primary key value.

### 2. FOREIGN KEY Constraint:
- it is a `key constraint`.
- this key links data between two or more tables.
- it maintains relationships between tables.
- it keeps related data aligned.
- is a key used to establish relation b/w tables(2 or more).
- is a `field` in a table which is a `primary key` in its original table.

**Syntax:**
```sql
FOREIGN KEY (<column_name>) REFERENCES <referenced_table>(<referenced_column>)
```
**Breakdown:**

- `column_name`: Name of the column in the current table.
- `INT`: Data type of the column, typically matching the referenced column's data type.
- `FOREIGN KEY`: Constraint indicating a reference to another table.
- `(column_name)`: Column to which the foreign key is applied.
- `REFERENCES referenced_table(referenced_column)`: Specifies the table and column being referenced.

**Example:**
```sql
CREATE TABLE orders 
(
    pid int PRIMARY KEY,
    pname varchar(50),
    cust_id int,
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);
```

>Note:
>- a column must be a `primary key` to become a `foreign key` of other tables.
>- if a column is not `primary key` in its original table, then it can not become a `foreign key`.
>- a table can have multiple `foreign keys`.

### 3. UNIQUE KEY Constraint:
- it enforces uniqueness in a column of a table.
- it permits null values.
- this key ensures integrity of data in a table.
- unique key prevents duplicate data insertion.


### 4. AUTO_INCREMENT Constraint:
- is used to generate a unique numeric value automatically for a column.
- is commonly used for primary key columns to guarantee each record has a unique identifier.
- Automates unique value assignment, ensuring data integrity(originality).
- prevents null and duplicate entries.
  
**Syntax:**
```sql
<column_name> INT AUTO_INCREMENT PRIMARY KEY;
```
**Breakdown:**
- `column_name`: Name of the column for automatic value generation.
- `INT`: Data type of the column (usually integer).
- `AUTO_INCREMENT`: Constraint indicating automatic value assignment.
- `PRIMARY KEY`: Optional, specifies the column as the primary key.

**Example:**
```sql
CREATE TABLE person (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50)
);
```
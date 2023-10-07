# Database

## Software
- is a set of instructions or programs.
- is used to operate computers and execute specific tasks.
- are designed using different types of technologies.

### Types of software
1. System software
2. Application software

**1. System software**
- software that is designed to run or operate a computer's hardware.
- provides a platform for other apps to run.
- system software works as an interface between the systems' hardware and the apps. 
  
  ***Example:*** Operating System (e.i. MS windows, Linux, CentOS, etc.)
    
    
**2. Application software** 
- a software that fulfills the need or performs specific tasks.
  
  ***Example:*** Notepad, VLC Media Player, MS Word, etc.
  
  **Types of application software:**
    1. Web application
    2. Desktop application
    3. Mobile application
  
### Some basic terminologies
**Malware**
- Malware is a type of software
- Malware stands for Malicious Software
- This software or program is intentionally created by a person having intent of harm the files or the device.
  
**Firmware**


**Web**

**Internet**
- Term `Internet` is the combination of `Inter + Network`
- In 1990 many bigger private networks combined together to form a bigger network.
- It is simply the network of networks
-   

**Data:**

- raw(kaccha) -> something which is in its original form
- Data in itself may or may not be meaningful.
  
**Information:**
- meaningful data
- formed using raw data
- data in structured format

**Upload:** 
- Process of putting the files in the server or database

**Download:** 
- Process of copying files from a server or a device to 

## Class day-2 
**Database:**

### Database Operations
#### 1. Create a Database
***Syntax:***

    CREATE DATABASE <database_name>;

>`CREATE` command is used to create a `Database` or `Table`, whichever keyword is used after `CREATE` command.

>`DATABASE` with `CREATE` command is used to create a database.

>`<database_name>` is the name of the table, that you want to create

***Example:*** Write a query to create a database named `employee`.

    CREATE DATABASE employee;


#### 2. Create a Table in a specific Database


***Syntax:***

    USE <database_name>,
    CREATE TABLE <table_name>(
        <col_name> <data_type>,
        <col_name> <data_type>,
    );

>`USE` command is used to choose a `Database`.

>`CREATE` command is used to create a `Database` or `Table`, whichever keyword is used after `CREATE` command.

>`TABLE` with `CREATE` command is used to create a Table.

>`<table_name>` is the name of the table, that you want to create

>`<col_name>` is the name for the column, that you want to create.

>`<data_type>` is type of the data that can be store in the particular column.

***Example:*** Write a query to create a table named `empinfo` inside of database named `employee`. `empinfo` has columns named emp_id, emp_name, desg, dept, salary.

    USE employee,
    CREATE TABLE empinfo(
        emp_id int,
        emp_name varchar(20),
        desg varchar(40),
        dept varchar(50),
        salary int
    );



#### 3. Create a Table

***Syntax:***

    CREATE TABLE <table_name>(
        <col_name> <data_type>,
        <col_name> <data_type>,
    );

>`CREATE` command is used to create a `Database` or `Table`, whichever keyword is used after `CREATE` command.

>`TABLE` with `CREATE` command is used to create a Table.

>`<table_name>` is the name of the table, that you want to create

>`<col_name>` is the name for the column, that you want to create.

>`<data_type>` is type of the data that can be store in the particular column.

***Example:*** Lets create a table named `empinfo`.

    CREATE TABLE empinfo(
        emp_id int,
        emp_name varchar(20),
        desg varchar(40),
        dept varchar(50),
        salary int
    );

#### 4. Insert a record

***Syntax:***

    INSERT INTO <table_name> VALUES (val1, val2, val_n);


>`INSERT INTO` command is used to insert a record into the table.

>`<table_name>` is the name of the table, that you want to create

>`VALUES` command is used with `INSERT INTO` to insert one or more records into the table.

>`val1` `val2` `val_n` are the values to be inserted.

***Example:*** Write a query to insert values into the `empinfo` table.

    INSERT INTO empinfo VALUES (1, "Alok Singh", "IT");

#### 5. Delete a table

***Syntax:***

    DROP TABLE <table_name>;


>`DROP` command is used to delete a table or database.

>`TABLE` command when used with `DROP` command is used to delete a table.

>`<table_name>` is the name of the table, which you want to delete.

***Example:*** Write a query to insert values into the `empinfo` table.

    DROP TABLE empinfo;


#### 7. Delete records from a table
`DELETE` command is used to delete records in a table.

***Syntax:***

To delete all the records:

    DELETE * FROM <table_name>;

To delete a specific records:
    
    DELETE FROM <table_name>;



    
#### 6. Display the data of a table

    SELECT * FROM <table_name>

--- 

### Clause




---
### Constraints
Constraints are the rules which are put on column fields to make it more reliable and accurate.

**1. Primary Key:**
- Primary key is a key which is defined uniquely.
- used to distinguish the `records`.
- the field that is defined as `PRIMARY KEY`, can not be `NULL`


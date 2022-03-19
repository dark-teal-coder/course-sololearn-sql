# SQL

This course covers an array of SQL-related topics, such as retrieving, updating and filtering data; functions and subqueries; creating & updating tables; & many more! 



## Basic Concepts 

### 1.1 Lesson: Introduction to Databases 

#### Welcome to SQL

A **database** is a collection of data that is organized in a manner that facilitates ease of access, as well as efficient management and updating.

A database is made up of tables that store relevant information.

For example, you would use a database, if you were to create a website like YouTube, which contains a lot of information like videos, usernames, passwords, comments.

![Welcome to SQL](https://user-images.githubusercontent.com/95575665/158609766-75a74d42-04ed-4776-82ca-11c521dca276.png)

> :warning: In this course we will learn how to create and query databases using SQL! 

#### Database Tables

A **table** stores and displays data in a structured format consisting of columns and rows that are similar to those seen in Excel spreadsheets.

Databases often contain multiple tables, each designed for a specific purpose. For example, imagine creating a database table of names and telephone numbers.

First, we would set up columns with the titles *FirstName*, *LastName* and *TelephoneNumber*.

Each table includes its own set of fields, based on the data it will store.

![Database Tables](https://user-images.githubusercontent.com/95575665/159118091-2fffc40d-b727-4a14-bdd4-b9f6be994b9a.png)

> ⚠️ A table has a specified number of columns but can have any number of rows.

#### Primary Keys

A primary key is a field in the table that uniquely identifies the table records.

The primary key's main features:
- It must contain a **unique value** for each row.
- It cannot contain **NULL** values.

For example, our table contains a record for each name in a phone book. The unique **ID** number would be a good choice for a primary key in the table, as there is always the chance for more than one person to have the same name.

![Primary Keys](https://user-images.githubusercontent.com/95575665/159118288-c044be04-074d-4c5f-b2d1-89a09515a587.png)

> ⚠️ <br /> - Tables are limited to ONE primary key each. <br /> - The primary key's value must be different for each row.

#### What is SQL?

Once you understand what a database is, understanding SQL is easy. **SQL** stands for **S**tructured **Q**uery **L**anguage.

**SQL** is used to access and manipulate a **database**.
**MySQL** is a **program** that understands **SQL**.

SQL can:
- insert, update, or delete records in a database.
- create new databases, tables, stored procedures and views.
- retrieve data from a database, etc.

> ⚠️ SQL is an ANSI (American National Standards Institute) standard, but there are different versions of the SQL language. <br /> Most SQL database programs have their own proprietary extensions in addition to the SQL standard, but all of them support the major commands.

### 2.1 Lesson: SQL Statements: SELECT

#### Basic SQL Commands

The SQL ```SHOW``` statement displays information contained in the database and its tables. This helpful tool lets you keep track of your database contents and remind yourself about the structure of your tables.
For example, the ```SHOW DATABASES``` command lists the databases managed by the server.

```sql
SHOW DATABASES
```

Throughout the tutorial we will be using the MySQL engine and the PHPMyAdmin tool to run SQL queries.

> ⚠️ The easiest way to get MySQL and PHPMyAdmin is to install free tools like XAMPP or WAMP, which include all necessary installers.

#### Basic SQL Commands

The ```SHOW TABLES``` command is used to display all of the tables in the currently selected MySQL database.

![Basic SQL Commands](https://user-images.githubusercontent.com/95575665/159118511-2c027c60-55d6-4e77-b619-0638ffa989db.png)

For our example, we have created a database, my_database, with a table called customers.

#### Basic SQL Commands

```SHOW COLUMNS``` displays information about the columns in a given table.

The following example displays the columns in our customers table:

```sql
SHOW COLUMNS FROM customers
```

Result:

![Basic SQL Commands 2](https://user-images.githubusercontent.com/95575665/159118594-0cbd76ea-de70-4ae1-b592-5e469e682eb7.png)

SHOW COLUMNS displays the following values for each table column:

**Field**: column name
**Type**: column data type
**Key**: indicates whether the column is indexed
**Default**: default value assigned to the column
**Extra**: may contain any additional information that is available about a given column

> :warning: The columns for the customers table have also been created using the PHPMyAdmin tool.

#### SELECT Statement

The ```SELECT``` statement is used to select data from a database.
The result is stored in a result table, which is called the **result-set**.

A **query** may retrieve information from selected columns or from all columns in the table.
To create a simple SELECT statement, specify the name(s) of the column(s) you need from the table.

**Syntax of the SQL SELECT Statement**:

```sql
SELECT column_list
FROM table_name
```

- **column_list** includes one or more columns from which data is retrieved
- **table-name** is the name of the table from which the information is retrieved

**Below is the data from our customers table:**

![SELECT Statement](https://user-images.githubusercontent.com/95575665/159118714-6193482d-d575-4593-9d1d-c5127ddf8846.png)

The following SQL statement selects the FirstName from the customers table:

```sql
SELECT FirstName FROM customers
```

Result: 

![SELECT Statement 2](https://user-images.githubusercontent.com/95575665/159118779-d251729a-e0d8-4850-aa2d-50df632f398a.png)

> :warning: A SELECT statement retrieves zero or more rows from one or more database tables.

### 3.1 Lesson: SQL Syntax Rules

#### Multiple Queries

SQL allows to run multiple queries or commands at the same time.

The following SQL statement selects the FirstName and City columns from the customers table:

```sql
SELECT FirstName FROM customers;
SELECT City FROM customers;
```

Result:

![Multiple Queries](https://user-images.githubusercontent.com/95575665/159118855-d1749cf7-7362-4c66-afd4-5aad1395ce89.png)

![Multiple Queries 2](https://user-images.githubusercontent.com/95575665/159118860-5379778b-7504-49be-adb3-0a8f20a735b4.png)

> :warning: Remember to end each SQL statement with a semicolon to indicate that the statement is complete and ready to be interpreted. <br /> In this tutorial, we will use semicolon at the end of each SQL statement.

#### Case Sensitivity

SQL is case **insensitive**.
The following statements are equivalent and will produce the same result:

```sql 
select City from customers;
SELECT City FROM customers;
sElEct City From customers;
```

> :warning: It is common practice to write all SQL commands in **upper-case**.

#### Syntax Rules

A single SQL statement can be placed on one or more text lines. In addition, multiple SQL statements can be combined on a single text line.

White spaces and multiple lines are ignored in SQL.

For example, the following query is absolutely correct.

```sql
SELECT        City

FROM customers;
```

However, it is recommended to avoid unnecessary white spaces and lines.

> :warning: Combined with proper spacing and indenting, breaking up the commands into logical lines will make your SQL statements much easier to read and maintain.

### 4.1 Lesson: Selecting Multiple Columns

#### Selecting Multiple Columns

#### Selecting All Columns

### 5.1 Lesson: DISTINCT and LIMIT

#### The DISTINCT Keyword

#### The LIMIT Keyword

### 6.1 Lesson: Sorting Results

#### Fully Qualified Names

#### Order By

#### Sorting Multiple Columns

### 7.1 Lesson: Module 1 Quiz

Question 01: A database consists of:
- Tables
- Rows
- Columns

Question 02: Drag and drop from the options below to list the table names.
```
_____ TABLES;
```
- ```SHOW```
- ```LIMIT```
- ```VIEW```
- ```SELECT```

Question 03: Why use primary keys?
- It's an SQL standard
- To guarantee the uniqueness of a row
- Just for fun

Question 04: Drag and drop from the options below to select distinct names from the ''students'' table, ordered by name.
```
SELECT _____ name 
_____ students
_____ name;
```
- ```BY```
- ```LIMIT```
- ```FROM```
- ```DISTINCT```
- ```IN```
- ```ORDER BY```

### 8 Code Project: Cakes

A local bakery creates unique cake sets. Each cake set contains three different cakes.
Here is the cakes table:

![Cakes](https://user-images.githubusercontent.com/95575665/158824685-330ff471-5424-4bc5-bca0-ed6431399ddb.jpg)

Тoday a customer want a cake set that has minimal calories.
Write a query to sort the cakes by calorie count and select the first 3 cakes from the list to offer the customer.

> :warning: Try to combine ORDER BY and LIMIT keywords.



## Filtering, Functions, Subqueries

### 9.1 Lesson: The WHERE Statement

### 9.4 Lesson: Salary Range 

### 10.1 Lesson: Filtering with AND, OR

### 11.1 Lesson: IN, NOT IN Statements

### 12.1 Lesson: Custom Columns

### 13.1 Lesson: Functions

### 14.1 Lesson: Subqueries

### 15.1 Lesson: LIKE and MIN

### 16.1 Lesson: Module 2 Quiz

### 17 Code Project: Apartments 



## JOIN, Table Operations

### 18.1 Lesson: Joining Tables

### 19.1 Lesson: Types of Join

### 20.1 Lesson: UNION

### 21.1 Lesson: The INSERT Statement

### 22.1 Lesson: UPDATE and DELETE Statements

### 23.1 Lesson: Creating a Table

### 24.1 Lesson: NOT NULL and AUTO_INCREMENT

### 25.1 Lesson: Alter, Drop, Rename a Table

### 26.1 Lesson: Views

### 27.1 Lesson: Module 3 Quiz

### 28 Code Project: Zoo



## Challenges

### 29.1 Lesson: Challenge 1

### 30.1 Lesson: Challenge 2

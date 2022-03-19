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

#### Basic SQL Commands

#### Basic SQL Commands

#### SELECT Statement

### 3.1 Lesson: SQL Syntax Rules

#### Multiple Queries

#### Case Sensitivity

#### Syntax Rules

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

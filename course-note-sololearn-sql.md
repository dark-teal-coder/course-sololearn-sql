# SQL

This course covers an array of SQL-related topics, such as retrieving, updating and filtering data; functions and subqueries; creating & updating tables; & many more! 

<br />



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

<br />



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

<br />



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

<br />



### 4.1 Lesson: Selecting Multiple Columns

#### Selecting Multiple Columns

As previously mentioned, the SQL SELECT statement retrieves records from tables in your SQL database.

You can select multiple table columns at once.

Just list the column names, separated by **commas**

```sql
SELECT FirstName, LastName, City 
FROM customers;
```

Result:

![Selecting Multiple Columns](https://user-images.githubusercontent.com/95575665/159119176-9e8b6b65-5f00-44af-a3a1-52b5c77ffb98.png)

> :warning: Do not put a comma after the last column name.

#### Selecting All Columns

To retrieve all of the information contained in your table, place an **asterisk (\*)** sign after the SELECT command, rather than typing in each column names separately.

The following SQL statement selects all of the columns in the customers table:

```sql 
SELECT * FROM customers; 
```

Result:

![Selecting All Columns](https://user-images.githubusercontent.com/95575665/159119280-1eda5930-fd4d-489c-8f0b-6ff56ac61e12.png)

> :warning: In SQL, the asterisk means all.



### 4.2 Practice: Best Before 

#### Selecting Multiple Columns

When buying food, it is important to make sure it is fresh and not expired.

You are given the following 'Products' list:

![Best Before Selecting Multiple Columns](https://user-images.githubusercontent.com/95575665/159119537-fab9ac3d-c4d1-4840-a8de-6ac6b1498bfe.jpg)

Write a query to select the ProductName, ProductionDate and ExpirationDate.

> :warning: Use the SELECT statement and separate the required columns by commas.

#### Solution 
```sql
SELECT ProductName, ProductionDate, ExpirationDate 
FROM Products;
```

<br />



### 5.1 Lesson: DISTINCT and LIMIT

#### The DISTINCT Keyword

In situations in which you have multiple duplicate records in a table, it might make more sense to return only unique records, instead of fetching the duplicates.

The SQL ```DISTINCT``` keyword is used in conjunction with SELECT to eliminate all duplicate records and return only unique ones.

```The basic syntax of DISTINCT is as follows:```

```sql
SELECT DISTINCT column_name1, column_name2
FROM table_name;
```

See the customers table below:

![The DISTINCT Keyword](https://user-images.githubusercontent.com/95575665/159119628-45057d8d-29a8-4c36-b1fc-3e442c8440b8.png)

Note that there are duplicate City names. The following SQL statement selects only distinct values from the City column:

```sql
SELECT DISTINCT City FROM customers; 
```

This would produce the following result. Duplicate entries have been removed.

![The DISTINCT Keyword 2](https://user-images.githubusercontent.com/95575665/159119653-5ad626a8-abc6-49b8-818e-260592606ea2.png)

> ⚠️ The DISTINCT keyword only fetches the unique values.

#### The LIMIT Keyword

By default, all results that satisfy the conditions specified in the SQL statement are returned. However, sometimes we need to retrieve just a subset of records. In MySQL, this is accomplished by using the LIMIT keyword.

The syntax for LIMIT is as follows:

```sql
SELECT column list
FROM table_name
LIMIT [number of records];
```

For example, we can retrieve the first five records from the customers table.

```sql
SELECT ID, FirstName, LastName, City
FROM customers LIMIT 5;
```

This would produce the following result:

![The LIMIT Keyword](https://user-images.githubusercontent.com/95575665/159119695-d11a2607-27b2-42be-98c7-91fde6bb2267.png)

> :warning: By default, all results that satisfy the conditions specified in the SQL statement are returned.

#### The LIMIT Keyword

You can also pick up a set of records from a particular offset.

In the following example, we pick up four records, starting from the third position:

```sql
SELECT ID, FirstName, LastName, City
FROM customers OFFSET 3 LIMIT 4;
```

This would produce the following result:

![The LIMIT Keyword 2](https://user-images.githubusercontent.com/95575665/159119758-b1593190-9350-44a0-b149-13b6e3d8fd28.png)

> ⚠️ The reason that it produces results starting from ID number four, and not three, is that MySQL starts counting from zero, meaning that the offset of the first row is 0, not 1.



### 5.2 Practice: Customer Copies

#### The DISTINCT Keyword

At the conclusion of a bank transaction, 6 checks are printed -- 3 originals for the bank, and 3 copies for the customer.

Here is the list of all the checks named Operation

![5 2](https://user-images.githubusercontent.com/95575665/159119901-c15df489-8d7f-4587-863e-218393619e19.jpg#gh-dark-mode-only)

Write a query to show only the unique checks that are given to the customer.

> :warning: Use the DISTINCT statement to return the unique values of mentioned column.

#### Solution

```sql
/* table name: Operation */
SELECT DISTINCT checks 
FROM Operation; 
```



### 5.3 Practice: The Lucky Four

#### The LIMIT Keyword

8 people are registered for an online course, but only the first 4 of them are able to participate.

Here is the Participants table:

![5 3](https://user-images.githubusercontent.com/95575665/159120092-408b4e28-00c7-4d86-a64d-1dde197d22aa.jpg)

Select the first four participants from the given list.

> :warning: The LIMIT keyword can help you.

#### Solution 

```sql
SELECT firstname, lastname
FROM Participants LIMIT 4
```

<br />



### 6.1 Lesson: Sorting Results

#### Fully Qualified Names

In SQL, you can provide the table name prior to the column name, by separating them with a **dot**.

The following statements are equivalent:

```sql
SELECT City FROM customers;
SELECT customers.City FROM customers;
```

The term for the above-mentioned syntax is called the "fully qualified name" of that column.

> :warning: This form of writing is especially useful when working with multiple tables that may share the same column names.

#### Order By

```ORDER BY``` is used with ```SELECT``` to **sort** the returned data.

The following example sorts our customers table by the FirstName column.

```
SELECT * FROM customers
ORDER BY FirstName;
```

Result:

![Order By](https://user-images.githubusercontent.com/95575665/159120210-8ec818f9-e6d8-4660-bae2-5a0b6bb25d87.png)

As you can see, the rows are ordered alphabetically by the FirstName column.

> :warning: By default, the ORDER BY keyword sorts the results in ascending order.

#### Sorting Multiple Columns

ORDER BY can sort retrieved data by multiple columns. When using ORDER BY with more than one column, separate the list of columns to follow ORDER BY with commas.

Here is the customers table, showing the following records:

![Sorting Multiple Columns](https://user-images.githubusercontent.com/95575665/159120241-6779910a-bf40-41bb-9d4b-90e3f2f3a865.png)

To order by LastName and Age:

```sql
SELECT * FROM customers 
ORDER BY LastName, Age;
```

This ORDER BY statement returns the following result:

![Order By 2](https://user-images.githubusercontent.com/95575665/159120284-52489a1d-f0e7-465b-a418-781161b5cb26.png)

As we have two Smiths, they will be ordered by the Age column in ascending order.

> :warning: The ORDER BY command starts ordering in the same sequence as the columns. It will order by the first column listed, then by the second, and so on.



### 6.2 Practice: Leaderboarding

#### Sorting Results

Six players have competed in a chess tournament and their scores have been tallied.

Here is the table of Players:

![6 2](https://user-images.githubusercontent.com/95575665/159120409-cd38fbb9-6f3c-4e52-8bda-d3ae22e13590.jpg)

Sort the players by losses to derive the leaderboard.

> :warning: Recall the ORDER BY keyword.

#### Solution

```sql
SELECT * 
FROM Players 
ORDER BY losses
```
Or: 
```sql
SELECT firstname, lastname, losses
FROM Players 
ORDER BY losses
```

<br />



### 7.1 Lesson: Module 1 Quiz

Question 01: A database consists of:
- [ ] Tables
- [ ] Rows
- [ ] Columns

Question 02: Drag and drop from the options below to list the table names.
```
_____ TABLES;
```
- [ ] ```SHOW```
- [ ] ```LIMIT```
- [ ] ```VIEW```
- [ ] ```SELECT```

Question 03: Why use primary keys?
- [ ] It's an SQL standard
- [ ] To guarantee the uniqueness of a row
- [ ] Just for fun

Question 04: Drag and drop from the options below to select distinct names from the ''students'' table, ordered by name.
```
SELECT _____ name 
_____ students
_____ name;
```
- [ ] ```BY```
- [ ] ```LIMIT```
- [ ] ```FROM```
- [ ] ```DISTINCT```
- [ ] ```IN```
- [ ] ```ORDER BY```

<br />



### 8 Code Project: Cakes

#### Cakes

A local bakery creates unique cake sets. Each cake set contains three different cakes.

Here is the cakes table:

![Cakes](https://user-images.githubusercontent.com/95575665/158824685-330ff471-5424-4bc5-bca0-ed6431399ddb.jpg)

Тoday a customer want a cake set that has minimal calories.

Write a query to sort the cakes by calorie count and select the first 3 cakes from the list to offer the customer.

> :warning: Try to combine ORDER BY and LIMIT keywords.

#### Solution

```sql
SELECT * FROM cakes ORDER BY calories LIMIT 3
```

<br />



## Filtering, Functions, Subqueries



### 9.1 Lesson: The WHERE Statement

#### The WHERE Statement

The WHERE clause is used to extract only those records that fulfill a specified criterion.

The syntax for the WHERE clause:
```sql
SELECT column_list 
FROM table_name
WHERE condition;
```

Consider the following table:

![The WHERE Statement](https://user-images.githubusercontent.com/95575665/160995996-e94a18bd-53d3-4b62-951f-ead57a718507.png)

Result: 

![The WHERE Statement 2](https://user-images.githubusercontent.com/95575665/160996542-00d5ba66-ed6e-4442-b156-9d1f57314eaa.png)

> :warning: The WHERE clause is used to extract only those records that fulfill a specified criterion.

#### SQL Operators

Comparison Operators and Logical Operators are used in the WHERE clause to filter the data to be selected.

The following comparison operators can be used in the WHERE clause:

![SQL Operators](https://user-images.githubusercontent.com/95575665/160996745-fc687068-5799-460c-8f29-c01fafd51727.png)

For example, we can display all customers names listed in our table, with the exception of the one with ID 5.

```
SELECT * FROM customers
WHERE ID != 5;
```

Result:

![SQL Operators 2](https://user-images.githubusercontent.com/95575665/160996972-03d2aeac-3481-4489-8d06-882bc145d6c5.png)

> :warning: As you can see, the record with ID=5 is excluded from the list.

#### The BETWEEN Operator

The BETWEEN operator selects values within a range. The first value must be lower bound and the second value, the upper bound.

The syntax for the BETWEEN clause is as follows:

```
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

The following SQL statement selects all records with IDs that fall between 3 and 7:

```sql
SELECT * FROM customers 
WHERE ID BETWEEN 3 AND 7;
```

Result:

![The BETWEEN Operator](https://user-images.githubusercontent.com/95575665/160997266-7ab522fe-d5ff-425e-84fb-94d860bcca1c.png)

> :warning: As you can see, the lower bound and upper bound are both included in the range.

#### Text Values

When working with text columns, surround any text that appears in the statement with single quotation marks (').

The following SQL statement selects all records in which the City is equal to 'New York'.

```sql
SELECT ID, FirstName, LastName, City 
FROM customers
WHERE City = 'New York';
```

![Text Values](https://user-images.githubusercontent.com/95575665/161008686-2a879e1c-dba6-4cc3-8af0-7813b08ae64d.png)

> :warning: If your text contains an apostrophe (single quote), you should use two single quote characters to escape the apostrophe. For example: 'Can''t'.



### 9.2 Practice: Salary Range 

<br />



### 10.1 Lesson: Filtering with AND, OR

#### Logical Operators

Logical operators can be used to combine two Boolean values and return a result of true, false, or null.

The following operators can be used:

![10-1-a](https://user-images.githubusercontent.com/95575665/168480190-a8fde876-a12a-486d-954a-a81a34e54359.png)

When retrieving data using a SELECT statement, use logical operators in the WHERE clause to combine multiple conditions.

If you want to select rows that satisfy all of the given conditions, use the logical operator, AND.

![10-1-b](https://user-images.githubusercontent.com/95575665/168480198-3ea6c2b0-657f-4bb6-9b11-39ed11d00cda.png)

To find the names of the customers between 30 to 40 years of age, set up the query as seen here:

```sql
SELECT ID, FirstName, LastName, Age
FROM customers
WHERE Age >= 30 AND Age <= 40;
```

This results in the following output:

![10-1-c](https://user-images.githubusercontent.com/95575665/168480745-52128345-e3ad-4610-8573-8279dcc82494.png)

> :warning: You can combine as many conditions as needed to return the desired results.

#### OR

#### Combining AND & OR



### 10.2 Practice: Superheros

<br />



### 11.1 Lesson: IN, NOT IN Statements

#### The IN Operator

#### The IN Operator

#### The NOT IN Operator



### 11.2 Practice: Get The Ball Rolling!

<br />



### 12.1 Lesson: Custom Columns

#### The CONCAT Function

#### The AS Keyword

#### Arithmetic Operators



### 12.2 Practice: Annual Bonuses

<br />



### 13.1 Lesson: Functions

#### The UPPER Function

#### SQRT and AVG

#### The SUM function



### 13.2 Practice: Average Grades 

<br />



### 14.1 Lesson: Subqueries

#### Subqueries

#### Subqueries



### 14.2 Practice: Let's Get Fit! 

<br />



### 15.1 Lesson: LIKE and MIN

#### The Like Operator

#### The MIN Function



### 15.2 Practice: Chocolate!

<br />



### 16.1 Lesson: Module 2 Quiz

<br />



### 17 Code Project: Apartments 

#### Apartments

<br />



## JOIN, Table Operations



### 18.1 Lesson: Joining Tables

#### Joining Tables

#### Joining Tables

#### Joining Tables



### 18.2 Practice: Mentor And Apprentice

<br />



### 19.1 Lesson: Types of Join

#### Custom Names

#### Types of Join

#### LEFT JOIN

#### RIGHT JOIN



### 19.2 Practice: Sorting The Inventory

<br />



### 20.1 Lesson: UNION

#### Set Operation

#### UNION

#### UNION ALL



### 20.2 Practice: Chess Tournament 

<br />



### 21.1 Lesson: The INSERT Statement

#### Inserting Data

#### Inserting Data

#### Inserting Data



### 21.2 Practice: More Cars! 

<br />



### 22.1 Lesson: UPDATE and DELETE Statements

#### Updating Data

#### Updating Data

#### Updating Multiple Columns

#### Deleting Data

### 22.2 Practice: Match The Requirements 

<br />



### 23.1 Lesson: Creating a Table

#### SQL Tables

#### Creating a Table

#### Creating a Table

#### Data Types

#### Primary Key

#### Creating a Table



### 23.2 Practice: Video Game Scores 

<br />



### 24.1 Lesson: NOT NULL and AUTO_INCREMENT

#### SQL Constraints

#### AUTO INCREMENT

#### Using Constraints

<br />



### 25.1 Lesson: Alter, Drop, Rename a Table

#### ALTER TABLE

#### Dropping

#### Renaming



### 25.2 Practice: The Most Beautiful Locations

<br />



### 26.1 Lesson: Views

#### Views

#### Creating Views

#### Updating a View



### 26.2 Practice: Social Media App Views 

<br />



### 27.1 Lesson: Module 3 Quiz

<br />



### 28 Code Project: Zoo

#### Zoo 

<br />



## Challenges



### 29.1 Lesson: Challenge 1

<br />



### 30.1 Lesson: Challenge 2

<br />


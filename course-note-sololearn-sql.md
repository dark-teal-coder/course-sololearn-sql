# SQL

This course covers an array of SQL-related topics, such as retrieving, updating and filtering data; functions and subqueries; creating & updating tables; & many more! 

<br />



## Basic Concepts 



### 1.1 Lesson: Introduction to Databases 

#### Welcome to SQL

A **database** is a collection of data that is organized in a manner that facilitates ease of access, as well as efficient management and updating.

A database is made up of tables that store relevant information.

For example, you would use a database, if you were to create a website like YouTube, which contains a lot of information like videos, usernames, passwords, comments.

<p align="center">
  <img src="./images/1060-01-01-p01-a.png" alt="./images/1060-01-01-p01-a.png" width="50%" height="50%">
</p>

> :warning: In this course we will learn how to create and query databases using SQL! 

#### Database Tables

A **table** stores and displays data in a structured format consisting of columns and rows that are similar to those seen in Excel spreadsheets.

Databases often contain multiple tables, each designed for a specific purpose. For example, imagine creating a database table of names and telephone numbers.

First, we would set up columns with the titles *FirstName*, *LastName* and *TelephoneNumber*.

Each table includes its own set of fields, based on the data it will store.

<p align="center">
  <img src="./images/1060-01-01-p02-a.png" alt="./images/1060-01-01-p02-a.png" width="50%" height="50%">
</p>

> ⚠️ A table has a specified number of columns but can have any number of rows.

#### Primary Keys

A primary key is a field in the table that uniquely identifies the table records.

The primary key's main features:
- It must contain a **unique value** for each row.
- It cannot contain **NULL** values.

For example, our table contains a record for each name in a phone book. The unique **ID** number would be a good choice for a primary key in the table, as there is always the chance for more than one person to have the same name.

<p align="center">
  <img src="./images/1060-01-01-p03-a.png" alt="./images/1060-01-01-p03-a.png" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159118511-2c027c60-55d6-4e77-b619-0638ffa989db.png" alt="Basic SQL Commands" width="50%" height="50%">
</p>


For our example, we have created a database, my_database, with a table called customers.

#### Basic SQL Commands

```SHOW COLUMNS``` displays information about the columns in a given table.

The following example displays the columns in our customers table:

```sql
SHOW COLUMNS FROM customers
```

Result:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159118594-0cbd76ea-de70-4ae1-b592-5e469e682eb7.png" alt="Basic SQL Commands 2" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159118714-6193482d-d575-4593-9d1d-c5127ddf8846.png" alt="SELECT Statement" width="50%" height="50%">
</p>


The following SQL statement selects the FirstName from the customers table:

```sql
SELECT FirstName FROM customers
```

Result: 

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159118779-d251729a-e0d8-4850-aa2d-50df632f398a.png" alt="SELECT Statement 2" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159118855-d1749cf7-7362-4c66-afd4-5aad1395ce89.png" alt="Multiple Queries" width="50%" height="50%">
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159118860-5379778b-7504-49be-adb3-0a8f20a735b4.png" alt="Multiple Queries 2" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159119176-9e8b6b65-5f00-44af-a3a1-52b5c77ffb98.png" alt="Selecting Multiple Columns" width="50%" height="50%">
</p>

> :warning: Do not put a comma after the last column name.

#### Selecting All Columns

To retrieve all of the information contained in your table, place an **asterisk (\*)** sign after the SELECT command, rather than typing in each column names separately.

The following SQL statement selects all of the columns in the customers table:

```sql 
SELECT * FROM customers; 
```

Result:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159119280-1eda5930-fd4d-489c-8f0b-6ff56ac61e12.png" alt="Selecting All Columns" width="50%" height="50%">
</p>

> :warning: In SQL, the asterisk means all.



### 4.2 Practice: Best Before 

#### Selecting Multiple Columns

When buying food, it is important to make sure it is fresh and not expired.

You are given the following 'Products' list:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159119537-fab9ac3d-c4d1-4840-a8de-6ac6b1498bfe.jpg" alt="Best Before Selecting Multiple Columns" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159119628-45057d8d-29a8-4c36-b1fc-3e442c8440b8.png" alt="The DISTINCT Keyword" width="50%" height="50%">
</p>

Note that there are duplicate City names. The following SQL statement selects only distinct values from the City column:

```sql
SELECT DISTINCT City FROM customers; 
```

This would produce the following result. Duplicate entries have been removed.

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159119653-5ad626a8-abc6-49b8-818e-260592606ea2.png" alt="The DISTINCT Keyword 2" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159119695-d11a2607-27b2-42be-98c7-91fde6bb2267.png" alt="The LIMIT Keyword" width="50%" height="50%">
</p>

> :warning: By default, all results that satisfy the conditions specified in the SQL statement are returned.

#### The LIMIT Keyword

You can also pick up a set of records from a particular offset.

In the following example, we pick up four records, starting from the third position:

```sql
SELECT ID, FirstName, LastName, City
FROM customers OFFSET 3 LIMIT 4;
```

This would produce the following result:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159119758-b1593190-9350-44a0-b149-13b6e3d8fd28.png" alt="The LIMIT Keyword 2" width="50%" height="50%">
</p>

> ⚠️ The reason that it produces results starting from ID number four, and not three, is that MySQL starts counting from zero, meaning that the offset of the first row is 0, not 1.



### 5.2 Practice: Customer Copies

#### The DISTINCT Keyword

At the conclusion of a bank transaction, 6 checks are printed -- 3 originals for the bank, and 3 copies for the customer.

Here is the list of all the checks named Operation

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159119901-c15df489-8d7f-4587-863e-218393619e19.jpg#gh-dark-mode-only" alt="5 2" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159120092-408b4e28-00c7-4d86-a64d-1dde197d22aa.jpg" alt="5 2" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159120210-8ec818f9-e6d8-4660-bae2-5a0b6bb25d87.png" alt="Order By" width="50%" height="50%">
</p>

As you can see, the rows are ordered alphabetically by the FirstName column.

> :warning: By default, the ORDER BY keyword sorts the results in ascending order.

#### Sorting Multiple Columns

ORDER BY can sort retrieved data by multiple columns. When using ORDER BY with more than one column, separate the list of columns to follow ORDER BY with commas.

Here is the customers table, showing the following records:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159120241-6779910a-bf40-41bb-9d4b-90e3f2f3a865.png" alt="Sorting Multiple Columns" width="50%" height="50%">
</p>

To order by LastName and Age:

```sql
SELECT * FROM customers 
ORDER BY LastName, Age;
```

This ORDER BY statement returns the following result:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159120284-52489a1d-f0e7-465b-a418-781161b5cb26.png" alt="Order By 2" width="50%" height="50%">
</p>

As we have two Smiths, they will be ordered by the Age column in ascending order.

> :warning: The ORDER BY command starts ordering in the same sequence as the columns. It will order by the first column listed, then by the second, and so on.



### 6.2 Practice: Leaderboarding

#### Sorting Results

Six players have competed in a chess tournament and their scores have been tallied.

Here is the table of Players:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/159120409-cd38fbb9-6f3c-4e52-8bda-d3ae22e13590.jpg" alt="6 2" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/158824685-330ff471-5424-4bc5-bca0-ed6431399ddb.jpg" alt="Cakes" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/160995996-e94a18bd-53d3-4b62-951f-ead57a718507.png" alt="The WHERE Statement" width="50%" height="50%">
</p>

Result: 

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/160996542-00d5ba66-ed6e-4442-b156-9d1f57314eaa.png" alt="The WHERE Statement 2" width="50%" height="50%">
</p>

> :warning: The WHERE clause is used to extract only those records that fulfill a specified criterion.

#### SQL Operators

Comparison Operators and Logical Operators are used in the WHERE clause to filter the data to be selected.

The following comparison operators can be used in the WHERE clause:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/160996745-fc687068-5799-460c-8f29-c01fafd51727.png" alt="SQL Operators" width="50%" height="50%">
</p>

For example, we can display all customers names listed in our table, with the exception of the one with ID 5.

```
SELECT * FROM customers
WHERE ID != 5;
```

Result:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/160996972-03d2aeac-3481-4489-8d06-882bc145d6c5.png" alt="SQL Operators 2" width="50%" height="50%">
</p>

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

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/160997266-7ab522fe-d5ff-425e-84fb-94d860bcca1c.png" alt="The BETWEEN Operator" width="50%" height="50%">
</p>

> :warning: As you can see, the lower bound and upper bound are both included in the range.

#### Text Values

When working with text columns, surround any text that appears in the statement with single quotation marks (').

The following SQL statement selects all records in which the City is equal to 'New York'.

```sql
SELECT ID, FirstName, LastName, City 
FROM customers
WHERE City = 'New York';
```

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/161008686-2a879e1c-dba6-4cc3-8af0-7813b08ae64d.png" alt="Text Values" width="50%" height="50%">
</p>

> :warning: If your text contains an apostrophe (single quote), you should use two single quote characters to escape the apostrophe. For example: 'Can''t'.



### 9.2 Practice: Salary Range 

<br />



### 10.1 Lesson: Filtering with AND, OR

#### Logical Operators

Logical operators can be used to combine two Boolean values and return a result of true, false, or null.

The following operators can be used:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/168480190-a8fde876-a12a-486d-954a-a81a34e54359.png" alt="10-1-a" width="50%" height="50%">
</p>

When retrieving data using a SELECT statement, use logical operators in the WHERE clause to combine multiple conditions.

If you want to select rows that satisfy all of the given conditions, use the logical operator, AND.

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/168480198-3ea6c2b0-657f-4bb6-9b11-39ed11d00cda.png" alt="10-1-b" width="50%" height="50%">
</p>

To find the names of the customers between 30 to 40 years of age, set up the query as seen here:

```sql
SELECT ID, FirstName, LastName, Age
FROM customers
WHERE Age >= 30 AND Age <= 40;
```

This results in the following output:

<p align="center">
  <img src="https://user-images.githubusercontent.com/95575665/168480745-52128345-e3ad-4610-8573-8279dcc82494.png" alt="10-1-c" width="50%" height="50%">
</p>

> :warning: You can combine as many conditions as needed to return the desired results.

#### OR

If you want to select rows that satisfy at least one of the given conditions, you can use the logical OR operator.

The following table describes how the logical OR operator functions:

<p align="center">
  <img src="./images/1060-10-01-p02-a.png" alt="1060-10-01-p02-a.png" width="50%" height="50%">
</p>

For example, if you want to find the customers who live either in New York or Chicago, the query would look like this:

```sql
SELECT * FROM customers 
WHERE City = 'New York' OR City = 'Chicago';
```

Result:

<p align="center">
  <img src="./images/1060-10-01-p02-b.png" alt="1060-10-01-p02-b.png" width="50%" height="50%">
</p>

> :warning: You can OR two or more conditions.

#### Combining AND & OR

The SQL AND and OR conditions may be combined to test multiple conditions in a query.

These two operators are called conjunctive operators.

When combining these conditions, it is important to use parentheses, so that the order to evaluate each condition is known.

Consider the following table:

<p align="center">
  <img src="./images/1060-10-01-p03-a.png" alt="1060-10-01-p03-a.png" width="50%" height="50%">
</p>

The statement below selects all customers from the city "New York" AND with the age equal to "30" OR “35":

```sql
SELECT * FROM customers
WHERE City = 'New York'
AND (Age=30 OR Age=35);
```

Result:

<p align="center">
  <img src="./images/1060-10-01-p03-b.png" alt="1060-10-01-p03-b.png" width="50%" height="50%">
</p>

> :warning: You can nest as many conditions as you need.



### 10.2 Practice: Superheros

<br />



### 11.1 Lesson: IN, NOT IN Statements

#### The IN Operator

The IN operator is used when you want to compare a column with more than one value.

For example, you might need to select all customers from New York, Los Angeles, and Chicago.

With the OR condition, your SQL would look like this:

```sql
SELECT * FROM customers 
WHERE City = 'New York'
OR City = 'Los Angeles'
OR City = 'Chicago';
```

Result:

<p align="center">
  <img src="./images/1060-11-01-p01-a.png" alt="1060-11-01-p01-a.png" width="50%" height="50%">
</p>

: warning: The IN operator is used when you want to compare a column with more than one value.

#### The IN Operator

You can achieve the same result with a single IN condition, instead of the multiple OR conditions:

```sql
SELECT * FROM customers 
WHERE City IN ('New York', 'Los Angeles', 'Chicago');
```

This would also produce the same result:

<p align="center">
  <img src="./images/1060-11-01-p02-a.png" alt="1060-11-01-p02-a.png" width="50%" height="50%">
</p>

: warning: Note the use of parentheses in the syntax.

#### The NOT IN Operator

The NOT IN operator allows you to exclude a list of specific values from the result set.

If we add the NOT keyword before IN in our previous query, customers living in those cities will be excluded:

```sql
SELECT * FROM customers 
WHERE City NOT IN ('New York', 'Los Angeles', 'Chicago');
```

Result:

<p align="center">
  <img src="./images/1060-11-01-p03-a.png" alt="1060-11-01-p03-a.png" width="50%" height="50%">
</p>

: warning: The NOT IN operator allows you to exclude a list of specific values from the result set.

### 11.2 Practice: Get The Ball Rolling!

<br />



### 12.1 Lesson: Custom Columns

#### The CONCAT Function

The CONCAT function is used to concatenate two or more text values and returns the concatenating string.

Let's concatenate the FirstName with the City, separating them with a comma:

```sql
SELECT CONCAT(FirstName, ', ' , City) FROM customers;
```

The output result is:

<p align="center">
  <img src="./images/1060-12-01-p01-a.png" alt="1060-12-01-p01-a.png" width="50%" height="50%">
</p>

: warning: The CONCAT() function takes two or more parameters.

#### The AS Keyword

A concatenation results in a new column. The default column name will be the CONCAT function.

You can assign a custom name to the resulting column using the AS keyword:

```sql
SELECT CONCAT(FirstName,', ', City) AS new_column 
FROM customers;
```

And when you run the query, the column name appears to be changed.

<p align="center">
  <img src="./images/1060-12-01-p02-a.png" alt="1060-12-01-p02-a.png" width="50%" height="50%">
</p>

: warning: A concatenation results in a new column.

#### Arithmetic Operators

Arithmetic operators perform arithmetical operations on numeric operands. The Arithmetic operators include addition (+), subtraction (-), multiplication (*) and division (/).

The following employees table shows employee names and salaries:

<p align="center">
  <img src="./images/1060-12-01-p03-a.png" alt="1060-12-01-p03-a.png" width="50%" height="50%">
</p>

The example below adds 500 to each employee's salary and selects the result:

```sql 
SELECT ID, FirstName, LastName, Salary+500 AS Salary
FROM employees;
```

Result:

<p align="center">
  <img src="./images/1060-12-01-p03-b.png" alt="1060-12-01-p03-b.png" width="50%" height="50%">
</p>

: warning: Parentheses can be used to force an operation to take priority over any other operators. They are also used to improve code readability.



### 12.2 Practice: Annual Bonuses

<br />



### 13.1 Lesson: Functions

#### The UPPER Function

The UPPER function converts all letters in the specified string to uppercase.

The LOWER function converts the string to lowercase.

The following SQL query selects all LastNames as uppercase:

```sql
SELECT FirstName, UPPER(LastName) AS LastName 
FROM employees;
```

Result:

<p align="center">
  <img src="./images/1060-13-01-p01-a.png" alt="1060-13-01-p01-a.png" width="50%" height="50%">
</p>

: warning: If there are characters in the string that are not letters, this function will have no effect on them.

#### SQRT and AVG

The SQRT function returns the square root of given value in the argument.

Let's calculate the square root of each Salary:

```sql
SELECT Salary, SQRT(Salary) 
FROM employees;
```

Result:

<p align="center">
  <img src="./images/1060-13-01-p02-a.png" alt="1060-13-01-p02-a.png" width="50%" height="50%">
</p>

Similarly, the AVG function returns the average value of a numeric column:

```sql
SELECT AVG(Salary) FROM employees;
```

Result:

<p align="center">
  <img src="./images/1060-13-01-p02-b.png" alt="1060-13-01-p02-b.png" width="50%" height="50%">
</p>

: warning: Another way to do the SQRT is to use POWER with the 1/2 exponent. However, SQRT seems to work faster than POWER in this case.

#### The SUM function

The SUM function is used to calculate the sum for a column's values.

For example, to get the sum of all of the salaries in the employees table, our SQL query would look like this:

```sql
SELECT SUM(Salary) FROM employees;
```

Result:

<p align="center">
  <img src="./images/1060-13-01-p03-a.png" alt="1060-13-01-p03-a.png" width="50%" height="50%">
</p>

: warning: The sum of all of the employees' salaries is 31000.



### 13.2 Practice: Average Grades 

<br />



### 14.1 Lesson: Subqueries

#### Subqueries

A subquery is a query within another query.

Let's consider an example. We might need the list of all employees whose salaries are greater than the average.

First, calculate the average:

```sql
SELECT AVG(Salary) FROM employees;
```

As we already know the average, we can use a simple WHERE to list the salaries that are greater than that number.

```sql
SELECT FirstName, Salary FROM employees 
WHERE  Salary > 3100
ORDER BY Salary DESC;
```

Result:

<p align="center">
  <img src="./images/1060-14-01-p01-a.png" alt="1060-14-01-p01-a.png" width="50%" height="50%">
</p>

: warning: The DESC keyword sorts results in descending order. Similarly, ASC sorts the results in ascending order.

#### Subqueries

A single subquery will return the same result more easily.

```sql
SELECT FirstName, Salary FROM employees 
WHERE  Salary > (SELECT AVG(Salary) FROM employees) 
ORDER BY Salary DESC;
```

The same result will be produced.

<p align="center">
  <img src="./images/1060-14-01-p02-a.png" alt="1060-14-01-p02-a.png" width="50%" height="50%">
</p>

: warning: Enclose the subquery in parentheses. Also, note that there is no semicolon at the end of the subquery, as it is part of our single query.



### 14.2 Practice: Let's Get Fit! 

<br />



### 15.1 Lesson: LIKE and MIN

#### The Like Operator

The LIKE keyword is useful when specifying a search condition within your WHERE clause.

```
SELECT column_name(s)
FROM table_name
WHERE column_name LIKE pattern;
```

SQL pattern matching enables you to use `_` to match any single character and "%" to match an arbitrary number of characters (including zero characters).

For example, to select employees whose FirstNames begin with the letter A, you would use the following query:

```sql
SELECT * FROM employees 
WHERE FirstName LIKE 'A%';
```

Result:

<p align="center">
  <img src="./images/1060-15-01-p01-a.png" alt="1060-15-01-p01-a.png" width="50%" height="50%">
</p>

As another example, the following SQL query selects all employees with a LastName ending with the letter "s":

```sql
SELECT * FROM employees 
WHERE LastName LIKE '%s';
```

Result:

<p align="center">
  <img src="./images/1060-15-01-p01-b.png" alt="1060-15-01-p01-b.png" width="50%" height="50%">
</p>

: warning: The % wildcard can be used multiple times within the same pattern.

#### The MIN Function

The MIN function is used to return the minimum value of an expression in a SELECT statement.

For example, you might wish to know the minimum salary among the employees.

```sql
SELECT MIN(Salary) AS Salary FROM employees;
```

Result: 

<p align="center">
  <img src="./images/1060-15-01-p02-a.png" alt="1060-15-01-p02-a.png" width="50%" height="50%">
</p>

> :warning: All of the SQL functions can be combined together to create a single expression.



### 15.2 Practice: Chocolate!

<br />



### 16.1 Lesson: Module 2 Quiz

Question 01: Fill in the blanks to select all values from the "students" table in which the field "university" equals "MIT". 
```sql
SELECT * FROM _____
WHERE _____ = 'MIT';
```

Question 02: Rearrange the code to select students from MIT and Stanford, and order the results by the "university" column.
- [ ] ```FROM students WHERE university```
- [ ] ```SELECT name, university```
- [ ] ```ORDER BY university;```
- [ ] ```IN('Stanford', 'MIT')```

Question 03: Which keyword is the correct one for custom columns?
- [ ] ```SIMILAR```
- [ ] ```LIKE```
- [ ] ```AS```

Question 04: What is the name of the aggregate function for calculating the sum?
- [ ] ```AGGR```
- [ ] ```SUM```
- [ ] ```SQRT```
- [ ] ```AVG```

Question 05: Drag and drop from the options below to select name and age from ''students'', where age is greater than the average of all ages. Use a subquery to calculate the average value of age.
```sql
_____ name, age 
FROM students 
_____ age > 
(SELECT _____(age) 
FROM students)
```
- [ ] ```SELECT```
- [ ] ```ORDER BY```
- [ ] ```WHERE```
- [ ] ```VALUE```
- [ ] ```AVG```

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

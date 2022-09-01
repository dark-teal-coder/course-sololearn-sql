CREATE VIEW List AS
SELECT Acc_ID, Status
FROM  Users;

SELECT * FROM List;

/* 
EXPLANATION:

Use the following syntax to create a view, or virtual table: 

CREATE VIEW ViewName AS
SELECT ColumnName, ColumnName
FROM TableName;

Remember to display the table using the SELECT statement. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

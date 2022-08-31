DELETE FROM Products 
WHERE ExpireDate=0;

SELECT * FROM Products;

/* 
EXPLANATION:

Use the following syntax to delete some values in a table: 

DELETE FROM TableName 
WHERE ColumnName=Value;

The condition should be when the expiry date is 0. 

Remember to display the table using the SELECT statement.

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

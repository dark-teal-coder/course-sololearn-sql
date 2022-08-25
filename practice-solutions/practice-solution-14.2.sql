SELECT *
FROM Foods 
WHERE FatPercentage < (SELECT AVG(FatPercentage) FROM Foods)

/* 
EXPLANATION:

The syntax for finding the average of values in a column is (SELECT AVG(ColumnName) FROM TableName. We can use it in a condition as a subquery. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

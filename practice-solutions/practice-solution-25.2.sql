ALTER TABLE Cities ADD AttractivePlace varchar(100);

UPDATE Cities
SET AttractivePlace='Belem Tower'
WHERE Name='Lisbon';

UPDATE Cities
SET AttractivePlace='Plaza Mayor'
WHERE Name='Madrid';

UPDATE Cities
SET AttractivePlace='Eiffel Tower'
WHERE Name='Paris';

SELECT * from Cities;

/* 
EXPLANATION:

From the instruction, we need to use ALTER TABLE, UPDATE and SELECT statements. 

Use the following syntax to create a new column in a table: 

ALTER TABLE TableName ADD ColumnName DataType;

Use the following syntax to add values to a column row by row: 

UPDATE TableName
SET ColumnName=Value
WHERE Condition;

We add an attractive place to the row where we find a particular city name. 

Remember to display the table using the SELECT statement. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

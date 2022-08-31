CREATE TABLE LeaderBoard
(
   Place int,
   NickName varchar(100),
   Rating int
); 

INSERT INTO LeaderBoard (Place, NickName, Rating)
VALUES
    (1, 'Predator', 9500), 
    (2, 'JohnWar', 9300), 
    (3, 'NightWarrior', 8900);

SELECT * FROM LeaderBoard

/* 
EXPLANATION:

From the instruction, we know we will need CREATE, INSERT and SELECT statements. 

Use the following syntax to create a table with column names: 

CREATE TABLE TableName
(
   ColumnName DataType,
   ColumnName DataType,
   ColumnName DataType,
); 

Remember to display the table using the SELECT statement. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

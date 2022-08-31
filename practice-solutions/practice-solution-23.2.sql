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

Use the following syntax to delete some values in a table: 

DELETE FROM TableName 
WHERE ColumnName=Value;

The condition should be when the expiry date is 0. 

Remember to display the table using the SELECT statement.

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

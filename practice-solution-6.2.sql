SELECT *
FROM Players 
ORDER BY Losses

-- Alternative:
SELECT Firstname, Lastname, Losses
FROM Players 
ORDER BY Losses

/* 
EXPLANATION: 

The expected output requires all columns. We can use * or list out all the column nammes. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all uppercase or lowercase, or mixed case as long as there is no special character in between. 
*/

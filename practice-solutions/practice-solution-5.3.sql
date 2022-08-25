SELECT *
FROM Participants LIMIT 4

-- Alternative:
SELECT FirstName, LastName
FROM Participants LIMIT 4

/* 
EXPLANATION: 

The expected output shows both first and last names. There are only those 2 columns in the table. So we can use * in this case. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

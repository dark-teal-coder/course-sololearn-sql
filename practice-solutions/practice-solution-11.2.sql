SELECT TeamName, Country 
FROM Teams 
WHERE Country IN ('Spain', 'England', 'Germany')

/* 
EXPLANATION:

The expected output does not require all columns. We need to list out the column names one by one. We can use the IN operator to check if the country is one of the three required. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

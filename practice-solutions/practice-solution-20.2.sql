SELECT Player, Country, BirthYear, Rating FROM NorwayChess
UNION 
SELECT Player, Country, BirthYear, Rating FROM TataSteel
ORDER BY Rating DESC;

/* 
EXPLANATION:

The hint says that we need a table "without duplicates" so we use UNION instead of UNION ALL. Then, we use one SELECT statement, as if we want to select some columns from a table, to be an argument of UNION, one on each side. Remember to order "Rating" in descending order using DESC keyword. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

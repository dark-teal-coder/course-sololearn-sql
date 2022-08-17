SELECT name from films 
WHERE production = 'Marvel Studios' 
    AND year >= 2010 
ORDER BY name 

/* 
EXPLANATION:

The expected output does not require all columns. We need to list out the column names one by one. We can use BETWEEN and AND operators to get a range of salaries. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

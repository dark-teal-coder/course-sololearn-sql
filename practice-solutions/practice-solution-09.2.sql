SELECT Firstname 
FROM Staff 
WHERE Salary BETWEEN 1500 AND 1900 

/* 
EXPLANATION:

The expected output does not require all columns. We need to list out the column names one by one. We can use BETWEEN and AND operators to get a range of salaries. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

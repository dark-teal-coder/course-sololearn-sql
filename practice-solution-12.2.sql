SELECT CONCAT(Firstname, ' ', Lastname) AS Fullname, Salary*12 + Experience*500 AS Total
FROM Staff
ORDER BY Total

/* 
EXPLANATION:

The expected output requires two customed and renamed columns. The first column requires CONCAT() function to concatenate Firstname and Lastname columns. The second column requires some arithmetic operations. We need to use AS operator to rename columns. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

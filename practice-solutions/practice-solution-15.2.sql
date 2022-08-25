SELECT Name, Price
FROM Desserts
WHERE Name LIKE '%Chocolate%'

/* 
EXPLANATION:

Investing the Name column, we will see that "Chocolate" occurs at the beginning and in the middle of the strings. Therefore, we need to specify the pattern as LIKE '%Chocolate%'.

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

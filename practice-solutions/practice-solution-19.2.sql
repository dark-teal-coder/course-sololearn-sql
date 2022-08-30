SELECT Products.ProductName, Products.Price, Categories.CategoryName
FROM Products INNER JOIN Categories 
ON Products.CategoryID=Categories.ID;

/* 
EXPLANATION:

xxx

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

SELECT Products.ProductName, Products.Price, Categories.CategoryName
FROM Products INNER JOIN Categories 
ON Products.CategoryID=Categories.ID;

/* 
EXPLANATION:

In the SELECT statement, we need to specify table names as there are 2 tables in one statement. There is no need to leave some cells blank so we use INNER JOIN. For every product, there is a category ID. Use it as a condition to join in the ON statement. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

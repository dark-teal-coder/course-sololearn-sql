INSERT INTO Garage (ID, Make, Model, ProdYear)  
VALUES 
    (6, 'Mercedes-Benz', 'G 63', 2020),
    (7, 'Porsche', 'Panamera', 2020);

SELECT * FROM Garage; 

/* 
EXPLANATION:

Use the following syntax to insert data into a table: 

INSERT INTO table_name (column1, column2, column3, ...,columnN)  
VALUES (value1, value2, value3,...valueN);

To add more data rows, use brackets to indicate a row of data and seperate rows with comma. 

Remember to show the table using the SELECT statement.

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

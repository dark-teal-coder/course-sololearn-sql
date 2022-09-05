SELECT Students.ID, Students.FirstName, Students.LastName, Teachers.LastName AS Teacher
FROM Students, Teachers
WHERE Students.TeacherID=Teachers.ID
ORDER BY Students.ID

/* 
EXPLANATION:

It is easier to start from FROM and WHERE statements. We start by looking at which column(s) contain(s) the same data for us to link them. Both "students" and "teachers" tables share teachers' ID. We can link the two tables using this in WHERE. After that, we can select the columns one by one. Remember to use dot notation to denote table name of each column like this TableName.ColumnName.

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

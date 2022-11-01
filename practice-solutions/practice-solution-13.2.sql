SELECT AVG(Score) FROM Sam_Grades
WHERE Semester = 1

/* 
EXPLANATION:

The expected output should be the average of Sam's exam scores, which is not already in the table. We need to use AVG() function to calculate the means of scores in semester 1. Here, we use WHERE to specify the condition where semester is 1. 

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

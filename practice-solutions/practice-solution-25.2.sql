ALTER TABLE Cities ADD AttractivePlace varchar(100);

UPDATE Cities
SET AttractivePlace='Belem Tower'
WHERE name='Lisbon';

UPDATE Cities
SET AttractivePlace='Plaza Mayor'
WHERE name='Madrid';

UPDATE Cities
SET AttractivePlace='Eiffel Tower'
WHERE name='Paris';

SELECT * from Cities;

/* 
EXPLANATION:

xxx

SQL is case-insensitive by default so we can write table and column names in PascalCase, all UPPERCASE or lowercase, or mixed case as long as there is no special character in between. 
*/

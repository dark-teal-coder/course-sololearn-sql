INSERT INTO Animals
VALUES ('Slim', 'Giraffe', 1); 

SELECT Animals.Name, Animals.Type, Countries.Country
FROM Animals INNER JOIN Countries
ON Animals.Country_ID=Countries.ID
ORDER BY Country 

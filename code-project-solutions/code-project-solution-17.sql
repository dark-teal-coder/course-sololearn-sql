SELECT * FROM Apartments 
WHERE Price > (SELECT AVG(Price) FROM Apartments)
    AND Status='Not rented'
ORDER BY Price
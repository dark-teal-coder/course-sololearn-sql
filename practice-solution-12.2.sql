SELECT CONCAT(Firstname, ' ', Lastname) AS Fullname, Salary*12 + Experience*500 AS Total
FROM Staff
ORDER BY Total

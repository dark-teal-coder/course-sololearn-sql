SELECT *
FROM Foods 
WHERE FatPercentage < (SELECT AVG(FatPercentage) FROM Foods)

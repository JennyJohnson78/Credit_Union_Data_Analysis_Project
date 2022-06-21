-- Grants received in first quarter of 2022 by MSUFCU
SELECT *
FROM Grants
WHERE CU_Name = 'Michigan State University';
-- Total amount of grant money received in first quarter by MSUFCU
SELECT SUM(Amount)
FROM Grants
WHERE CU_Name = 'Michigan State University';
-- Top Five Grant Recipients
SELECT DISTINCT TOP 5 Amount, CU_NAME
FROM Grants
ORDER BY Amount DESC;
-- Average amount of money awarded for Program Grants
SELECT AVG(Amount)
FROM Grants
WHERE GrantType = 'Program Grant';
-- Amount not collected
SELECT SUM(Amount)
FROM Grants 
WHERE GrantType = 'Not Collected';
-- Top 5 CUs who received the most grants
SELECT TOP 5 CU_NAME, SUM(Amount) AS 'GrantAmount'
FROM Grants
GROUP BY CU_NAME
ORDER BY COUNT(*) DESC;
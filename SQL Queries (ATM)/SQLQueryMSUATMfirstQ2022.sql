-- MSUFCU ATM Count for 2022 first quarter
SELECT COUNT(SiteFunctionName)
FROM ATMByYear
WHERE CU_NAME = 'Michigan State University';
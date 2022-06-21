-- Names of Credit Unions organized between 1970-1979
SELECT CU_NAME, YEAR_OPENED
FROM FOICU
WHERE YEAR_OPENED BETWEEN 1970 AND 1979;
-- Count of Credit Unions organized between 1970-1979
SELECT COUNT(CU_NAME)
FROM FOICU
WHERE YEAR_OPENED BETWEEN 1970 AND 1979;
-- Credit Unions in Michigan organized in 1970's
SELECT COUNT(CU_NAME)
FROM FOICU
WHERE STATE = 'MI'
AND YEAR_OPENED BETWEEN 1970 AND 1979;
-- Joining relevant columns from FOICU table and ATMLocations table
SELECT f.CYCLE_DATE, f.CU_NAME, f.STATE, f.YEAR_OPENED, f.REGION, a.SiteFunctionName
INTO ATMByYear
FROM FOICU AS f
INNER JOIN 
ATMLocations AS a
ON f.CU_NAME = a.CU_NAME;
-- MI CUs ATMs by Decade
SELECT COUNT(SiteFunctionName), CU_NAME
FROM ATMByYear
WHERE STATE = 'MI'
AND YEAR_OPENED BETWEEN 1970 AND 1979;
-- MSUFCU ATM Count for 2022 first quarter
SELECT COUNT(SiteFunctionName)
FROM ATMByYear
WHERE CU_NAME = 'Michigan State University';
-- All ATMs in Michigan
SELECT *
FROM ATMLocations
WHERE PhysicalAddressStateCode = 'MI';
-- MSU ATMs by City and County
SELECT CU_NAME, PhysicalAddressCity, PhysicalAddressCountyName
FROM ATMLocations
WHERE CU_NAME = 'Michigan State University';
-- MSU ATMs by City and County
SELECT CU_NAME, PhysicalAddressCity, PhysicalAddressCountyName
FROM ATMLocations
WHERE CU_NAME = 'Michigan State University' AND PhysicalAddressCity = '[City Here]';


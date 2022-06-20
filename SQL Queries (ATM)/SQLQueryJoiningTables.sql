-- Joining relevant columns from FOICU table and ATMLocations table
SELECT f.CYCLE_DATE, f.CU_NAME, f.STATE, f.YEAR_OPENED, f.REGION, a.SiteFunctionName
INTO ATMByYear
FROM FOICU AS f
INNER JOIN 
ATMLocations AS a
ON f.CU_NAME = a.CU_NAME;
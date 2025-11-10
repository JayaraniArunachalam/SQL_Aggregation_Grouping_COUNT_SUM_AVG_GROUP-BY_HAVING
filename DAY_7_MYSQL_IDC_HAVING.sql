-- Find services that have admitted more than 500 patients in total.
SELECT service, SUM(patients_admitted) AS PATIENT_ADMSN_CNT
FROM services_weekly
GROUP BY service
HAVING PATIENT_ADMSN_CNT>500;

-- Show services where average patient satisfaction is below 75.
SELECT service, AVG(patient_satisfaction) AS AVG_PATIENT_SATSFN
FROM services_weekly
GROUP BY service
HAVING AVG_PATIENT_SATSFN<75;

-- List weeks where total staff presence across all services was less than 50.
SELECT week, SUM(present) AS STAFF_PRSNC
FROM staff_schedule
GROUP BY week
HAVING STAFF_PRSNC<50;

-- Identify services that refused more than 100 patients in total and had an average 
-- patient satisfaction below 80. Show service name, total refused, and average satisfaction.
SELECT service, SUM(patients_refused) AS TOTAL_RFSD,
ROUND(AVG(patient_satisfaction),2) AS AVG_PATIENT_SATSFN
FROM services_weekly
GROUP BY service
HAVING AVG_PATIENT_SATSFN<80;
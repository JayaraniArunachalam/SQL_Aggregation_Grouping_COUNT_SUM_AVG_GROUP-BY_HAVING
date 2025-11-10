## SQL_Aggregation_Grouping_COUNT_SUM_AVG_GROUP-BY_HAVING
SQL Grouping, Aggregations like Count, Sum, Avg, Min, Max, and the Having clause.

## 📊SQL UNDERSTANDING SO FAR
* **WHERE** – applies conditions on non-aggregated columns (filters rows before grouping).
* **GROUP BY**– groups rows based on non-aggregated columns to perform aggregations.
* **SELECT** –
  - All non-aggregated columns in SELECT must appear in GROUP BY.
  - But columns in GROUP BY need not appear in SELECT.
* **HAVING** – applies conditions on aggregated results (filters after grouping).
* **HAVING** is used with GROUP BY, but the reverse is not always necessary.
* Execution Order:
  - FROM → WHERE → GROUP BY → Aggregation → HAVING → SELECT → ORDER BY → LIMIT → OFFSET
 
## Why is HAVING ALWAYS ASSOCIATED WITH GROUP BY?
* ✅ GROUP BY — groups rows so that you can perform aggregations (like SUM, AVG, etc.)
* ✅ HAVING — applies conditions on those aggregated results
* ✅ Without grouping, there’s no aggregation context, so using HAVING becomes meaningless in most cases
* In Simple words - “since without GROUP BY, aggregation itself is not meaningful,
  so HAVING, which holds a condition on aggregation, is also not meaningful without GROUP BY”
  
## 🏥 Dataset: 
- [services_weekly](https://github.com/JayaraniArunachalam/Day_1_SQL_Creating-DB-Tables-and-fetch-UNIQUE-values/blob/main/services_weekly.csv)

Columns in the dataset: week,	month,	service,	available_beds,	patients_request,	patients_admitted,	patients_refused,	patient_satisfaction,	staff_morale,	event

## 📅Challenge: Day 7 
Identify services that refused more than 100 patients in total and had an average patient satisfaction below 80. Show service name, total refused, and average satisfaction.

## ✅ [SQL Solution](https://github.com/JayaraniArunachalam/SQL_Aggregation_Grouping_COUNT_SUM_AVG_GROUP-BY_HAVING/blob/Day-7-Having/DAY_7_MYSQL_IDC_HAVING.sql)
  ``` MYSQL
SELECT service, SUM(patients_refused) AS TOTAL_RFSD,
ROUND(AVG(patient_satisfaction),2) AS AVG_PATIENT_SATSFN
FROM services_weekly
GROUP BY service
HAVING AVG_PATIENT_SATSFN<80;
```
## 📊 Result:
👉[Result / Output](https://github.com/JayaraniArunachalam/SQL_Aggregation_Grouping_COUNT_SUM_AVG_GROUP-BY_HAVING/blob/Day-7-Having/DAY%207%20HAVING%20OP.png)


Thank you [Indian Data Club](https://www.linkedin.com/company/indian-data-club/posts/?feedView=all) for starting this challenge and [DPDzero](https://www.linkedin.com/company/dpdzero/) the title sponsor of this challenge

Connect with me on [LinkedIn](https://www.linkedin.com/in/jayarani-arunachalam-23jun1990/)

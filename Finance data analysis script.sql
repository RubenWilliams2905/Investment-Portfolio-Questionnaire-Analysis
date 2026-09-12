SELECT * 
FROM finance_data_table

-- Q1. Gender ratio of investors
SELECT 
gender,
COUNT(gender)
FROM finance_data_table
GROUP BY gender

-- Q2. Age groups of investors
SELECT 
gender,
CASE 
	WHEN age BETWEEN 20 AND 25 THEN "20-25"
    WHEN age > 25 THEN "25+"
    END AS "Age_Group",
    COUNT(*) AS "number"
FROM finance_data_table
GROUP BY gender, Age_Group

-- Q3. Most important investment method vs least important
SELECT 'Mutual Funds' AS Investment,
       'Most Important' AS Importance,
       SUM(Mutual_Funds = 1) AS Count
FROM finance_data_table

UNION ALL

SELECT 'Mutual Funds',
       'Least Important',
       SUM(Mutual_Funds = 7)
FROM finance_data_table

UNION ALL

SELECT 'Equity Market',
       'Most Important',
       SUM(Equity_Market = 1)
FROM finance_data_table

UNION ALL

SELECT 'Equity Market',
       'Least Important',
       SUM(Equity_Market = 7)
FROM finance_data_table

UNION ALL

SELECT 'Debentures',
       'Most Important',
       SUM(Debentures = 1)
FROM finance_data_table

UNION ALL

SELECT 'Debentures',
       'Least Important',
       SUM(Debentures = 7)
FROM finance_data_table

UNION ALL

SELECT 'Government Bonds',
       'Most Important',
       SUM(Government_Bonds = 1)
FROM finance_data_table

UNION ALL

SELECT 'Government Bonds',
       'Least Important',
       SUM(Government_Bonds = 7)
FROM finance_data_table

UNION ALL

SELECT 'Fixed Deposits',
       'Most Important',
       SUM(Fixed_Deposits = 1)
FROM finance_data_table

UNION ALL

SELECT 'Fixed Deposits',
       'Least Important',
       SUM(Fixed_Deposits = 7)
FROM finance_data_table

UNION ALL

SELECT 'PPF',
       'Most Important',
       SUM(PPF = 1)
FROM finance_data_table

UNION ALL

SELECT 'PPF',
       'Least Important',
       SUM(PPF = 7)
FROM finance_data_table

UNION ALL

SELECT 'Gold',
       'Most Important',
       SUM(Gold = 1)
FROM finance_data_table

UNION ALL

SELECT 'Gold',
       'Least Important',
       SUM(Gold = 7)
FROM finance_data_table
ORDER BY Importance;

-- Q4. Reasons and Risks for investing 

SELECT 
Objective,
Purpose,
Factor,
Source,
Count(*) AS "Record Count"
FROM finance_data_table 
GROUP BY Objective, Purpose, Factor, Source
ORDER BY Objective, Purpose, Factor, Source

-- Q5. Sources based on their savings objectives 

SELECT 
Source,
Savings_Objectives,
COUNT(*)
FROM finance_data_table
GROUP BY Source, Savings_Objectives
ORDER BY Source, Savings_Objectives

-- Q6. Avenues by investment duration and how often they monitor their investments

SELECT 
Avenue,
Duration,
Invest_Monitor, 
Expect AS "Expected_Return",
COUNT(*)
FROM finance_data_table
GROUP BY Avenue, Duration, Invest_Monitor, Expected_Return
ORDER BY Avenue, Duration, Invest_Monitor, Expected_Return

-- Q7. Reasons why investors would chose equity as their avenue

SELECT 
Reason_Equity,
Count(*) as "Count"
FROM finance_data_table
GROUP BY Reason_Equity
ORDER BY Count DESC

-- Q8. Reasons why investors would chose Mutuals as their avenue

SELECT 
Reason_Mutual,
Count(*) as "count"
FROM finance_data_table
GROUP BY Reason_Mutual
ORDER BY Count DESC

-- Q9. Reasons why investors would chose Government Bonds as their avenue

SELECT 
Reason_Bonds,
Count(*) as "Count"
FROM finance_data_table
GROUP BY Reason_Bonds
ORDER BY Count DESC

-- Q10. Reasons why investors would chose Fixed Deposits as their avenue

SELECT 
Reason_FD,
Count(*) as "Count"
FROM finance_data_table
GROUP BY Reason_FD
ORDER BY Count DESC







    








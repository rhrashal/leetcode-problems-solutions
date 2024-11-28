--  1907.Count-Salary-Categories.sql

-- Create Accounts table
CREATE TABLE #Accounts (
    account_id INT,
    income INT
);

-- Insert data into Accounts table
INSERT INTO #Accounts (account_id, income)
VALUES 
(3, 108939),
(2, 12747),
(8, 87709),
(6, 91796);

-- Select data to verify insertion

select cat.category,count(ac.account_id) accounts_count from (
select 'Low Salary' as category
union 
select 'Average Salary' as category
union
select 'High Salary' as category
) cat 
left join (
	SELECT account_id,income, 
	case  when income<20000 then 'Low Salary'
	when income>=20000 and income<=50000 then 'Average Salary'
	when income>50000 then 'High Salary' else '' end Category
	FROM #Accounts 
) ac on ac.Category = cat.category
group by cat.category







SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count 
FROM #Accounts
WHERE income < 20000

UNION

SELECT 'Average Salary' AS category, COUNT(*) AS accounts_count 
FROM #Accounts
WHERE income BETWEEN 20000 AND 50000

UNION

SELECT 'High Salary' AS category, COUNT(*) AS accounts_count 
FROM #Accounts
WHERE income > 50000


-- Drop Accounts table
DROP TABLE #Accounts;





 

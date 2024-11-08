-- 1193.Monthly-Transactions-I.sql
-- Create the temp table
CREATE TABLE #Transactions (
    id INT,
    country VARCHAR(2),
    state VARCHAR(10),
    amount INT,
    trans_date DATE
);

-- Insert data into the temp table
INSERT INTO #Transactions (id, country, state, amount, trans_date) VALUES
(121, 'US', 'approved', 1000, '2018-12-18'),
(122, 'US', 'declined', 2000, '2018-12-19'),
(123, 'US', 'approved', 2000, '2019-01-01'),
(124, 'DE', 'approved', 2000, '2019-01-07');

-- Verify the inserted data
SELECT FORMAT(trans_date, 'yyyy-MM') as [month],t.country
,count(1) trans_count 
,sum( case when t.state = 'approved' then 1 else 0 end ) approved_count
,sum(t.amount) as trans_total_amount 
,sum( case when t.state = 'approved' then t.amount else 0 end ) approved_total_amount 
FROM #Transactions t
group by FORMAT(trans_date, 'yyyy-MM'),t.country

-- Drop the temp table
DROP TABLE #Transactions;

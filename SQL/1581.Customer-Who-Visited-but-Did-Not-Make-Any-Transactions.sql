-- Create temporary table for Visits
CREATE TABLE #visits (
    visit_id INT,
    customer_id INT
);

-- Insert data into the Visits table
INSERT INTO #visits (visit_id, customer_id)
VALUES
(1, 23),
(2, 9),
(4, 30),
(5, 54),
(6, 96),
(7, 54),
(8, 54);

-- Create temporary table for Transactions
CREATE TABLE #transactions (
    transaction_id INT,
    visit_id INT,
    amount INT
);

-- Insert data into the Transactions table
INSERT INTO #transactions (transaction_id, visit_id, amount)
VALUES
(2, 5, 310),
(3, 5, 300),
(9, 5, 200),
(12, 1, 910),
(13, 2, 970);

-- Select data to verify the insertion

select v.customer_id,count(1) as count_no_trans  
from #visits v
left join #transactions t on v.visit_id = t.visit_id
where t.transaction_id is null
group by v.customer_id


drop table #visits
drop table #transactions

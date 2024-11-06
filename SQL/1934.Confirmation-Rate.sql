 --1934.Confirmation-Rate.sql
 
 -- Create temporary table for Signups
CREATE TABLE #signups (
    user_id INT,
    time_stamp DATETIME
);

-- Insert data into the Signups table
INSERT INTO #signups (user_id, time_stamp)
VALUES
(3, '2020-03-21 10:16:13'),
(7, '2020-01-04 13:57:59'),
(2, '2020-07-29 23:09:44'),
(6, '2020-12-09 10:39:37');

-- Create temporary table for Confirmations
CREATE TABLE #confirmations (
    user_id INT,
    time_stamp DATETIME,
    action VARCHAR(10)
);

-- Insert data into the Confirmations table
INSERT INTO #confirmations (user_id, time_stamp, action)
VALUES
(3, '2021-01-06 03:30:46', 'timeout'),
(3, '2021-07-14 14:00:00', 'timeout'),
(7, '2021-06-12 11:57:29', 'confirmed'),
(7, '2021-06-13 12:58:28', 'confirmed'),
(7, '2021-06-14 13:59:27', 'confirmed'),
(2, '2021-01-22 00:00:00', 'confirmed'),
(2, '2021-02-28 23:59:59', 'timeout');

-- Calculate confirmation rate
select s.user_id,
CAST(
FORMAT( cast( sum(case when c.action = 'confirmed' then 1 else 0 end) as decimal(18,2))
/cast(count(s.user_id) as decimal(18,2)), '0.00') 
 AS DECIMAL(4, 2))
confirmation_rate 
from #signups s
left join #confirmations c on s.user_id = c.user_id
group by s.user_id




-- Drop temporary tables after use
DROP TABLE #signups;
DROP TABLE #confirmations;










--SELECT s.user_id,
--       ISNULL(ROUND(CONVERT(FLOAT, COUNT(CASE WHEN c.action = 'confirmed' THEN 1 END)) / 
--       COUNT(c.user_id), 2), 0) AS confirmation_rate
--FROM #signups s
--LEFT JOIN #confirmations c ON s.user_id = c.user_id
--GROUP BY s.user_id
--ORDER BY s.user_id;

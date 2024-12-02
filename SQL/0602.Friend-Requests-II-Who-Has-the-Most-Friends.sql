-- Create RequestAccepted table 
CREATE TABLE #RequestAccepted (
    requester_id INT,
    accepter_id INT,
    accept_date DATE
);

-- Insert data into RequestAccepted table
INSERT INTO #RequestAccepted (requester_id, accepter_id, accept_date)
VALUES 
(1, 2, '2016-06-03'),
(1, 3, '2016-06-08'),
(2, 3, '2016-06-08'),
(3, 4, '2016-06-09');

-- Select data to verify insertion
select top 1 requester_id as id,sum(cnt) as num  from (
SELECT requester_id,count(1) cnt FROM #RequestAccepted group by requester_id
union all
SELECT accepter_id,count(1) FROM #RequestAccepted group by accepter_id
) a
group by a.requester_id
order by sum(cnt) desc

-- Drop RequestAccepted table
DROP TABLE #RequestAccepted;

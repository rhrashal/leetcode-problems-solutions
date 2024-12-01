-- Create Customer table
CREATE TABLE #Customer (
    customer_id INT,
    name VARCHAR(50),
    visited_on DATE,
    amount INT
);

-- Insert data into Customer table
INSERT INTO #Customer (customer_id, name, visited_on, amount)
VALUES 
(1, 'Jhon', '2019-01-01', 100),
(2, 'Daniel', '2019-01-02', 110),
(3, 'Jade', '2019-01-03', 120),
(4, 'Khaled', '2019-01-04', 130),
(5, 'Winston', '2019-01-05', 110),
(6, 'Elvis', '2019-01-06', 140),
(7, 'Anna', '2019-01-07', 150),
(8, 'Maria', '2019-01-08', 80),
(9, 'Jaze', '2019-01-09', 110),
(1, 'Jhon', '2019-01-10', 130),
(3, 'Jade', '2019-01-10', 150);

-- Select data to verify insertion
--SELECT * FROM #Customer;


select c1.visited_on
    ,sum(c2.amount) amount
    ,ROUND(sum(c2.amount+0.00)/7, 2) average_amount
from (select distinct visited_on from #Customer) c1
inner join #Customer c2 on c2.visited_on <= c1.visited_on 
    and c2.visited_on >  dateadd(day, -7, c1.visited_on)
group by c1.visited_on
having count(distinct c2.visited_on) = 7
order by c1.visited_on


-- Drop Customer table
DROP TABLE #Customer;

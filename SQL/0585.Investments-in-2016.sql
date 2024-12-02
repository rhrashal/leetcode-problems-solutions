-- Create Insurance table
CREATE TABLE Insurance (
    pid INT,
    tiv_2015 DECIMAL(10, 2),
    tiv_2016 DECIMAL(10, 2),
    lat DECIMAL(10, 2),
    lon DECIMAL(10, 2)
);

-- Insert data into Insurance table
INSERT INTO Insurance (pid, tiv_2015, tiv_2016, lat, lon)
VALUES 
(1, 10, 5, 10, 10),
(2, 20, 20, 20, 20),
(3, 10, 30, 20, 20),
(4, 10, 40, 40, 40);

-- Select data to verify insertion
SELECT * FROM Insurance;
/* Write your T-SQL query statement below */

with cte AS(
    select pid,
        tiv_2015,
        tiv_2016 ,
        count(pid)OVER(partition by tiv_2015 )AS tv_cnt,
        count(pid)OVER(partition by lat,lon)AS l_cnt 
from insurance
)
select round(sum(tiv_2016),2)AS tiv_2016  from cte where tv_cnt >1 and l_cnt <2

-- Drop Insurance table
DROP TABLE Insurance;


--Write a solution to report the sum of all total investment values in 2016 tiv_2016, for all policyholders who:

--have the same tiv_2015 value as one or more other policyholders, and
--are not located in the same city as any other policyholder (i.e., the (lat, lon) attribute pairs must be unique).
--Round tiv_2016 to two decimal places.

--The result format is in the following example.



--The first record in the table, like the last record, meets both of the two criteria.
--The tiv_2015 value 10 is the same as the third and fourth records, and its location is unique.

--The second record does not meet any of the two criteria. 
--Its tiv_2015 is not like any other policyholders and its location is the same as the third record, which makes the third record fail, too.

--So, the result is the sum of tiv_2016 of the first and last record, which is 45.

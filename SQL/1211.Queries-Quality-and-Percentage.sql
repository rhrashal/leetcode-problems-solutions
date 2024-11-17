--1211.Queries-Quality-and-Percentage.sql
-- Step 1: Create the temporary table
CREATE TABLE #Queries (
    query_name NVARCHAR(50),
    result NVARCHAR(50),
    position INT,
    rating INT
);

-- Step 2: Insert the provided data into the temporary table
--INSERT INTO #Queries (query_name, result, position, rating)
--VALUES
--('Dog', 'Golden Retriever', 1, 5),
--('Dog', 'German Shepherd', 2, 5),
--('Dog', 'Mule', 200, 1),
--('Cat', 'Shirazi', 5, 2),
--('Cat', 'Siamese', 3, 3),
--('Cat', 'Sphynx', 7, 4);

INSERT INTO #Queries (query_name, result, position, rating)
VALUES 
('lfdxfi', 'qduxwfnfozvsr', 2, 5), 
('meayln', 'prepggxrpnrvy', 1, 1), 
('phqghu', 'wcysyycqpevik', 1, 2), 
('rcvscx', 'mznimkkasvwsr', 1, 4), 
('lfdxfi', 'kycxfxtlsgyps', 2, 2);



/* Write your T-SQL query statement below */
select query_name, 
round(avg(1.0 * rating / position), 2)
as quality,
round(sum(iif(rating<3, 100.0, 0)) / count(rating), 2)
as poor_query_percentage
from #Queries
group by query_name
having query_name is not null;

-- Step 4: Drop the temporary table
DROP TABLE #Queries;


--1204.Last-Person-to-Fit-in-the-Bus.sql

-- Create Queue table
CREATE TABLE #Queue (
    person_id INT,
    person_name VARCHAR(50),
    weight INT,
    turn INT
);

-- Insert data into Queue table
INSERT INTO #Queue (person_id, person_name, weight, turn)
VALUES 
(5, 'Alice', 250, 1),
(4, 'Bob', 175, 5),
(3, 'Alex', 350, 2),
(6, 'John Cena', 400, 3),
(1, 'Winston', 500, 6),
(2, 'Marie', 200, 4);


-- Select data to verify insertion
select top 1 person_name 
  from (  
      SELECT person_id, person_name, weight,
      SUM(weight) OVER (ORDER BY turn) AS cumulative_sum
      , turn 
      FROM #Queue
) a where a.cumulative_sum<=1000
order by cumulative_sum desc


-- Drop Queue table
DROP TABLE #Queue;




 

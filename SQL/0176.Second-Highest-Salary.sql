/* Write your T-SQL query statement below */
-- Create a temporary table for Employee in SQL Server
CREATE TABLE #employee (
    id INT,
    salary DECIMAL(10, 2)
);

-- Insert data into the temporary Employee table
INSERT INTO #employee (id, salary)
VALUES
(1, 100),
(2, 200),
(3, 300);

-- Select the data to verify the insertion
SELECT * FROM #employee;


go
-- sol -1
Select MAX(salary) AS "SecondHighestSalary"
From #Employee
WHERE salary <(SELECT MAX(salary) From #Employee)
go

    -- sol -2
WITH cte AS (
				SELECT e.salary, ROW_NUMBER() OVER (PARTITION BY 1 ORDER BY salary DESC) AS row_num 
				FROM ( SELECT DISTINCT salary FROM #Employee ) e 
			) 
			SELECT 
			CASE WHEN EXISTS (SELECT 1 FROM cte WHERE row_num = 2) 
			THEN (SELECT salary FROM cte WHERE row_num = 2)
			ELSE NULL END AS salary;

go


drop table #employee

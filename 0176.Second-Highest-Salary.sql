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

Select MAX(salary) AS "SecondHighestSalary"
From #Employee
WHERE salary <(SELECT MAX(salary) From #Employee)
go



drop table #employee

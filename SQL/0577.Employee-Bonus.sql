-- Create temporary table for Employee
CREATE TABLE #employee (
    empId INT,
    name VARCHAR(255),
    supervisor INT,
    salary DECIMAL(10, 2)
);

-- Insert data into the Employee table
INSERT INTO #employee (empId, name, supervisor, salary)
VALUES
(3, 'Brad', NULL, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4, 'Thomas', 3, 4000);

-- Create temporary table for Bonus
CREATE TABLE #bonus (
    empId INT,
    bonus DECIMAL(10, 2)
);

-- Insert data into the Bonus table
INSERT INTO #bonus (empId, bonus)
VALUES
(2, 500),
(4, 2000);

-- Select data to verify the insertion
SELECT * FROM #employee;
SELECT * FROM #bonus;


select e.name,b.bonus from #employee e
left join #bonus b on e.empId = b.empId
where b.bonus < 1000
OR b.bonus is null
--or
SELECT e.name, b.bonus
FROM #Employee e
LEFT JOIN #Bonus b
ON e.empId=b.empId
WHERE ISNULL(bonus, 0)<1000


drop table #employee;
drop table #bonus;

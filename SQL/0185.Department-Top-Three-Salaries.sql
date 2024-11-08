-- 0185.Department-Top-Three-Salaries.sql

-- Create temporary Employee table
CREATE TABLE #Employee (
    id INT,
    name VARCHAR(50),
    salary INT,
    departmentId INT
);

-- Insert data into Employee table
INSERT INTO #Employee (id, name, salary, departmentId) VALUES
(1, 'Joe', 85000, 1),
(2, 'Henry', 80000, 2),
(3, 'Sam', 60000, 2),
(4, 'Max', 90000, 1),
(5, 'Janet', 69000, 1),
(6, 'Randy', 85000, 1),
(7, 'Will', 70000, 1);

-- Create temporary Department table
CREATE TABLE #Department (
    id INT,
    name VARCHAR(50)
);

-- Insert data into Department table
INSERT INTO #Department (id, name) VALUES
(1, 'IT'),
(2, 'Sales');


--step 1 
	   SELECT distinct e.departmentId,e.salary, Rank() 
           over (Partition BY e.departmentId ORDER BY  e.salary DESC ) AS Rank
           FROM  (
			        select distinct departmentId,salary from #Employee 
		         ) e 


--step 2
SELECT d.name Department ,e.name Employee ,e.salary
FROM #Employee e 
inner join #Department d on e.departmentId = d.id
inner join (
           
		   SELECT distinct e.departmentId,e.salary, Rank() 
           over (Partition BY e.departmentId ORDER BY  e.salary DESC ) AS Rank
           FROM  (
			        select distinct departmentId,salary from #Employee 
		         ) e 
		  
		  ) r  on r.departmentId = e.departmentId and e.salary = r.salary
		where r.Rank <= 3
		order by e.departmentId







DROP TABLE #Employee;
DROP TABLE #Department;

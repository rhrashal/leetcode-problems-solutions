-- 1075.Project-Employees-I.sql


-- Create temporary Project table
CREATE TABLE #Project (
    project_id INT,
    employee_id INT
);

-- Insert data into Project table
INSERT INTO #Project (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);

-- Create temporary Employee table
CREATE TABLE #Employee (
    employee_id INT,
    name VARCHAR(50),
    experience_years INT
);

-- Insert data into Employee table
INSERT INTO #Employee (employee_id, name, experience_years) VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);

-- Verify inserted data
SELECT project_id,  cast( (sum(experience_years)*1.00)/count(1) as decimal(5,2)) average_years 
FROM #Project p 
inner join  #Employee e on p.employee_id = e.employee_id
group by project_id

-- Drop the temporary tables
DROP TABLE #Project;
DROP TABLE #Employee;

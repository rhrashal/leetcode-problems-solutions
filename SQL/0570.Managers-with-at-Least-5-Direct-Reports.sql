-- 0570.Managers-with-at-Least-5-Direct-Reports.sql

-- Create temporary table for Employee
CREATE TABLE #employee (
    id INT,
    name VARCHAR(50),
    department CHAR(1),
    managerId INT
);

-- Insert data into the Employee table
INSERT INTO #employee (id, name, department, managerId)
VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101),
(111, 'John', 'A', NULL),
(112, 'Dan', 'A', 111),
(113, 'James', 'A', 111),
(114, 'Amy', 'A', 111),
(115, 'Anne', 'A', 111),
(116, 'Ron', 'B', 111);
-- Select data to verify the insertion
SELECT e1.name FROM 
#employee e1
inner join #employee e2 on e1.id = e2.managerId
group by e1.name,e1.id
having count(1)>4



drop Table #employee

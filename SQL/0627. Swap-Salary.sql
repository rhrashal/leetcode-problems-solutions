-- Create Salary table
CREATE TABLE #Salary (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    sex CHAR(1),
    salary INT
);

-- Insert data into Salary table
INSERT INTO #Salary (id, name, sex, salary) VALUES
(1, 'A', 'm', 2500),
(2, 'B', 'f', 1500),
(3, 'C', 'm', 5500),
(4, 'D', 'f', 500);



select * from #Salary

update #Salary 
set sex = 
	case 
		when sex='m' then 'f' 
		when sex='f' then 'm' 
	end

select * from #Salary

drop table #Salary

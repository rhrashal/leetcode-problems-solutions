-- Create the Employees table
CREATE TABLE #Employees (
    emp_id INT,
    event_day DATE,
    in_time INT,
    out_time INT
);

-- Insert data into the Employees table
INSERT INTO #Employees (emp_id, event_day, in_time, out_time)
VALUES 
    (1, '2020-11-28', 4, 32),
    (1, '2020-11-28', 55, 200),
    (1, '2020-12-03', 1, 42),
    (2, '2020-11-28', 3, 33),
    (2, '2020-12-09', 47, 74);


	select event_day day ,emp_id,sum(out_time-in_time) total_time  
	from #Employees
	group by event_day,emp_id
	order by event_day

	drop table #Employees


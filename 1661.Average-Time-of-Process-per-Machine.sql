-- Create temporary table for Activity
CREATE TABLE #activity (
    machine_id INT,
    process_id INT,
    activity_type VARCHAR(10),
    timestamp DECIMAL(5, 3)
);

-- Insert data into the Activity table
INSERT INTO #activity (machine_id, process_id, activity_type, timestamp)
VALUES
(0, 0, 'start', 0.712),
(0, 0, 'end', 1.520),
(0, 1, 'start', 3.140),
(0, 1, 'end', 4.120),
(1, 0, 'start', 0.550),
(1, 0, 'end', 1.550),
(1, 1, 'start', 0.430),
(1, 1, 'end', 1.420),
(2, 0, 'start', 4.100),
(2, 0, 'end', 4.512),
(2, 1, 'start', 2.500),
(2, 1, 'end', 5.000);

-- Select data to verify the insertion


SELECT  a.machine_id, cast( AVG(b.timestamp-a.timestamp)as decimal(18,3)) as processing_time
FROM #activity a
inner join #activity b on a.machine_id = b.machine_id and a.process_id = b.process_id and a.activity_type= 'start'  and b.activity_type = 'end'
group by a.machine_id





drop table #activity

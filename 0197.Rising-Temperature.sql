-- Create a temporary table for Weather
CREATE TABLE #weather (
    id INT,
    recordDate DATE,
    temperature INT
);

-- Insert data into the Weather table
INSERT INTO #weather (id, recordDate, temperature)
VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);

-- Select the data to verify the insertion
SELECT * FROM #weather;



select b.id from #weather a 
left join #weather b on a.recordDate  = DATEADD(DAY,-1,b.recordDate)
where a.temperature < b.temperature


drop table #weather

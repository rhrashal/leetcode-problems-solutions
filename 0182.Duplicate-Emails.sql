-- Create a temporary table
CREATE TABLE #person (
    id INT,
    email VARCHAR(255)
);

-- Insert data into the temporary table
INSERT INTO #person (id, email)
VALUES
(1, 'john@example.com'),
(2, 'bob@example.com'),
(3, 'john@example.com');

-- Select the data to verify the insertion
SELECT * FROM #person;


--#######################


select email    from #Person 
group by email
having count(email)>1


drop table #Person

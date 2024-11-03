-- Create temporary table for Person
CREATE TABLE #person (
    personId INT,
    lastName VARCHAR(255),
    firstName VARCHAR(255)
);

-- Insert data into the Person table
INSERT INTO #person (personId, lastName, firstName)
VALUES
(1, 'Wang', 'Allen'),
(2, 'Alice', 'Bob');

-- Create temporary table for Address
CREATE TABLE #address (
    addressId INT,
    personId INT,
    city VARCHAR(255),
    state VARCHAR(255)
);

-- Insert data into the Address table
INSERT INTO #address (addressId, personId, city, state)
VALUES
(1, 2, 'New York City', 'New York'),
(2, 3, 'Leetcode', 'California');

-- Select data to verify the insertion
SELECT * FROM #person;
SELECT * FROM #address;




select p.firstName,p.lastName,a.city,a.state from #person p 
left join #address a on a.personId = p.personId






drop table #person;
drop table #address;

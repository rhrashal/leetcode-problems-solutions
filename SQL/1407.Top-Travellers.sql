-- Create Users table
CREATE TABLE #Users (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert data into Users table
INSERT INTO #Users (id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Alex'),
(19, 'Alice');

-- Create Rides table
CREATE TABLE #Rides (
    id INT PRIMARY KEY,
    user_id INT,
    distance INT,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Insert data into Rides table
INSERT INTO #Rides (id, user_id, distance) VALUES
(1, 1, 120),
(2, 2, 317),
(3, 3, 222),
(4, 7, 100),
(5, 13, 312),
(9, 7, 230);


select * from #Users
select * from #Rides
select u.name,sum(isnull(r.distance,0)) distance from #Users u
left join #Rides r on r.user_id = u.id
group by u.id,u.name
order by sum(r.distance) desc, u.name asc

DROP TABLE #Users
DROP TABLE #Rides

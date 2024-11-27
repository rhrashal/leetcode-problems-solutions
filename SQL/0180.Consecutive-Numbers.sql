-- 0180.Consecutive-Numbers.sql

-- Create Logs table
CREATE TABLE Logs (
    id INT,
    num INT
);

-- Insert data into Logs table
INSERT INTO Logs (id, num)
VALUES 
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2);

-- Select data to verify insertion


SELECT distinct l1.num FROM Logs l1
inner join Logs l2 on l1.num = l2.num and (l1.id+1) = l2.id
inner join Logs l3 on l2.num = l3.num and (l2.id+1) = l3.id



-- Drop Logs table
DROP TABLE Logs;

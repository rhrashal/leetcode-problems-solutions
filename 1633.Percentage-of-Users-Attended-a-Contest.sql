--1633.Percentage-of-Users-Attended-a-Contest.sql
-- Create temporary Users table
CREATE TABLE #Users (
    user_id INT,
    user_name VARCHAR(50)
);

-- Insert data into Users table
INSERT INTO #Users (user_id, user_name) VALUES
(721, 'Yaakov'),
(834, 'David'),
(593, 'Eliyahu'),
(844, 'Benjamin'),
(306, 'Azriel');

-- Create temporary Register table
CREATE TABLE #Register (
    contest_id INT,
    user_id INT
);

-- Insert data into Register table
INSERT INTO #Register (contest_id, user_id) VALUES
(208, 721), (208, 593), (192, 593), (214, 721), (244, 306),
(205, 844), (235, 593), (205, 593), (235, 834), (205, 306),
(179, 306), (214, 834), (235, 306), (179, 721), (192, 721),
(244, 844), (205, 721), (235, 721), (205, 834), (217, 593),
(244, 593), (208, 834), (208, 844), (217, 721), (179, 593),
(217, 844), (179, 844), (214, 306), (179, 834), (244, 834),
(217, 306), (192, 306), (214, 593);

-- Verify inserted data

select  a.contest_id , cast((sum(case when r1.contest_id is null then 0 else 1 end)*1.00 /count(1))*100 as decimal(5,2))  percentage 
from #Users u
cross join ( select distinct contest_id from #Register r) a
left join #Register r1 on r1.contest_id = a.contest_id and r1.user_id = u.user_id
group by  a.contest_id
order by cast((sum(case when r1.contest_id is null then 0 else 1 end)*1.00 /count(1))*100 as decimal(5,2)) desc,a.contest_id

-- Drop the temporary tables
DROP TABLE #Users;
DROP TABLE #Register;

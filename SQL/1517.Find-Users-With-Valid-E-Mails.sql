-- Create Users table  1517.Find-Users-With-Valid-E-Mails.SQL
CREATE TABLE #Users (
    user_id INT,
    name VARCHAR(50),
    mail VARCHAR(100)
);

-- Insert data into Users table
INSERT INTO #Users (user_id, name, mail)
VALUES 
(1, 'Winston', 'winston@leetcode.com'),
(2, 'Jonathan', 'jonathanisgreat'),
(3, 'Annabelle', 'bella-@leetcode.com'),
(4, 'Sally', 'sally.come@leetcode.com'),
(5, 'Marwan', 'quarz#2020@leetcode.com'),
(6, 'David', 'david69@gmail.com'),
(7, 'Shapiro', '.shapo@leetcode.com');

-- Select data to verify insertion
SELECT user_id, name, mail
FROM #Users 
where mail like '%@leetcode.com'
and SUBSTRING(mail,1,1) like '[a-zA-Z]%'
AND mail NOT LIKE '%[^a-zA-Z0-9_.-]%@leetcode.com'

-- Drop Users table
DROP TABLE #Users;

-- Create Users table  
CREATE TABLE Users (
    user_id INT,
    name VARCHAR(50)
);

-- Insert data into Users table
INSERT INTO Users (user_id, name)
VALUES 
(1, 'aLice'),
(2, 'bOB');

-- Select data to verify insertion
SELECT user_id, CONCAT( UPPER(SUBSTRING(name,1,1)),LOWER(SUBSTRING(name,2,len(name)))) name 
FROM Users 
order by user_id

-- Drop Users table
DROP TABLE Users;

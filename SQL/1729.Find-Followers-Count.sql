-- Create Followers table
CREATE TABLE Followers (
    user_id INT,
    follower_id INT
);

-- Insert data into Followers table
INSERT INTO Followers (user_id, follower_id)
VALUES 
(0, 1),
(1, 0),
(2, 0),
(2, 1);

-- Select data to verify insertion
SELECT user_id,count(1) followers_count FROM Followers group by user_id;

-- Drop Followers table
DROP TABLE Followers;

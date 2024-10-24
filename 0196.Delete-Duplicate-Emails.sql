-- Create a temporary table
CREATE TABLE person (
    id INT,
    email VARCHAR(255)
);

-- Insert data into the temporary table
INSERT INTO person (id, email)
VALUES
(1, 'john@example.com'),
(2, 'bob@example.com'),
(3, 'john@example.com');

-- Select the data to verify the insertion
SELECT * FROM person;



--################ 

WITH cte AS (
    SELECT  email , 
    ROW_NUMBER() OVER (PARTITION BY email ORDER BY id ) row_num
     FROM 
        Person 
	)
	DELETE FROM cte WHERE row_num > 1;

   WITH cte AS (
    SELECT  email , 
    ROW_NUMBER() OVER (PARTITION BY email ORDER BY id ) row_num
     FROM 
        Person 
	)
	DELETE FROM cte WHERE row_num > 1;

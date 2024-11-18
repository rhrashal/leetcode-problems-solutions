--  2356.Number-of-Unique-Subjects-Taught-by-Each-Teacher.sql

-- Step 1: Create the temporary table
CREATE TABLE #Teacher (
    teacher_id INT,
    subject_id INT,
    dept_id INT
);

-- Step 2: Insert the provided data into the temporary table
INSERT INTO #Teacher (teacher_id, subject_id, dept_id)
VALUES
(1, 2, 3),
(1, 2, 4),
(1, 3, 3),
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 4, 1);

-- Step 3: Select the data from the temporary table
SELECT teacher_id, count(distinct subject_Id) cnt  FROM #Teacher group by teacher_Id

-- Step 4: Drop the temporary table
DROP TABLE #Teacher;

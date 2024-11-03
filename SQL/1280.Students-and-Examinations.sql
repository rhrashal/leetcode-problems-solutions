-- Create temporary table for Students
CREATE TABLE #students (
    student_id INT,
    student_name VARCHAR(50)
);

-- Insert data into the Students table
INSERT INTO #students (student_id, student_name)
VALUES
(1, 'Alice'),
(2, 'Bob'),
(13, 'John'),
(6, 'Alex');

-- Create temporary table for Subjects
CREATE TABLE #subjects (
    subject_name VARCHAR(50)
);

-- Insert data into the Subjects table
INSERT INTO #subjects (subject_name)
VALUES
('Math'),
('Physics'),
('Programming');

-- Create temporary table for Examinations
CREATE TABLE #examinations (
    student_id INT,
    subject_name VARCHAR(50)
);

-- Insert data into the Examinations table
INSERT INTO #examinations (student_id, subject_name)
VALUES
(1, 'Math'),
(1, 'Physics'),
(1, 'Programming'),
(2, 'Programming'),
(1, 'Physics'),
(1, 'Math'),
(13, 'Math'),
(13, 'Programming'),
(13, 'Physics'),
(2, 'Math'),
(1, 'Math');

-- Select data to verify the insertion


select s.student_id,s.student_name,e.subject_name,count(e.subject_name) from #students s
inner join #examinations e on s.student_id = e.student_id
group by s.student_id,s.student_name,e.subject_name


drop table #students;
drop table #subjects;
drop table #examinations;

-- Create Courses table
CREATE TABLE Courses (
    student CHAR(1),
    class VARCHAR(50)
);

-- Insert data into Courses table
INSERT INTO Courses (student, class)
VALUES 
('A', 'Math'),
('B', 'English'),
('C', 'Math'),
('D', 'Biology'),
('E', 'Math'),
('F', 'Computer'),
('G', 'Math'),
('H', 'Math'),
('I', 'Math');

-- Select data to verify insertion
SELECT class FROM Courses
group by class
having count(1)>=5;

-- Drop Courses table
DROP TABLE Courses;

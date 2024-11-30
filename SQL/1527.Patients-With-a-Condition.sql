-- Create Patients table  
CREATE TABLE Patients (
    patient_id INT,
    patient_name VARCHAR(50),
    conditions VARCHAR(100)
);

-- Insert data into Patients table
INSERT INTO Patients (patient_id, patient_name, conditions)
VALUES 
(1, 'Daniel', 'YFEV COUGH'),
(2, 'Alice', ''),
(3, 'Bob', 'DIAB100 MYOP'),
(4, 'George', 'ACNE DIAB100'),
(5, 'Alain', 'DIAB201'),
(6, 'Dlain', 'SADIAB100');

-- Select data to verify insertion
SELECT patient_id, patient_name, conditions 
FROM Patients 
where conditions like 'DIAB1%' OR  conditions like '% DIAB1%';

-- Drop Patients table
DROP TABLE Patients;

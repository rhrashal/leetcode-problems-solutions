-- 1731.The-Number-of-Employees-Which-Report-to-Each-Employee.sql
-- Create Employees table
CREATE TABLE Employees (
    employee_id INT,
    name VARCHAR(50),
    reports_to INT,
    age INT
);

-- Insert data into Employees table

---- FOR TEST 1
INSERT INTO Employees (employee_id, name, reports_to, age)
VALUES 
(9, 'Hercy', NULL, 43),
(6, 'Alice', 9, 41),
(4, 'Bob', 9, 36),
(2, 'Winston', NULL, 37);


--- FOR TEST 2
--INSERT INTO Employees (employee_id, name, reports_to, age) 
--VALUES 
--(1, 'Michael', NULL, 45),
--(2, 'Alice', 1, 38),
--(3, 'Bob', 1, 42),
--(4, 'Charlie', 2,34),
--(5, 'David', 2,40),
--(6, 'Eve', 3, 37),
--(7, 'Frank', NULL, 50),
--(8, 'Grace', NULL, 48);
 
--- FOR TEST 3
--INSERT INTO Employees (employee_id, name, reports_to, age)
--VALUES 
--(94, 'Freida', 57, 43),
--(37, 'Aharon', 74, 38),
--(69, 'Yehudit', 86, 38),
--(54, 'Menachem', NULL, 54),
--(53, 'Yaakov', 40, 49),
--(91, 'Shimon', 89, 56),
--(11, 'Dalia', 84, 36),
--(93, 'Miriam', 53, 26),
--(46, 'Tamar', 81, 41),
--(74, 'Rachel', 93, 35),
--(45, 'Yaakov', 25, 35),
--(4, 'Michael', 73, 52),
--(15, 'Adam', 100, 49),
--(88, 'Azriel', 20, 38),
--(76, 'Benjamin', NULL, 39),
--(65, 'Azriel', 86, 26),
--(59, 'Zahava', 90, 27),
--(35, 'Azriel', 76, 26),
--(64, 'Meir', 44, 53),
--(39, 'Azriel', 65, 51),
--(32, 'David', 6, 26),
--(10, 'Yaakov', 16, 59),
--(16, 'Yehudit', 30, 49),
--(44, 'Golda', 10, 57),
--(25, 'Tikvah', 39, 31),
--(81, 'David', 25, 35),
--(42, 'Yaffah', 99, 42),
--(66, 'Michael', 11, 52),
--(100, 'Menachem', NULL, 41),
--(84, 'Moshe', NULL, 40),
--(68, 'Eliyahu', 8, 53),
--(5, 'Yehudit', 100, 42),
--(58, 'Gelleh', 4, 48),
--(90, 'Daniel', 78, 58),
--(52, 'Yaakov', 39, 39),
--(3, 'Michael', NULL, 54),
--(89, 'Levi', 44, 40),
--(87, 'Menachem', NULL, 41),
--(43, 'Adam', 10, 39),
--(23, 'Eliyahu', 11, 34),
--(24, 'Aharon', 14, 57),
--(31, 'Golda', 96, 41),
--(71, 'Benjamin', 5, 34),
--(6, 'Benjamin', 58, 31),
--(96, 'Shimon', 87, 43),
--(51, 'Tikvah', NULL, 46),
--(99, 'Yehudah', 54, 52),
--(27, 'Michael', 52, 58),
--(8, 'Menachem', 17, 40),
--(14, 'Golda', 62, 37),
--(47, 'Daniel', 57, 51),
--(67, 'Moshe', NULL, 54),
--(50, 'Adam', 81, 52),
--(40, 'Sarah', NULL, 47),
--(17, 'Golda', 88, 27),
--(73, 'Yehudah', NULL, 45),
--(26, 'Zahava', 4, 34),
--(30, 'Yaakov', NULL, 47),
--(80, 'Zahava', 56, 56),
--(78, 'Rachel', 10, 42),
--(60, 'Dalia', 56, 60),
--(57, 'Gavriel', 44, 56),
--(22, 'Meir', 73, 40),
--(62, 'Ezra', 15, 41),
--(20, 'Tikvah', 25, 24),
--(28, 'Benjamin', NULL, 25),
--(86, 'Eliyahu', 62, 29),
--(56, 'Ezra', 35, 25),
--(33, 'Tikvah', NULL, 40),
--(55, 'Sarah', 35, 24),
--(83, 'Adam', 60, 38),
--(49, 'Miriam', 40, 48);


-- Select data to verify insertion
SELECT e1.employee_id,e1.name,count(e2.age) reports_count
,cast((sum(e2.age)*1.00)/count(e2.age) as decimal(5,0)) average_age
FROM Employees e1
inner join Employees e2 on e1.employee_id = e2.reports_to
group by  e1.employee_id,e1.name
order by e1.employee_id;


-- Drop Employees table
DROP TABLE Employees;




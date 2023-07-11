drop table Students;
-- a
CREATE TABLE Students (ID int,  Name VARCHAR(20),  Dept VARCHAR(20),  Marks int );

-- b
INSERT INTO Students (ID, Name, Dept, Marks) VALUES (1, 'A', 'CSE', 95);
INSERT INTO Students (ID, Name, Dept, Marks) VALUES (2, 'B', 'ESE', 70);
INSERT INTO Students (ID, Name, Dept, Marks) VALUES (3, 'C', 'ME', 85);
INSERT INTO Students (ID, Name, Dept, Marks) VALUES (4, 'D', 'EEE', 70);
INSERT INTO Students (ID, Name, Dept, Marks) VALUES (5, 'E', 'EEE', 85);

-- c
INSERT INTO Students (ID, Name, Dept, Marks) VALUES (338, 'Nahid', 'CSE', 98);

-- d
select * from Students;

-- e
SELECT * FROM Students WHERE Id = 2;

-- f
SELECT Name, Marks FROM Students WHERE Marks > 80;

-- g
SELECT Name, Marks FROM Students WHERE Marks BETWEEN 75 AND 90;

-- h
SELECT Id, Marks FROM Students ORDER BY Marks DESC;

-- i
SELECT Id, Marks FROM Students ORDER BY Marks ASC, Dept ASC;

-- j
SELECT DISTINCT Dept FROM Students WHERE Dept LIKE '%SE%';

-- k
SELECT Id FROM Students WHERE Marks = (SELECT MIN(Marks) FROM Students);

-- l
SELECT Dept, AVG(Marks) AS AverageMarks FROM Students GROUP BY Dept;

-- m
SELECT Dept, COUNT(*) AS NumberOfStudents FROM Students GROUP BY Dept;

-- n
SELECT MAX(Marks) AS Second_Highest_Marks FROM Students WHERE Marks < (SELECT MAX(Marks) FROM Students);

-- o
SELECT ID, Marks FROM Students WHERE Marks = (SELECT MAX(Marks) FROM Students WHERE Marks < (SELECT MAX(Marks) FROM Students));

-- p
UPDATE Students SET Marks = 90 WHERE Name = 'C';

-- q
DELETE FROM Students WHERE Id = 5;

-- r
ALTER TABLE Students RENAME COLUMN Dept TO Department;

-- s
ALTER TABLE Students ADD (Age INT);

-- t
drop table Students;

-- Path: /home/farhan/Personal/nub-DBMS/assignments/2/studentsQuery.sql
Create Database Student;
Use Student;

## Analysing Data 
SELECT *  FROM student_dataset;

## Checking Count of Gender 
SELECT Gender, count(*) FROM student_dataset
GROUP BY Gender;

## Changing name 
Update student_dataset
Set Gender = 'F' WHERE Gender = 'Female';
Update student_dataset
Set Gender = 'M' WHERE Gender = 'Male';
SELECT *  FROM student_dataset;

##  Checking for null
SELECT *  FROM student_dataset
where Gender IS NULL;

## Checking Age Count 
SELECT age,COUNT(*) Count  FROM student_dataset
GROUP BY age
Order BY age desc;

## Adding new Column
Alter TABLE student_dataset
ADD Age_Group varchar(255);

SELECT *  FROM student_dataset;

update student_dataset
set Age_Group = 
CASE
    WHEN Age between 18 and 24 then 'A1'
	WHEN  Age  between 25 and 30 then 'A2'
	Else 'A3' 
 END;
 
SELECT Age_Group,COUNT(*) FROM Student_dataset
GROUP BY Age_Group;

## UNDerSTANDING COLUMns Distribution
SELECT * FROM INFORMATION_SCHEMA.columns WHERE table_name LIKE  'Student_Dataset';
 
SELECT `Academic Pressure`, COUNT(*) FROM Student_dataset
 GROUP BY `Academic Pressure`;
 
SELECT `Study Satisfaction`, COUNT(*) FROM Student_dataset
 GROUP BY `Study Satisfaction`;
 
SELECT `Sleep Duration`, COUNT(*) FROM Student_dataset
 GROUP BY `Sleep Duration`;
 
SELECT `Dietary Habits`, COUNT(*) FROM Student_dataset
 GROUP BY `Dietary Habits`;
 
SELECT `Have you ever had suicidal thoughts ?`, COUNT(*) FROM Student_dataset
 GROUP BY `Have you ever had suicidal thoughts ?`;
 
SELECT `Study Hours`, COUNT(*) FROM Student_dataset
 GROUP BY `Study Hours`;
 
 SELECT `Financial Stress`, COUNT(*) FROM Student_dataset
 GROUP BY `Financial Stress`;
 
 SELECT `Family History of Mental Illness`, COUNT(*) FROM Student_dataset
 GROUP BY `Family History of Mental Illness`;
 
 SELECT Depression, COUNT(*) FROM Student_dataset
 GROUP BY Depression;


SELECT * FROM Student_dataset;

## Adding Index Column and updating dipression column 

SELECT * FROM Student_dataset;

ALTER TABLE Student_dataset
ADD Index_Column int;
SET @row_number = 0;
UPDATE student_dataset
SET Index_Column = (@row_number := @row_number + 1);






 








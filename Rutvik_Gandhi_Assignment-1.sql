-- A1_SIS.sql
-- Assignment 1
-- Revision History:
-- Rutvik Gandhi, Section 3, 2023.01.26: Created

Print 'W23 PROG8080 Section 3';
Print 'Assignment 1';
Print '';
Print 'Rutvik Gandhi';
Print '';
Print GETDATE();
Print '';

USE SIS;

-- 1

Print 'List all data from the AcademicStatus table.';
Print '';

SELECT *
FROM AcademicStatus

-- 2

Print 'List number and academicStatusCode for all students who have been 
	discontinued. List the results in descending order by number.';
Print '';

SELECT number, academicStatuscode
FROM Student 
WHERE academicStatusCode = 'D' ORDER BY number DESC;

-- 3

Print 'List number and academicStatusCode for all students who have been 
	discontinued or suspended. List the results in ascending order by number. Use
	“<>“ operator as part of your solution. Do not use OR or NOT.';
print '';

SELECT number, academicStatusCode 
FROM student 
WHERE (academicStatusCode <> 'N') ORDER BY number ASC;


-- 4

Print 'List the province code the persons are from, but show each province code
	only once (i.e., no duplicates). List the results in descending order by 
	province code.';
Print '';

SELECT DISTINCT provinceCode 
FROM person ORDER BY provinceCode DESC;

-- 5

Print 'List the province code the persons are from (i.e., no duplicates) with 
	the NULL value excluded in the output.';
Print '';

SELECT DISTINCT provinceCode 
FROM person 
WHERE provinceCode IS NOT NULL;

-- 6

Print 'List number, last name, first name, city, and country for persons who 
	does not have a province code assigned.';
Print '';

SELECT number, lastname, firstname, city, countryCode 
FROM person 
WHERE provinceCode IS NULL;

-- 7

Print 'List number, last name, first name, city, and country for persons with 
	first name that starts with “AND” followed by any single character.';
Print '';

SELECT number, lastname, firstname, city, countryCode 
FROM person 
WHERE firstname LIKE 'AND_';

-- 8

Print 'List all data from the Program table with program name that starts with
	‘Computer’.';
Print '';

SELECT * 
FROM Program WHERE name LIKE 'Computer%';

-- 9

Print 'List the code, acronym and name of the programs with program name that 
	contains ‘coop’.';
Print '';

SELECT code, acronym, name 
FROM Program WHERE name LIKE '%coop%';

-- 10

Print 'List all data for students with final mark that is lower than 55. Do not
	display final mark that is zero.';
Print '';

SELECT * 
FROM CourseStudent 
WHERE finalmark < 55 AND finalmark !=0;

-- 11

Print 'List the number, capacity and memory of any room that has a capacity 
	greater than or equal to 40, is a lab, has computers with 4GB memory, 
	and is located at the Doon campus.';
Print '';

SELECT number, capacity, memory 
FROM room 
WHERE capacity >= 40 AND isLab = 1 AND memory = '4GB' AND campusCode = 'D';

-- 12

Print 'List all employees who teach in the School of Trades and Apprenticeship 
	and are located at the Doon, Guelph or Waterloo campus.';
Print '';

SELECT * 
FROM employee 
WHERE schoolCode = 'TAP' AND (campusCode = 'D' OR campusCode = 'G' OR campusCode = 'W');

-- 13

Print 'List the “last name” and the “user id” for all persons whose last name 
	starts with ‘J’. The user id consists of the first letter of the first name
		and the first seven letters of the last name, all in lower case. 
		Alias the user id ‘User ID’, and sort the results in descending ‘User ID’
		order. Use either LEFT() or SUBSTRING() as you wish.';
Print '';

SELECT lastname, CONCAT(LEFT(firstname, 1), LEFT(lastName, 7)) as 'user ID' 
FROM person 
WHERE lastname LIKE 'J%' ORDER BY 'User ID' DESC;

-- 14

Print 'List number, birth date aliased as ‘dob’, and calculated age aliased as 
	‘age’, for persons that are over 60 years old as of today. Use FORMAT() to 
	display ‘dob’ in the format similar to “January 01, 2022”. Use DATEDIFF() 
	to calculate the ‘age’.';
Print '';

SELECT number, FORMAT(birthdate, 'MMMM dd, yyyy') as dob, DATEDIFF(YEAR, birthdate, GETDATE()) as age 
FROM person 
WHERE DATEDIFF(YEAR, birthdate, GETDATE()) > 60;

-- 15

Print 'List number aliased as ‘Course Code’ and name aliased as ‘Course Name’ 
	for all courses that have the word ‘Game’ in their name. Use CHARINDEX() as
	part of your solution. Do not use LIKE.';
Print '';

SELECT number as 'Course Code', name as 'Course Name' 
FROM course 
WHERE CHARINDEX('Game', name) > 0;

-- 16

Print 'College management would like to see the new values that will result if 
	all incidental fees are increased by 10%. Show item aliased as ‘Incidental Fee Item’.
	Show amountPerSemester aliased as ‘Current Fee’. Use an expression to 
	calculate the increased fee and alias the output as ‘Increased Fee’. Order 
	the results in ascending order using the ‘Current Fee’ alias. Align the 
	output to two decimal places.';
Print '';

SELECT item as 'Incidental Fee Item',
CONVERT(DECIMAL(10,2),amountPerSemester) as 'Current Fee',
CONVERT(DECIMAL(10,2),amountPerSemester*1.1) as 'Increased Fee'
FROM IncidentalFee ORDER BY 'Current Fee' ASC;


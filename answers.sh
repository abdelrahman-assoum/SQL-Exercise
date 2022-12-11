basic queries

SELECT name
FROM students; 

SELECT * FROM students 
WHERE Age > 30 ;

SELECT name FROM students 
WHERE Gender='F' AND Age > 30 ;


SELECT Points FROM students 
WHERE name='Alex' ;

INSERT INTO students (id,name,Age,Gender,Points)
VALUES(7,'abd',18,'M',800);

UPDATE students
SET Points = Points + 50 
WHERE name = 'Basma';

UPDATE students
SET Points = Points - 100 
WHERE name = 'Alex';


CREATE TABLE graduates(
	ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL UNIQUE,
	Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT);
    
INSERT INTO graduates(Name, Age, Gender, Points)
    SELECT Name, Age, Gender, Points FROM students
    WHERE Name = "Layal";

UPDATE graduates
SET Graduation = "08/09/2018"
WHERE name="Layal";

DELETE FROM students
WHERE name="Layal";

CREATE TABLE table1 AS
	SELECT employees.Name, companies.Name, companies.Date
	FROM employees JOIN companies
	ON employees.Company = companies.Name;

SELECT Name FROM table1
WHERE Date < 2000;

SELECT Company FROM employees
WHERE Role = "Graphic Designer";

SELECT name,max(points)
FROM students

SELECT avg(points)
FROM students

SELECT count(points)
FROM students
WHERE Points = 500;

SELECT name
FROM students
WHERE name like'%s%';

SELECT * 
FROM students
ORDER by Points DESC;





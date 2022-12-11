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


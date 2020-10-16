# Basic Queries
CREATE TABLE "Students" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	PRIMARY KEY("Id")
);
INSERT INTO Students (Id,Name,Age,Gender,Points)
VALUES ( 1, "Basma" , 21 , "Female" , 15);
INSERT INTO Students (Id,Name,Age,Gender,Points)
VALUES ( 2, "Alex" , 18 , "male" , 22);
INSERT INTO Students (Id,Name,Age,Gender,Points)
VALUES ( 3, "Antoine" , 25 , "male" , 18);
INSERT INTO Students (Id,Name,Age,Gender,Points)
VALUES ( 4, "Jason" , 23 , "male" , 20);
INSERT INTO Students (Id,Name,Age,Gender,Points)
VALUES ( 5, "Layal" , 32 , "female" , 23);


SELECT Name FROM Students;
SELECT * FROM Students
WHERE (age >30);
SELECT * FROM Students
WHERE (age >30 and Gender="female");
SELECT Points from myTable
WHERE (id = 2);
INSERT INTO Students (Id , Name , Age , Gender , Points)
VALUES(6 , "Tony" , 25 , "male" , 70);
UPDATE Students SET points = Points + 10 WHERE id = 1;
UPDATE Students SET points = Points - 10 WHERE id = 2;

# Creating table 
CREATE TABLE "Graduates" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
    "Graduation" TEXT,
	PRIMARY KEY("Id")
);

INSERT INTO Graduates (Id, Name, Age , Gender , Points)
SELECT *
FROM Students
WHERE Id=5;
INSERT INTO Graduates (Graduation)
VALUES ("08/09/2018");
UPDATE Graduates SET Graduation = "08/09/2018" WHERE id=5;
DELETE FROM Students
WHERE id = 5;


# joins
SELECT empley.name, e.company, date
FROM employees as e JOIN companies as c on e.company = c.name;
SELECT * from companies
where (date < 2000);
SELECT * from employees
where (Role = "Graphic Designer");
CREATE TABLE "myTable" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT NOT NULL,
	"Points"	INTEGER NOT NULL,
	PRIMARY KEY("Id")
);
INSERT INTO myTable (Id,Name,Age,Gender,Points)
VALUES ( 1, "Basma" , 21 , "Female" , 15);
INSERT INTO myTable (Id,Name,Age,Gender,Points)
VALUES ( 2, "Alex" , 18 , "male" , 12);
INSERT INTO myTable (Id,Name,Age,Gender,Points)
VALUES ( 3, "Antoine" , 25 , "male" , 18);
INSERT INTO myTable (Id,Name,Age,Gender,Points)
VALUES ( 4, "Jason" , 23 , "male" , 20);
INSERT INTO myTable (Id,Name,Age,Gender,Points)
VALUES ( 5, "Jamie" , 22 , "female" , 30);

UPDATE myTable SET points = Points + 10 WHERE id = 1;
UPDATE myTable SET points = Points - 10 WHERE id = 2;
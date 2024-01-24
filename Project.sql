create database SchoolDB;

use SchoolDB
go

-- subject Table
Create Table Subjects 
(
 subjectId int primary key Identity (1,1),
 subjectName varchar(50),
 TeacherName varchar(50)
)

INSERT INTO Subjects
VALUES
 ( 'Mathematics','Pushpa'),
 ( 'Science','Lakshay'),
 ( 'Telugu','Shrivali'),
 ( 'English','Justin'),
 ( 'Computer Science','Elon')
--Classes Table

Create Table Classes 
(
 ClassId int primary key Identity (1,1),
 ClassName varchar(50),
 ClassFloor int
)

INSERT INTO Classes 
VALUES
 ('Class 1',0),
 ('Class 2',0),
 ('Class 3',1),
 ('Class 4',1),
 ('Class 5',2),
 ('Class 6',2),
 ('Class 7',2)

--Student Table
create Table Student
(
 RollNo int primary key Identity (1,1),
 studentName varchar(50),
 classId int foreign key references Classes(ClassId),
 subjectId int foreign key references Subjects(subjectId) 
)

INSERT into Student 
Values 
('Salman',3,1),
('Shahrukh',1,4),
('Abhishek',2,3),
('Ranbir Kapoor',4,1),
('Ranveer Singh',7,5),
('Shahid Kapoor',5,3),
('Hritik Roshan',6,4),
('Amir Khan',7,2)

--printing Values
select * from Subjects
select * from Classes
select * from Student
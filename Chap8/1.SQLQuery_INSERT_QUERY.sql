/*
INSERT INTO target_table(column_list)
query
CREATE TABLE IT_Student (
PK_ITStudents VARCHAR(20) PRIMARY KEY, 
FirstName NVARCHAR(20),
MidName NVARCHAR(20),
LastName NVARCHAR(20),
BirthDate DATE,
Major NVARCHAR(20)

)*/
INSERT INTO IT_Student (PK_ITStudents,FirstName,MidName,LastName,BirthDate,Major)
SELECT StudentId,FirstName,MidName,LastName,BirthDate,Major FROM Students WHERE Major = 'CNTT'
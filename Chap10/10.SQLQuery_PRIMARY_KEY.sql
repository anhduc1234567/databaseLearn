--KHÓA CHÍNH PRIMARY KEY
/*CREATE TABLE table_name(
    PK_column data_type PRIMARY KEY,
    other_column....
);*/
/*
CREATE TABLE table_name(
    PK_column1 data_type,
    PK_column2 data_type,
    other_column....
    PRIMARY KEY(PK_column1, PK_column2)
);
*/
/*
KHóa chính gồm 1 cột
CREATE TABLE Activities (
	PK_Acitivies INT PRIMARY KEY IDENTITY(100,1),
	Name NVARCHAR(200),
	Start DATE,
)*/
--Khóa chính 2 cột
CREATE TABLE Participants ( 
	Id_Participants VARCHAR(20) PRIMARY KEY ,
	Id_Activity INT IDENTITY(100,1),
	Name NVARCHAR(20),
	JoinAt DATE,
	--PRIMARY KEY(Id_Participants,Id_Activity
)
/*ALTER TABLE Participants
ALTER COLUMN 
	Id_Participants VARCHAR(20) PRIMARY KEY*/
--DROP TABLE Participants
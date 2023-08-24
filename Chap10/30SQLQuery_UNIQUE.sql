--ràng buộc UNIQUE
/*CREATE TABLE Person(
    Id VARCHAR(30) PRIMARY KEY,
    FirstName NVARCHAR(30),
    LastName NVARCHAR(30),
    PhoneNumber VARCHAR(20) UNIQUE,
    Regular NVARCHAR(200)
	CONSTRAINT name_constraint UNIQUE(column,..)
);*/
--ALTER TABLE Person
--Thêm vào có sẵn 
/*
ALTER TABLE table_name
ADD CONSTRAINT constraint_name UNIQUE(columns);*/
-- XÓA constraint 
/*
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;*/

DROP CONSTRAINT UQ__Person__85FB4E38A40D6CCF
INSERT INTO 
    Person(Id, FirstName, LastName, PhoneNumber, Regular)
VALUES
    ('T006', N'Nam', N'Trần', '0934123120', 'SQL')
    
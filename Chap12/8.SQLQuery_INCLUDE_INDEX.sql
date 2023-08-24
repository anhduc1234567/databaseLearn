/*CREATE [UNIQUE] INDEX index_name 
ON table_name(key_column_list) 
INCLUDE(included_column_list);*/
--CREATE NONCLUSTERED INDEX IX_FirstName
--ON Students(FirstName) INCLUDE(StudentId,LastName,Major,Address)
SELECT StudentId,FirstName,LastName,Major,Address FROM Students WHERE FirstName LIKE '%n%'
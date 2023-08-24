/*EXEC sp_rename 
    index_name, 
    new_index_name, 
    N'INDEX';*/
	EXEC sp_rename
	N'dbo.Students.IX_phonenumber',
	N'IX_newphonenumber',
	N'INDEX'
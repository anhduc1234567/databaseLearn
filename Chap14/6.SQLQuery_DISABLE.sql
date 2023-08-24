--Vô hiệu hóa trigger
/*

DISABLE TRIGGER [schema_name.][trigger_name]
ON [object_name | DATABASE | ALL SERVER]

*/
DISABLE TRIGGER [TR_Subject_update]
ON Subjects
INSERT INTO Subjects(SubjectId, Name, Credit, NumOfLesson, Type) 
VALUES('SUBJ1213', N'Xác xuất thống kê', 3, 36, N'Cơ sở ngành');
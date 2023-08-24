--ĐỔI TÊN VIEW
--Lưu ý rằng khi đổi tên một view, tất cả các tham chiếu liên quan tới view bị đổi tên sẽ bị mất do view đã đổi sang tên khác.
/*EXEC sp_rename
@objname = 'old_name',
@newname= 'new_name';*/
/*EXEC sp_rename
@objname = 'SubjectsInfo',
@newname= 'view_SubjectsInfo';*/
SELECT * FROM SubjectsInfo
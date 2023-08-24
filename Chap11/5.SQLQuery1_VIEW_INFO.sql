-- Lấy thông tin VIEW
--Cách 1:
--SELECT definition FROM sys.sql_modules WHERE object_id = OBJECT_ID('[dbo].[ManagerAndStaff]')
--Cachs2:
EXEC sp_helptext 'dbo.view_SubjectsInfo';
--Cách 3:
/*SELECT 
    OBJECT_DEFINITION(
    OBJECT_ID(
        'dbo.view_SubjectsInfo'
    )
    ) view_info;*/
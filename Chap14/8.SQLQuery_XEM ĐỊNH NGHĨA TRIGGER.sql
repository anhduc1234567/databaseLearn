--XEM ĐỊNH NGHĨA TRIGGER
--CÁCH 1:
/*SELECT
    definition
FROM
    sys.sql_modules
WHERE 
    object_id = OBJECT_ID('[TR_Student_update]'); -- truyền tên trigger vào trong hàm OBJECT_ID()
	*/
--Cách 2
/*
SELECT 
    OBJECT_DEFINITION (
        OBJECT_ID(
            'TR_Student_update'
        )
    ) AS trigger_definition;*/
--cách3
EXEC sp_helptext TR_Student_update
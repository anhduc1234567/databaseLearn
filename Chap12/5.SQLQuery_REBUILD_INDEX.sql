-- Kích hoạt INDEXX
/*
ALTER INDEX index_name -- tên chỉ mục cần rebuild
ON table_name -- tên bảng mà chỉ mục gắn vào
REBUILD;*/
--ALTER INDEX ALL ON Students REBUILD
--C2
/*
DBCC DBREINDEX (table_name, index_name);
-- để kích hoạt lại toàn bộ các index trong bảng:
DBCC DBREINDEX (table_name, " ");*/
--DBCC DBREINDEX(Students, PK_Student)
SELECT * FROM Students
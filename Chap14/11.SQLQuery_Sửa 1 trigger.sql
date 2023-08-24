--Sửa đổi trigger DML
ALTER TRIGGER [schema_name.]trigger_name 
ON ( table | view ) 
[ WITH <dml_trigger_option> [ ,...n ] ] 
( FOR | AFTER | INSTEAD OF ) 
{ [ DELETE ] [ , ] [ INSERT ] [ , ] [ UPDATE ] } 
[ NOT FOR REPLICATION ] 
AS { sql_statements };
-- ddl trigger
ALTER TRIGGER trigger_name 
ON { DATABASE | ALL SERVER } 
[ WITH <ddl_trigger_option> [ ,...n ] ] 
{ FOR | AFTER } { event_type [ ,...n ] | event_group } 
AS { sql_statements }
/*SELECT 
    s.name AS schema_name, 
    u.name AS schema_owner
FROM 
    sys.schemas s
INNER JOIN sys.sysusers u ON u.uid = s.principal_id
ORDER BY 
    s.name;*/
--CREATE SCHEMA event
/*CREATE TABLE event.newEvent (
	PK_eventId INT PRIMARY KEY IDENTITY(100, 3),
    Name NVARCHAR(200),
    StartAt DATETIME,
    EndAt DATETIME
)*/
INSERT INTO event.newEvent(Name,StartAt,EndAt) 
VALUES ('Sale 6/6','2023-6-6 01:00:00','2023-6-6 23:59:59'),
	  ('Sale 8/8','2023-8-8 01:00:00','2023-8-8 23:59:59')

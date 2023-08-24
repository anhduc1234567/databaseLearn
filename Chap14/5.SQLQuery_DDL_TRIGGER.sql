/*
CREATE TRIGGER trigger_name
ON {DATABASE | ALL SERVER}
[WITH ddl_trigger_option]
FOR {event_type | event_group}
AS {sql_statement}
*/

--1.Hãy tạo một DDL trigger giám sát sự thay đổi của các bảng trong DB của bạn với các sự kiện CREATE_TABLE, ALTER_TABLE, DROP_TABLE.
/*
CREATE TABLE TableChangeLogs (
	TableChangeLogsId INT IDENTITY PRIMARY KEY,
	[EventData] XML NOT NULL,
	ChangeBy SYSNAME NOT NULL
)*/

/*CREATE TRIGGER RR_TableChangeLogs
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS BEGIN
	INSERT INTO TableChangeLogs(
	[EventData],ChangeBy
	)
	VALUES (EVENTDATA(),USER);
END*/
--CREATE TABLE TestTable1(Id INT PRIMARY KEY IDENTITY);
--CREATE TABLE TestTable2(Id INT PRIMARY KEY IDENTITY);
-------------------------------------------------------
--VD2 Hãy tạo một DDL trigger giám sát sự thay đổi của các view trong DB của bạn với các sự kiện CREATE_VIEW, ALTER_VIEW, DROP_VIEW.
/*CREATE TABLE ViewChangeLogs (
	ViewChangeLogsId INT IDENTITY PRIMARY KEY,
	[EventData] XML NOT NULL,
	ChangeBy SYSNAME NOT NULL
)*/
/*CREATE TRIGGER TR_ViewChangeLogs
ON DATABASE
FOR CREATE_VIEW, ALTER_VIEW, DROP_VIEW
AS BEGIN
	SET NOCOUNT ON;
	INSERT INTO ViewChangeLogs(
	[EventData],ChangeBy
	)
	VALUES (EVENTDATA(),USER);
END*/
/*
CREATE OR ALTER VIEW vw_StudentsInfo1
AS
SELECT * FROM Students;*/
------------------------------------------------
--VD3:Hãy tạo một DDL trigger giám sát sự thay đổi của các trigger trong DB của bạn với các sự kiện CREATE_TRIGGER, ALTER_TRIGGER, DROP_TRIGGER
/*CREATE TABLE TriggerChangeLogs (
	TriggerChangeLogs INT IDENTITY PRIMARY KEY,
	[EventData] XML NOT NULL,
	ChangeBy SYSNAME NOT NULL
)*/
/*
CREATE TRIGGER TR_TriggerChangeLogs
ON DATABASE
FOR  CREATE_TRIGGER, ALTER_TRIGGER, DROP_TRIGGER
AS BEGIN
	SET NOCOUNT ON;
	INSERT INTO TriggerChangeLogs(
	[EventData],ChangeBy
	)
	VALUES (EVENTDATA(),USER);
END*/
-----------------------------
--VD4:Hãy tạo một DDL trigger giám sát sự thay đổi index trong DB của bạn với các sự kiện CREATE_INDEX, ALTER_INDEX, DROP_INDEX.
/*CREATE TABLE IndexChangeLogs (
	TriggerChangeLogs INT IDENTITY PRIMARY KEY,
	[EventData] XML NOT NULL,
	ChangeBy SYSNAME NOT NULL
)*/
/*
CREATE TRIGGER TR_IndexChangeLogs
ON DATABASE
FOR CREATE_INDEX, ALTER_INDEX, DROP_INDEX
AS BEGIN
	SET NOCOUNT ON;
	INSERT INTO IndexChangeLogs(
	[EventData],ChangeBy
	)
	VALUES (EVENTDATA(),USER);
END*/





USE [shotski]
GO

CREATE TRIGGER Users_Create
ON Users
AFTER INSERT 
AS
	EXEC dbo.cf_Role_Create
		@user = [name],
		@type = 'user'
GO
USE [shotski]
GO

CREATE TRIGGER Users_Delete
ON Users
AFTER DELETE
AS
	EXEC dbo.cf_Role_Delete_ByUser @user = name
GO
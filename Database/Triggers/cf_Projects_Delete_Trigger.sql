USE [clankyfoot]
GO

CREATE TRIGGER cf_Projects_Delete_Trigger
ON Projects
AFTER DELETE
AS
	DELETE FROM Project_Members
	WHERE Projects.name = Project_Members.project_name

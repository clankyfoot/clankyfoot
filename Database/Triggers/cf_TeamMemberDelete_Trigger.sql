USE [clankyfoot]
GO

CREATE TRIGGER TeamMemberDelete
ON TeamMember
AFTER DELETE
AS
	DELETE FROM Projects
	WHERE Project_Members.team_member_id = TeamMember.id
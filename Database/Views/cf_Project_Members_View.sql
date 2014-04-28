USE [clankyfoot]
GO

CREATE VIEW ProjectTeamView
AS
SELECT 
	j.name AS [name] -- NAME OF TEAM MEMBER
FROM Project_Members i
INNER JOIN TeamMember j ON i.team_member_id = j.id
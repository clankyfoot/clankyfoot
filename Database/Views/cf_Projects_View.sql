USE [clankyfoot]
GO

CREATE VIEW cf_Projects_View
AS 
SELECT i.name as [proejct_name], i.date_created, j.name as [team_lead_name]
FROM Projects i
INNER JOIN TeamMember j ON i.team_lead_id = j.id
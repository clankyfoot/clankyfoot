USE [clankyfoot]
GO

CREATE TABLE Project_Members
(
	id INT IDENTITY(1,1),
	project_name VARCHAR(300),
	team_member_id INT,
	CONSTRAINT Pk_Project_Members_id PRIMARY KEY ([id]),
	CONSTRAINT Pk_Project_Member_project_name FOREIGN KEY ([project_name]) REFERENCES Projects([name]),
	CONSTRAINT Fk_Project_Members_team_member_id FOREIGN KEY ([team_member_id]) REFERENCES TeamMember([id])
)
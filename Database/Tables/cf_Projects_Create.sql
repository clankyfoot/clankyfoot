USE [clankyfoot]
GO

CREATE TABLE Projects
(
	id INT IDENTITY(1,1),
	name VARCHAR(300),
	date_created DATETIME,
	team_lead_id INT,
	CONSTRAINT Pk_Projects_name PRIMARY KEY ([name]),
	CONSTRAINT Fk_Projects_team_lead_id FOREIGN KEY ([team_lead_id]) REFERENCES TeamMember([id])
);
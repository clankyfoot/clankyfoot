USE [clankyfoot]
GO

CREATE TABLE TeamMember
(
	id INT IDENTITY(1,1),
	name VARCHAR(100) NOT NULL,
	email VARCHAR(300),
	position VARCHAR(100) NOT NULL,
	date_created DATETIME,
	CONSTRAINT Uq_TeamMember_email UNIQUE ([email]),
	CONSTRAINT Pk_TeamMember_id PRIMARY KEY ([id])
);
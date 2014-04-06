USE [shotski]
GO

CREATE TABLE Role_Type
(
	id INT IDENTITY(1,1),
	[type] VARCHAR(50),
	CONSTRAINT Pk_Role_Type_type PRIMARY KEY ([type])
)
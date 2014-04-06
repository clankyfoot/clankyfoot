USE [shotski]
GO

CREATE TABLE Roles
(
	id INT IDENTITY(1,1),
	role_type VARCHAR(50),
	[user_name] VARCHAR(300),
	CONSTRAINT Fk_Roles_Users_user_name FOREIGN KEY ([user_name]) REFERENCES Users([name])
)
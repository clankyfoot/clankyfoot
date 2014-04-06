USE [shotski]
GO

CREATE TABLE Users
(
	id INT IDENTITY(1,1),
	name VARCHAR(300),
	email VARCHAR(300) UNIQUE, 
	phone VARCHAR(50),
	[password] VARCHAR(MAX),
	salt VARCHAR(50),
	last_login DATETIME,
	last_login_attempt DATETIME,
	last_password_change DATETIME,
	active VARCHAR(1) DEFAULT 'Y'
	CONSTRAINT Pk_Users_name PRIMARY KEY (name)
)
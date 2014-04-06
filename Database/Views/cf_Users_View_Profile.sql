USE [shotski]
GO

CREATE VIEW cf_Users_View_Profile AS
	SELECT 
		name, 
		email,
		phone,
		last_login
	FROM 
		Users
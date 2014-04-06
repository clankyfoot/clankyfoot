USE [shotski]
GO

CREATE VIEW cf_Users_View_Admin AS
	SELECT 
		name, 
		email,
		phone,
		last_login,
		last_login_attempt,
		active
	FROM 
		Users
USE [shotski]
GO

IF(OBJECT_ID('cf_Users_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Users_Create
END
GO
/*
	RETURNS...
		0. if name, email, salt, or password were null
*/
CREATE PROCEDURE cf_Users_Create
	@name VARCHAR(300), -- REQUIRED
	@email VARCHAR(300), -- REQUIRED
	@phone VARCHAR(50), -- NOT REQUIRED
	@password VARCHAR(MAX), -- REQUIRED
	@salt VARCHAR(50) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0

	IF(@name IS NOT NULL AND @email IS NOT NULL AND @password IS NOT NULL)
	BEGIN TRY
		IF(@phone IS NULL)
		BEGIN
			SET @phone = ''
		END
		INSERT INTO Users (name, email, phone, [password], salt, last_login, last_login_attempt, last_password_change, active)
		VALUES (@name, @email, @phone, @password, @salt, GETDATE(), GETDATE(), GETDATE(), 'Y')
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO
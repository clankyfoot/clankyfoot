USE [shotski]
GO

IF(OBJECT_ID('cf_Users_Update_Password_ByName') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Users_Update_Password_ByName
END
GO
/*
	RETURNS...
		0. if name, email, salt, or password were null
*/
CREATE PROCEDURE cf_Users_Update_Password_ByName
	@name VARCHAR(300), -- REQUIRED
	@password VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0

	IF(@name IS NOT NULL AND @password IS NOT NULL)
	BEGIN TRY
		UPDATE Users
		SET [password] = @password
		WHERE name = @name

		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO
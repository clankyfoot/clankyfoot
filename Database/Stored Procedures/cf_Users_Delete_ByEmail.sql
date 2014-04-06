USE [shotski]
GO

IF(OBJECT_ID('cf_Users_Delete_ByEmail') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Users_Delete_ByEmail
END
GO
/*
	RETURNS...
		0. if name, email, salt, or password were null
*/
CREATE PROCEDURE cf_Users_Delete_ByEmail
	@email VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0

	IF(@email IS NOT NULL)
	BEGIN TRY
		DELETE FROM Users
		WHERE email = @email

		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO
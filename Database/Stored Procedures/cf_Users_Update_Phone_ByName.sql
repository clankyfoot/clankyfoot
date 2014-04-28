USE [clankyfoot]
GO

IF(OBJECT_ID('cf_Users_Update_Phone_ByName') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Users_Update_Phone_ByName
END
GO
/*
	RETURNS XML with the following values
		0. if name, email, salt, or password were null
*/
CREATE PROCEDURE cf_Users_Update_Phone_ByName
	@name VARCHAR(300), -- REQUIRED
	@phone VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON

	IF(@name IS NOT NULL AND @phone IS NOT NULL)
	BEGIN TRY
		UPDATE Users
		SET phone = @phone
		WHERE name = @name

		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
		PRINT ERROR_MESSAGE()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO
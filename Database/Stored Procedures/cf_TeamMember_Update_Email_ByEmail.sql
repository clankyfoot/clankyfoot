USE [clankyfoot]
GO
IF(OBJECT_ID('cf_TeamMember_Update_Email_ByEmail') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_TeamMember_Update_Email_ByEmail
END
GO

CREATE PROCEDURE cf_TeamMember_Update_Email_ByEmail
	@oldEmail VARCHAR(300), -- REQUIRED
	@newEmail VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON
	
	BEGIN TRY
		UPDATE TeamMember
		SET email = @newEmail
		WHERE email = @oldEmail

		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_MESSAGE()
		PRINT ERROR_MESSAGE()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO
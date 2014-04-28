USE [clankyfoot]
GO
IF(OBJECT_ID('cf_TeamMember_Update_Email_ById') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_TeamMember_Update_Email_ById
END
GO

CREATE PROCEDURE cf_TeamMember_Update_Email_ById
	@id INT, -- REQUIRED
	@email VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	BEGIN TRY
		UPDATE TeamMember
		SET email = @email
		WHERE id = @id
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_MESSAGE()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO
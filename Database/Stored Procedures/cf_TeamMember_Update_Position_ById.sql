USE [clankyfoot]
GO
IF(OBJECT_ID('cf_TeamMember_Update_Position_ById') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_TeamMember_Update_Position_ById
END
GO
/*
	RETURNS...
		1. SUCCESSFULL
		/// <summary>
        /// Updates a Team Member Postion
        /// <param name="id">id of the Team Member</param>
        /// <param name="position">new position of the user</param>
        /// </summary>
*/
CREATE PROCEDURE cf_TeamMember_Update_Position_ById
	@id INT, -- REQUIRED
	@position VARCHAR(100) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON
	BEGIN TRY
		UPDATE TeamMember
		SET position = @position
		WHERE id = @id
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
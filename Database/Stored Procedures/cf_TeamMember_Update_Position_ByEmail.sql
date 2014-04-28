USE [clankyfoot]
GO

IF(OBJECT_ID('cf_TeamMember_Update_Position_ByEmail') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_TeamMember_Update_Position_ByEmail
END
GO
/*
	RETURNS...
		1. SUCCESSFULL
		/// <summary>
        /// Updates a Team Member Position
        /// <param name="email">email of the team member</param>
        /// <param name="position">new position of the team member</param>
        /// </summary>
*/
CREATE PROCEDURE cf_TeamMember_Update_Position_ByEmail
	@email VARCHAR(300), -- REQUIRED
	@position VARCHAR(100) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON
	BEGIN TRY
		UPDATE TeamMember
		SET position = @position
		WHERE email = @email
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
USE [clankyfoot]
GO

IF(OBJECT_ID('cf_TeamMember_Update_Name_ById') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_TeamMember_Update_Name_ById
END
GO
/*
	RETURNS...
		0. if no changes occured
		1. SUCCESSFULL
		/// <summary>
        /// Updates a Team member's name
        /// <param name="id">id of the team member to change</param>
        /// <param name="name">new name of the team member</param>
        /// </summary>
*/
CREATE PROCEDURE cf_TeamMember_Update_Name_ById
	@id INT, -- REQUIRED
	@name VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	BEGIN TRY
		UPDATE TeamMember
		SET name = @name
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
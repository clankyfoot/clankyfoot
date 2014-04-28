USE [clankyfoot]
GO

IF(OBJECT_ID('cf_Project_Members_Delete_ByMemberId') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Project_Members_Delete_ByMemberId
END
GO
/*
	RETURNS...
		0. If no changes occured. 
			No members exited with that id
		1. SUCCESSFULL
		/// <summary>
        /// Removes a team member from a project
        /// <param name="id">id of the team member to be removed</param>
        /// </summary>
*/
CREATE PROCEDURE cf_Project_Members_Delete_ByMemberId
	@id INT -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON

	BEGIN TRY
		DELETE FROM Project_Members
		WHERE team_member_id = @id
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
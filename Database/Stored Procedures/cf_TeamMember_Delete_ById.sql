USE [clankyfoot]
GO
IF(OBJECT_ID('cf_TeamMember_Delete_ById') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_TeamMember_Delete_ById
END
GO
/*
	RETURNS...
		0. No member with that ID existed
		1. SUCCESSFULL
		/// <summary>
        /// Deletes a team member completely
        /// <param name="id">id of the Team Memember to be deleted</param>
        /// </summary>
*/
CREATE PROCEDURE cf_TeamMember_Delete_ById
	@id INT -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON
	
	BEGIN TRY
		EXEC @RETURN = cf_Project_Members_Delete_ByMemberId
							@id = @id
		
		DELETE FROM TeamMember
		WHERE id = @id
		
		IF(@RETURN = 1)
		BEGIN
			SET @RETURN = 1
		END
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
		PRINT ERROR_MESSAGE()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO
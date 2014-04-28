USE [clankyfoot]
GO
IF(OBJECT_ID('cf_TeamMember_Delete_ByEmail') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_TeamMember_Delete_ByEmail
END
GO
/*
	RETURNS..
		0. the member with that email did not exist
		1. SUCCESSFULL
		/// <summary>
        /// Deletes a team member completely
        /// <param name="email">email of Team Member to be deleted</param>
        /// </summary>
*/	
CREATE PROCEDURE cf_TeamMember_Delete_ByEmail
	@email VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON
	
	BEGIN TRY
		DECLARE @member_id INT
		SET @member_id = (SELECT TOP 1 [id] FROM TeamMember WHERE email = @email)

		EXEC @RETURN = cf_Project_Members_Delete_ByMemberId
							@id = @member_id

		DELETE FROM TeamMember
		WHERE email = @email

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
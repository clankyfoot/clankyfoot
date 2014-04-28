USE [clankyfoot]
GO

IF(OBJECT_ID('cf_Project_Members_Delete_ById') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Project_Members_Delete_ById
END
GO
/*
	RETURNS...
		0. if no changes occured
		1. SUCCESSFULL
		/// <summary>
        /// Deletes a project member
        /// <param name="id">identity ID of the team member</param>
        /// </summary>
*/
CREATE PROCEDURE cf_Project_Members_Delete_ById
	@id INT -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0

	SET NOCOUNT ON
	BEGIN TRY
		DELETE FROM Project_Members
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
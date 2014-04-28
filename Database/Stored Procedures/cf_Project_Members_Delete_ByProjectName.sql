USE [clankyfoot]
GO

IF(OBJECT_ID('cf_Project_Members_Delete_ByProjectName') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Project_Members_Delete_ByProjectName
END
GO
/*
	RETURNS..	
		0. no changes occured
		1. SUCCESSFULL

		/// <summary>
        /// Deletes a project
        /// <param name="project_name">name of the project to be deleted</param>
        /// </summary>
*/

CREATE PROCEDURE cf_Project_Members_Delete_ByProjectName
	@project_name VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON
	BEGIN TRY
		DELETE FROM Project_Members
		WHERE project_name = @project_name

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
USE [clankyfoot]
GO
IF(OBJECT_ID('cf_Projects_Delete_ById') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Projects_Delete_ById
END
GO
/*
	RETURNS...
		0. no changes were made
		1. SUCCCESSFULL
		/// <summary>
        /// Deletes a project
        /// <param name="id">id of the project to be deleted</param>
        /// </summary>
*/
CREATE PROCEDURE cf_Projects_Delete_ById
	@id INT -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON

	BEGIN TRY
		DECLARE @name VARCHAR(300)
		SET @name = (SELECT TOP 1 name FROM Projects WHERE id = @id)

		DELETE FROM Projects
		WHERE id = @id

		EXEC @RETURN = cf_Project_Members_Delete_ByProjectName
						@project_name = @name
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
		PRINT ERROR_MESSAGE()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO
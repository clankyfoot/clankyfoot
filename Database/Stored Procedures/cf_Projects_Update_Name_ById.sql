USE [clankyfoot]
GO
IF(OBJECT_ID('cf_Projects_Update_Name_ById') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Projects_Update_Name_ById
END
GO
/*
	RETURNS...
		0. no changes were made
		1. SUCCESSFULL
		/// <summary>
        /// updates a project name
        /// <param name="id">id of the project</param>
        /// <param name="name">new project name</param>
        /// </summary>
*/
CREATE PROCEDURE cf_Projects_Update_Name_ById
	@id INT, -- REQUIRED
	@name VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON 
	BEGIN TRY
		DECLARE @oldName VARCHAR(300)
		SET @oldName = (SELECT TOP 1 [name] FROM Projects WHERE id = @id)

		UPDATE Projects
		SET name = @name
		WHERE id = @id

		EXEC @RETURN = cf_Project_Members_Update_ProjectName_ByName
							@project_name = @name, @old_name = @oldName
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
		PRINT ERROR_MESSAGE()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO
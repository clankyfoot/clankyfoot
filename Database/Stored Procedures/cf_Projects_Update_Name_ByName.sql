USE [clankyfoot]
GO
IF(OBJECT_ID('cf_Projects_Update_Name_ByName') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Projects_Update_Name_ByName
END
GO
/*
	RETURNS...
		0. no changes occured
		/// <summary>
        /// Updates a project name
        /// <param name="oldName">old project name</param>
        /// <param name="newName">new project name</param>
        /// </summary>
*/
CREATE PROCEDURE cf_Projects_Update_Name_ByName
	@oldName VARCHAR(300), -- REQUIRED
	@newName VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON 
	BEGIN TRY
		UPDATE Projects
		SET name = @newName
		WHERE name = @oldName
		
		EXEC @RETURN = cf_Project_Members_Update_ProjectName_ByName
						@project_name = @newName, @old_name = @oldName
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
		PRINT ERROR_MESSAGE()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO
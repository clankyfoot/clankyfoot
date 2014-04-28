USE [clankyfoot]
GO
IF(OBJECT_ID('cf_Project_Members_Update_ProjectName_ByName') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Project_Members_Update_ProjectName_ByName
END
GO
/*
	RETURNS...
		0. no changes were made
		1. SUCCESSFULL
*/
CREATE PROCEDURE cf_Project_Members_Update_ProjectName_ByName
	@project_name VARCHAR(300), -- REQUIRED
	@old_name VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON

	BEGIN TRY
		UPDATE Project_Members
		SET project_name = @project_name
		WHERE project_name = @old_name

		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
		PRINT ERROR_NUMBER()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO
USE [clankyfoot]
GO
IF(OBJECT_ID('cf_Project_Delete_ByName') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Project_Delete_ByName
END
GO
/*
	RETURNS...
		0. no changes were mades
		1. SUCCESSFULL

*/
CREATE PROCEDURE cf_Project_Delete_ByName
	@name VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON
	BEGIN TRY
		EXEC @RETURN = cf_Project_Members_Delete_ByProjectName
						@project_name = @name

		DELETE FROM Projects
		WHERE Projects.name = @name

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
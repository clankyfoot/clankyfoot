USE [clankyfoot]
GO

IF(OBJECT_ID('cf_Project_Delete_ById') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Project_Delete_ById
END
GO
/*
	RETURNS...
		1. IF THE PROCEDURE WAS SUCCESSFULL 
*/
CREATE PROCEDURE cf_Project_Delete_ById
	@id INT -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON 

	BEGIN TRY
		DECLARE @name VARCHAR(300)
		SET @name = (SELECT TOP 1 [name] FROM Projects WHERE id = @id)

		EXEC @RETURN = cf_Project_Members_Delete_ByProjectName
						@project_name = @name

		DELETE FROM Projects
		WHERE Projects.id = @id
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
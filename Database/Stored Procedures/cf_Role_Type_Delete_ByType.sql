USE [shotski]
GO

IF(OBJECT_ID('cf_Role_Type_Delete_ByType') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Role_Type_Delete_ByType
END
GO
/*
	RETURNS...
		0. if the type parameter was null or empty
*/
CREATE PROCEDURE cf_Role_Type_Delete_ByType
	@type VARCHAR(300)
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@type IS NOT NULL)
	BEGIN TRY
		DELETE FROM Role_Type 
		WHERE [type] = @type
		SET @RETURN = 0
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO
USE [shotski]
GO
IF(OBJECT_ID('cf_Role_Type_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Role_Type_Create
END
GO
/*
	RETURNS...
		0. if the type parameter was null or empty
*/
CREATE PROCEDURE cf_Role_Type_Create
	@type VARCHAR(300)
AS
BEGIN
	SET NOCOUNT ON -- don't count rows effected
	DECLARE @RETURN INT
	SET @RETURN = 0
	
	IF(@type IS NOT NULL)
	BEGIN TRY
		INSERT INTO Role_Type ([type]) VALUES (@type)
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO
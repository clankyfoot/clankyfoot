USE [shotski]
GO

IF(OBJECT_ID('cf_Role_Delete_ByUser') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Role_Delete_ByUser
END
GO
/*
	RETURNS...
		0. if the type parameter was null or empty
*/
CREATE PROCEDURE cf_Role_Delete_ByUser
	@user VARCHAR(300)
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@user IS NOT NULL)
	BEGIN TRY
		INSERT INTO Roles ([user_name])
		VALUES (@user)
		SET @RETURN = 0
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO
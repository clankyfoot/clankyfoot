USE [shotski]
GO

IF(OBJECT_ID('cf_Role_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Role_Create
END
GO
/*
	RETURNS...
		0. if the type parameter was null or empty
*/
CREATE PROCEDURE cf_Role_Create
	@user VARCHAR(300),
	@type VARCHAR(300)
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@type IS NOT NULL AND @user IS NOT NULL)
	BEGIN TRY
		INSERT INTO Roles (role_type, [user_name])
		VALUES (@type, @user)
		SET @RETURN = 0
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO
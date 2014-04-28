USE [clankyfoot]
GO

IF(OBJECT_ID('cf_TeamMember_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_TeamMember_Create
END
GO
/*
	RETURNS...
		1. IF THE PROCEDURE WAS SUCCESSFUL
		2627. 'Violation of UNIQUE KEY constraint 'Uq_TeamMember_email'. Cannot insert duplicate key in object 'dbo.TeamMember'.
		/// <summary>
        /// Creates a team member
        /// <param name="name">name of the team member</param>
        /// <param name="email">email of the team member</param>
        /// <param name="position">position of the team member</param>
        /// </summary>
*/
CREATE PROCEDURE cf_TeamMember_Create
	@name VARCHAR(100), -- REQUIRED
	@email VARCHAR(300), -- REQUIRED
	@position VARCHAR(100) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON 
	BEGIN TRY
		INSERT INTO TeamMember (name, email, position, date_created)
		VALUES (@name, @email, @position, CONVERT(date, GETDATE()))
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
		PRINT ERROR_MESSAGE()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO
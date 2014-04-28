USE [clankyfoot]
GO

IF(OBJECT_ID('cf_value_to_xml') IS NOT NULL)
BEGIN
	DROP FUNCTION cf_value_to_xml
END
GO
/*
	CONVERTS the value into a xml format
*/
CREATE FUNCTION cf_value_to_xml(@value INT) 
RETURNS @table TABLE
(
	[xml] XML
)
AS
BEGIN
	INSERT INTO @table ([xml])
	VALUES ('<root><values><item>' + CAST(@value AS VARCHAR) + '</item></values></root>')
  
	RETURN
END
GO

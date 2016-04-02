SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fun_CheckNLPhoneNumber] (@phone NVARCHAR(255))
	RETURNS NVARCHAR(255)
	AS
BEGIN --function
	DECLARE @i INT, @repCount INT
	DECLARE @current_char CHAR(1)
	DECLARE @phone_new VARCHAR(255)

SET @phone_new = RTRIM(LTRIM(@phone))

-- Parse the phone number to clean out all non-numerics

SET @i = LEN(@phone)
SET @repCount = 1
WHILE @i > 0
BEGIN
	SET @current_char = SUBSTRING(@phone_new, @repcount, 1)
	IF (ISNUMERIC(@current_char) <> 1 
		OR @current_char = '$' 
		OR @current_char = '+' 
		OR @current_char = ','
		OR @current_char = '-'
		OR @current_char = '.'
		OR @current_char = '\')
	BEGIN
		SET @phone_new = REPLACE(@phone_new, @current_char, '')
		SET @repCount = @repCount -1
	END

	SET @i = @i -1
	SET @repCount = @repCount +1

END

-- Remove the leading '1' if it exists
IF LEFT(@phone_new, 1) = '1'
	SET @phone_new = RIGHT(@phone_new, LEN(@phone_new) -1)
	-- When the @phone_new is parsed, then insert the formatting

IF ISNUMERIC(@phone_new) = 1 AND LEN(@phone_new) = 9
begin
	SET @phone_new =
			SUBSTRING(@phone_new, 1,2) + '-' +
			SUBSTRING(@phone_new, 3,3) + '-' +
			SUBSTRING(@phone_new, 5,2) + '-' +
			SUBSTRING(@phone_new, 7,2)
end
ELSE
begin
	SET @phone_new = 0
end
RETURN @phone_new

END --function


GO

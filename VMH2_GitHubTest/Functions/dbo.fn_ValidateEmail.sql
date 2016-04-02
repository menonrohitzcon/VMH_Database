SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_ValidateEmail]
(
	@EmailId varchar(150)
)
RETURNS varchar(2)
AS
BEGIN
	
	DECLARE @Status varchar(2)
	
	IF (
	CHARINDEX(' ',LTRIM(RTRIM(@EmailId))) = 0 
	AND  LEFT(LTRIM(@EmailId),1) <> '@' 
	AND  RIGHT(RTRIM(@EmailId),1) <> '.' 
	AND  CHARINDEX('.',@EmailId ,CHARINDEX('@',@EmailId)) - CHARINDEX('@',@EmailId ) > 1 
	AND  LEN(LTRIM(RTRIM(@EmailId ))) - LEN(REPLACE(LTRIM(RTRIM(@EmailId)),'@','')) = 1 
	AND  CHARINDEX('.',REVERSE(LTRIM(RTRIM(@EmailId)))) >= 3 
	AND  (CHARINDEX('.@',@EmailId ) = 0 AND CHARINDEX('..',@EmailId ) = 0)
	)
	BEGIN		
		SET @Status = 'Y'		
	END
	RETURN @Status

END


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Function [dbo].[fnAppStripNonEmail](@Temp VarChar(1000))
Returns VarChar(1000)
AS
Begin

    Declare @KeepValues as varchar(50)
    Set @KeepValues = '%[^a-z,0-9,@,.,-]%'
    While PatIndex(@KeepValues, @Temp) > 0
        Set @Temp = Stuff(@Temp, PatIndex(@KeepValues, @Temp), 1, '')

    Return @Temp
End


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fun_CheckEmailAddress](@email VARCHAR(255))   
--Returns true if the string is a valid email address.  
RETURNS bit  
as  
BEGIN  
     DECLARE @valid bit  
     IF @email IS not NULL 
    
          SET @email = LOWER(@email)  
          SET @valid = 0  
          IF @email like '[a-z,0-9,_,-]%@[a-z,0-9,_,-]%.[a-z][a-z]%'  
             AND LEN(@email) = LEN(dbo.fnAppStripNonEmail(@email))  
             AND @email NOT like '%@%@%'  
             AND CHARINDEX('.@',@email) = 0  
             AND CHARINDEX('..',@email) = 0  
             AND CHARINDEX(',',@email) = 0  
             AND RIGHT(@email,1) between 'a' AND 'z'  
               SET @valid=1 

     
         --IF @email = NULL 
     
         --SET @valid=1
              
              
     RETURN @valid  
END


GO

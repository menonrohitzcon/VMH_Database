SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ritesh Shah
-- Create date: <24 Feb 2016
-- Description:	Create PaymentType flag for Invoice Export CSV file
-- =============================================

create function fun_GetPaymentTerms
(@TransferModePaymentId uniqueidentifier , @PayementModeFlag varchar(5))
returns  varchar(2)
As

Begin
Declare @output varchar(2)
if (@TransferModePaymentId = 'F7271554-D2BA-4D14-B047-A4A2CB4816AA') 
    set @output ='O'
 else 
   if ( @PayementModeFlag = 'O' or @PayementModeFlag = 'R')
     set @output = 'E'
   else 
     set @output = 'D'
return @output
End


GO

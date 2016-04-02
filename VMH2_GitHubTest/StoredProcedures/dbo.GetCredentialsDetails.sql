SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEmailConfigMaster](
	[EmailConfigMasterId] [uniqueidentifier] NOT NULL,
	[EmailServerListValueId] [uniqueidentifier] NOT NULL,
	[POP3ServerName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POP3PortNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IMAPServerName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IMAPPortNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SMTPServerName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SMTPPortNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_TblEmailConfigMaster] PRIMARY KEY CLUSTERED 
(
	[EmailConfigMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Namrata,,N>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCredentialsDetails]
(
  @ClientId UniqueIdentifier,
  @DivisionId UniqueIdentifier,
  @ClientRoleId UniqueIdentifier,
  @UserId UniqueIdentifier,
  @UserLoginDetailId UniqueIdentifier,

  @EmailServerList UniqueIdentifier,
  @IncomingIMAPPOP3 nvarchar(10)
)
AS
BEGIN
if @IncomingIMAPPOP3='I'
begin
		select 
		TblEmailConfigMaster.IMAPServerName as ServerName,
		TblEmailConfigMaster.IMAPPortNo as PortNo,
		TblEmailConfigMaster.SMTPServerName as ServerNameOutgoing,
		TblEmailConfigMaster.SMTPPortNo as PortNoOutgoing

		from TblEmailConfigMaster
		--		inner join
		--users on TblEmailConfigMaster.UserId=users.UserId
		where TblEmailConfigMaster.EmailServerListValueId=@EmailServerList 
end

else if @IncomingIMAPPOP3='P'
begin
		select 
		TblEmailConfigMaster.POP3ServerName as ServerName,
		TblEmailConfigMaster.POP3PortNo  as PortNo,
		TblEmailConfigMaster.SMTPServerName as ServerNameOutgoing,
		TblEmailConfigMaster.SMTPPortNo as PortNoOutgoing

		from TblEmailConfigMaster
		--		inner join
		--users on TblEmailConfigMaster.UserId=users.UserId
		where TblEmailConfigMaster.EmailServerListValueId=@EmailServerList 
end

else
begin
		select 
		TblEmailConfigMaster.SMTPServerName as ServerName,
		TblEmailConfigMaster.SMTPPortNo  as PortNo,
		TblEmailConfigMaster.SMTPServerName as ServerNameOutgoing,
		TblEmailConfigMaster.SMTPPortNo as PortNoOutgoing

		from TblEmailConfigMaster
		--		inner join
		--users on TblEmailConfigMaster.UserId=users.UserId
		where TblEmailConfigMaster.EmailServerListValueId=@EmailServerList 
end




END

GO

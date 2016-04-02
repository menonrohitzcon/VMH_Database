SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[RegionId] [uniqueidentifier] NOT NULL,
	[DateFormat] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TimeFormat] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TimeZone] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Currency] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CurrencySignificantDigits] [int] NULL,
	[ThousandsSeparator] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DecimalSymbol] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NameDisplayFormat] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Culture] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LanguageNumber] [int] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY NONCLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lists](
	[ListId] [uniqueidentifier] NOT NULL,
	[ListCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ListName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SystemFlag] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Lists] PRIMARY KEY CLUSTERED 
(
	[ListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceTemp](
	[InsuranceCompanyName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientId] [uniqueidentifier] NOT NULL,
	[RegionId] [uniqueidentifier] NOT NULL,
	[ClientName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryEmailAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryEmailAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressHouseNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressStreet2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressHouseNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressStreet2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LogUserLoginHistory] [bit] NULL,
	[LogUserScreenAccessHistory] [bit] NULL,
	[OutlookEmailPollingFrequency] [int] NULL,
	[GoogleCalendarEmailId] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY NONCLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListValues](
	[ListValueId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NULL,
	[ListId] [uniqueidentifier] NOT NULL,
	[ListValue] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ListValue4] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ListValue3] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ListValue2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ListValue1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ListValueCode] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SequenceNo] [int] NULL,
	[IsAccessible] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ListValues] PRIMARY KEY CLUSTERED 
(
	[ListValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
CREATE UNIQUE NONCLUSTERED INDEX [UK_ListValues_IDCode] ON [dbo].[ListValues]
(
	[ListId] ASC,
	[ListValueCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clients]  WITH NOCHECK ADD  CONSTRAINT [FK_Clients_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([RegionId])
GO
ALTER TABLE [dbo].[Clients] NOCHECK CONSTRAINT [FK_Clients_Regions]
GO
ALTER TABLE [dbo].[ListValues]  WITH NOCHECK ADD  CONSTRAINT [FK_ListValues_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ListValues] NOCHECK CONSTRAINT [FK_ListValues_Clients]
GO
ALTER TABLE [dbo].[ListValues]  WITH NOCHECK ADD  CONSTRAINT [FK_ListValues_Lists] FOREIGN KEY([ListId])
REFERENCES [dbo].[Lists] ([ListId])
GO
ALTER TABLE [dbo].[ListValues] NOCHECK CONSTRAINT [FK_ListValues_Lists]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_AddInsuranceCompany]

AS


BEGIN
declare @ListValue1 varchar(100);
declare myCur1 CURSOR
for SELECT InsuranceCompanyName FROM InsuranceTemp;
open myCur1
FETCH NEXT FROM myCur1  INTO @ListValue1
    
WHILE @@FETCH_STATUS = 0
 
BEGIN
INSERT INTO [dbo].[ListValues]
([ListValueId]
,[ClientId]
,[ListId]
,[ListValue]
,[ListValue4]
,[ListValue3]
,[ListValue2]
,[ListValue1]
,[ListValueCode]
,[SequenceNo]
,[IsAccessible]
,[IsActive]
,[CreatedBy]
,[CreatedDateTime]
,[UpdatedBy]
,[UpdatedDateTime])
     VALUES
(newid()
,'2FA3C1FD-ADE8-4CBE-8F10-DC745F8CB806'
     ,'F9CE3B0C-7D2E-4C04-A49D-BCFFFC73493F'
     , @ListValue1
,null
,null
,null
,null
     ,UPPER(SUBSTRING(@ListValue1,0,7)) +  cast ((Select max(SequenceNo) + 1 from   [dbo].[ListValues] where  ListId ='F9CE3B0C-7D2E-4C04-A49D-BCFFFC73493F') as varchar(10))
, (Select max(SequenceNo) + 1 from   [dbo].[ListValues] where  ListId ='F9CE3B0C-7D2E-4C04-A49D-BCFFFC73493F')
,0
,0
,'2FA3C1FD-ADE8-4CBE-8F10-DC745F8CB806'
,'2015-01-04 17:06:26.497'
,'2FA3C1FD-ADE8-4CBE-8F10-DC745F8CB806'
,'2015-01-04 17:06:26.497')

 
   FETCH NEXT FROM myCur1  INTO @ListValue1

END

close myCur1;
deallocate myCur1;
END


GO

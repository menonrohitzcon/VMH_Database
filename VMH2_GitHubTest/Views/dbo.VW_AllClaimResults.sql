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
CREATE TABLE [dbo].[ClaimTypes](
	[ClaimTypeId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimType1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimType2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimType3] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimType4] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimTypeCode] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ClaimTypes] PRIMARY KEY CLUSTERED 
(
	[ClaimTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimResults](
	[ClaimResultId] [uniqueidentifier] NOT NULL,
	[ClaimTypeId] [uniqueidentifier] NULL,
	[ClaimResult] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimResult1] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimResult2] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimResult3] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimResult4] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimResultCode] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SequenceNo] [int] NULL,
	[IsActive] [bit] NULL,
	[Description] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ClaimResults] PRIMARY KEY CLUSTERED 
(
	[ClaimResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View VW_AllClaimResults
as
	select	ClaimResults.ClaimResultId as ID,
				ClaimResults.ClaimTypeId,
				ClaimTypes.ClaimType,
				case Regions.LanguageNumber
				when 1 then IsNull(ClaimResults.ClaimResult1,'')
				When 2 then IsNull(ClaimResults.ClaimResult2,'')
				when 3 then IsNull(ClaimResults.ClaimResult3,'')
				when 4 then IsNull(ClaimResults.ClaimResult4,'')
				ELSE IsNull(ClaimResults.ClaimResult,'') END as ClaimResult,
				ClaimResults.ClaimResultCode,
				ClaimResults.Description,
				IsNull(ClaimResults.IsActive,0) as IsActive,
				ClaimResults.CreatedBy,
				ClaimResults.CreatedDateTime,
				ClaimResults.UpdatedBy,
				ClaimResults.UpdatedDateTime
		from ClaimResults
		inner join ClaimTypes
		on ClaimTypes.ClaimTypeId=ClaimResults.ClaimTypeId
		inner join Clients
		on Clients.ClientId=ClaimTypes.ClientId
		inner join Regions
		on Regions.RegionId = Clients.RegionId

	
GO
ALTER TABLE [dbo].[Clients]  WITH NOCHECK ADD  CONSTRAINT [FK_Clients_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([RegionId])
GO
ALTER TABLE [dbo].[Clients] NOCHECK CONSTRAINT [FK_Clients_Regions]
GO
ALTER TABLE [dbo].[ClaimTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ClaimTypes_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ClaimTypes] NOCHECK CONSTRAINT [FK_ClaimTypes_Clients]
GO
ALTER TABLE [dbo].[ClaimResults]  WITH NOCHECK ADD  CONSTRAINT [FK_ClaimResults_ClaimTypes] FOREIGN KEY([ClaimTypeId])
REFERENCES [dbo].[ClaimTypes] ([ClaimTypeId])
GO
ALTER TABLE [dbo].[ClaimResults] NOCHECK CONSTRAINT [FK_ClaimResults_ClaimTypes]
GO

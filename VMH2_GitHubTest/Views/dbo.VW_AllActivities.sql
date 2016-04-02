SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempContact](
	[contactId] [uniqueidentifier] NULL,
	[Userid] [uniqueidentifier] NULL,
	[Operation] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status] [bit] NULL,
	[Operationdatetime] [datetime] NULL
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeUnits](
	[TimeUnitId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NULL,
	[TimeUnit] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_TimeUnits] PRIMARY KEY NONCLUSTERED 
(
	[TimeUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductServiceTypes](
	[ProductServiceTypeId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NULL,
	[ProductServiceTypeCode] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductServiceTypeName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ProductServiceTypes] PRIMARY KEY NONCLUSTERED 
(
	[ProductServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityTypes](
	[ActivityTypeId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__ActivityT__Activ__4999D985]  DEFAULT (newid()),
	[ClientId] [uniqueidentifier] NULL,
	[ActivityType] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityType1] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityType2] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityType3] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityType4] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityTypeCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ActivitityTypes] PRIMARY KEY NONCLUSTERED 
(
	[ActivityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLocationTypes](
	[ActivityLocationTypeId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NULL,
	[ActivityLocationType] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityLocationType1] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityLocationType2] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityLocationType3] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityLocationType4] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityLocationTypeCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ActivityLocationTypes] PRIMARY KEY NONCLUSTERED 
(
	[ActivityLocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineOfBusinessCategories](
	[LineOfBusinessCategoryId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NULL,
	[LineOfBusinessCategory] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SequenceNo] [int] NOT NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_LineOfBusinessCategories] PRIMARY KEY CLUSTERED 
(
	[LineOfBusinessCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Divisions](
	[DivisionId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NOT NULL,
	[DivisionName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstDayOfTheWeek] [int] NULL,
	[TrackUserLoginHistory] [bit] NULL,
	[TrackUserScreenAccessHistory] [bit] NULL,
	[WeekendDay1] [smallint] NULL,
	[WeekendDay2] [smallint] NULL,
	[OfficeStartTime] [time](7) NULL,
	[OfficeEndTime] [time](7) NULL,
	[CalenderSlotDuration] [int] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Divisions] PRIMARY KEY NONCLUSTERED 
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientRoles](
	[ClientRoleId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NULL,
	[ClientRoleName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClientRoleCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY NONCLUSTERED 
(
	[ClientRoleId] ASC
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
CREATE TABLE [dbo].[ClaimSubStatuses](
	[ClaimSubStatusId] [uniqueidentifier] NOT NULL,
	[ClaimTypeId] [uniqueidentifier] NULL,
	[Substatus] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubStatus1] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubStatus2] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubStatus3] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubStatus4] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OpenCloseFlag] [bit] NULL,
	[SequenceNo] [int] NULL,
	[Description] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ClaimSubStatuses] PRIMARY KEY CLUSTERED 
(
	[ClaimSubStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DamageTypes](
	[DamageTypeId] [uniqueidentifier] NOT NULL,
	[ClaimTypeId] [uniqueidentifier] NOT NULL,
	[DamageType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DamageType1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DamageType2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DamageType3] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DamageType4] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DamageTypeCode] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_DamageTypes] PRIMARY KEY CLUSTERED 
(
	[DamageTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactTypes](
	[ContactTypeId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NOT NULL,
	[ContactType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactTypeCode] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TargetOrContactType] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SequenceNo] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ContactTypes] PRIMARY KEY NONCLUSTERED 
(
	[ContactTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineOfBusinesses](
	[LineOfBusinessId] [uniqueidentifier] NOT NULL,
	[LineOfBusinessCategoryId] [uniqueidentifier] NULL,
	[LineOfBusiness] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdvisoryProductFlag] [bit] NULL,
	[MaxOpportunities] [int] NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[CodeFlag] [bit] NULL DEFAULT ((0)),
 CONSTRAINT [PK_OpportunityTypes] PRIMARY KEY NONCLUSTERED 
(
	[LineOfBusinessId] ASC
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
CREATE TABLE [dbo].[CampaignTypes](
	[CampaignTypeId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NOT NULL,
	[CampaignType] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CampaignTypeCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_CampaignTypes] PRIMARY KEY NONCLUSTERED 
(
	[CampaignTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductServiceSubtypes](
	[ProductServiceSubtypeId] [uniqueidentifier] NOT NULL,
	[ProductServiceTypeId] [uniqueidentifier] NOT NULL,
	[ProductServiceSubTypeCode] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductServiceSubTypeName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ProductServiceSubtypes] PRIMARY KEY NONCLUSTERED 
(
	[ProductServiceSubtypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NOT NULL,
	[TeamName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NOT NULL,
	[ClientRoleId] [uniqueidentifier] NOT NULL,
	[AdministratorFlag] [bit] NULL,
	[Initials] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Prefix] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MiddleName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Department] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DateOfBirth] [date] NULL,
	[GenderListValueId] [uniqueidentifier] NULL,
	[Mobile] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HomePhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OfficePhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OtherPhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Fax] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryEmailAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryEmailAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReportingToUserId] [uniqueidentifier] NULL,
	[PrimaryAddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressHouseNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressHouseNumberSuffix] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressStreet2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[UseForCampaigns] [bit] NULL,
	[UseOutlookForEmailFlag] [bit] NULL,
	[UserColorCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[ProfileImagePath] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExsistingCalendarId] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SourceTypes](
	[SourceTypeId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NOT NULL,
	[SourceType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SourceTypeCode] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_SourceTypes] PRIMARY KEY NONCLUSTERED 
(
	[SourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultTypes](
	[ResultTypeId] [uniqueidentifier] NOT NULL,
	[LineOfBusinessId] [uniqueidentifier] NOT NULL,
	[ResultType] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ResultType1] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ResultType2] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ResultType3] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ResultType4] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ResultTypeCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OpportunityOpenCloseFlag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ResultTypes] PRIMARY KEY NONCLUSTERED 
(
	[ResultTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Targets](
	[TargetId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[CompanyLabelListValueId] [uniqueidentifier] NULL,
	[CompanySubLabel] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactTypeId] [uniqueidentifier] NOT NULL,
	[SourceTypeId] [uniqueidentifier] NOT NULL,
	[RatingListValueId] [uniqueidentifier] NULL,
	[BankAccountNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProfessionListValueId] [uniqueidentifier] NULL,
	[HomeSituationListValueId] [uniqueidentifier] NULL,
	[PreferedGreetingListValueId] [uniqueidentifier] NULL,
	[Initial] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Prefix] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MiddleName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Suffix] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OtherName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NickName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CompanyName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Title] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Department] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NationalityListValueId] [uniqueidentifier] NULL,
	[CountryofBirthListValueId] [uniqueidentifier] NULL,
	[DateOfBirth] [datetime] NULL,
	[PlaceOfBirth] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GenderListValueId] [uniqueidentifier] NULL,
	[SmokerListValueId] [uniqueidentifier] NULL,
	[CountryUniqueNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IDTypeListValueId] [uniqueidentifier] NULL,
	[IDNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IDIssueDate] [datetime] NULL,
	[IDValidTill] [datetime] NULL,
	[MaritalStatusListValueId] [uniqueidentifier] NULL,
	[NumberOfChildren] [int] NULL,
	[HomePhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutHomePhone] [bit] NULL,
	[OfficePhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutOfficePhone] [bit] NULL,
	[OtherPhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutOtherPhone] [bit] NULL,
	[MobilePhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutMobilePhone] [bit] NULL,
	[Fax] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryEmailAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutPrimaryEmailAddress] [bit] NULL,
	[InvalidPrimaryEmailAddress] [bit] NULL,
	[SecondaryEmailAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutSecondaryEmailAddress] [bit] NULL,
	[InvalidSecondaryEmailAddress] [bit] NULL,
	[PrimaryAddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressHouseNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressHouseNumberSuffix] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressStreet2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressHouseNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressHouseNumberSuffix] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressStreet2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DoNotCall] [bit] NULL,
	[FacebookPage] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LinkedinPage] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TwitterAccount] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProfileImagePath] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[ExternalApplication] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalAppKey] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Targets] PRIMARY KEY CLUSTERED 
(
	[TargetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceTypes](
	[ReferenceTypeId] [uniqueidentifier] NOT NULL,
	[LineOfBusinessId] [uniqueidentifier] NOT NULL,
	[ReferenceType] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReferenceType1] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReferenceType2] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReferenceType3] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReferenceType4] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReferenceTypeCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ReferenceTypes] PRIMARY KEY NONCLUSTERED 
(
	[ReferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductServices](
	[ProductServiceId] [uniqueidentifier] NOT NULL,
	[ProductServiceSubtypeId] [uniqueidentifier] NOT NULL,
	[ProductServiceCode] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductServiceName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsInsuranceProductFlag] [bit] NULL,
	[QuestionnaireTemplateId] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Charges] [money] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY NONCLUSTERED 
(
	[ProductServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[CompanyId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[SourceTypeId] [uniqueidentifier] NULL,
	[CompanyName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OfficePhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OtherPhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Fax] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryEmailAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryEmailAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WebSite] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressStreet2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressStreet2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Industry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NoOfEmployees] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalApplication] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalAppKey] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FacebookPage] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LinkedinPage] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TwitterAccount] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY NONCLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpportunitySubStatuses](
	[OpportunitySubStatusId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__Opprotuni__Oppro__4A8DFDBE]  DEFAULT (newid()),
	[LineOfBusinessId] [uniqueidentifier] NOT NULL,
	[OpenCloseFlag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SubStatus] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SubStatus1] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubStatus2] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubStatus3] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubStatus4] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SequenceNo] [int] NOT NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_OpprotunitySubStatuses] PRIMARY KEY NONCLUSTERED 
(
	[OpportunitySubStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpportunityPhases](
	[OpportunityPhaseId] [uniqueidentifier] NOT NULL,
	[LineOfBusinessId] [uniqueidentifier] NOT NULL,
	[Phase] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PhaseLanguageValue1] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PhaseLanguageValue2] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PhaseLanguageValue3] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PhaseLanguageValue4] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SequenceNo] [int] NULL,
	[ChargableFlag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_OpportunityPhases] PRIMARY KEY NONCLUSTERED 
(
	[OpportunityPhaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaigns](
	[CampaignId] [uniqueidentifier] NOT NULL,
	[CampaignTypeId] [uniqueidentifier] NOT NULL,
	[LineOfBusinessId] [uniqueidentifier] NOT NULL,
	[TeamId] [uniqueidentifier] NULL,
	[CampaignName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CampaignStatusListValueId] [uniqueidentifier] NULL,
	[CampaignManagerUserId] [uniqueidentifier] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Objective] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AssignedUserId] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Campaigns] PRIMARY KEY NONCLUSTERED 
(
	[CampaignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NULL,
	[CompanyId] [uniqueidentifier] NULL,
	[CompanyLabelListValueId] [uniqueidentifier] NULL,
	[CompanySubLabel] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UserId] [uniqueidentifier] NULL,
	[AssignedUserId] [uniqueidentifier] NULL,
	[ContactTypeId] [uniqueidentifier] NULL,
	[SourceTypeId] [uniqueidentifier] NULL,
	[RatingListValueId] [uniqueidentifier] NULL,
	[BankAccountNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProfessionListValueId] [uniqueidentifier] NULL,
	[PreferedGreetingListValueId] [uniqueidentifier] NULL,
	[HomeSituationListValueId] [uniqueidentifier] NULL,
	[Initial] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Prefix] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MiddleName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Suffix] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OtherName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NickName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TitlelistValueId] [uniqueidentifier] NULL,
	[Department] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NationalityListValueId] [uniqueidentifier] NULL,
	[CountryofBirthListValueId] [uniqueidentifier] NULL,
	[DateOfBirth] [datetime] NULL,
	[PlaceOfBirth] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GenderListValueId] [uniqueidentifier] NULL,
	[SmokerListValueId] [uniqueidentifier] NULL,
	[CountryUniqueNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IDTypeListValueId] [uniqueidentifier] NULL,
	[IDNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IDIssueDate] [datetime] NULL,
	[IDValidTill] [datetime] NULL,
	[TemporaryPermit] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TemporaryPermitDocumentNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TemporaryPermitValidTill] [datetime] NULL,
	[EverDivorcedListValueId] [uniqueidentifier] NULL,
	[DateOfDivorce] [datetime] NULL,
	[TypeOfIndentificationListValueId] [uniqueidentifier] NULL,
	[MaritalStatusListValueId] [uniqueidentifier] NULL,
	[NumberOfChildren] [int] NULL,
	[HomePhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutHomePhone] [bit] NULL,
	[OfficePhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutOfficePhone] [bit] NULL,
	[OtherPhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutOtherPhone] [bit] NULL,
	[MobilePhone] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutMobilePhone] [bit] NULL,
	[Fax] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryEmailAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutPrimaryEmailAddress] [bit] NULL,
	[InvalidPrimaryEmailAddress] [bit] NULL,
	[SecondaryEmailAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OptOutSecondaryEmailAddress] [bit] NULL,
	[InvalidSecondaryEmailAddress] [bit] NULL,
	[ReportingToContactId] [uniqueidentifier] NULL,
	[PrimaryAddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressHouseNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressHouseNumberSuffix] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressStreet2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryAddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressHouseNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressHouseNumberSuffix] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressStreet2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecondaryAddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DoNotCall] [bit] NULL,
	[MutualChild] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[InhabitantChild] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TypeOfSchoolListValueId] [uniqueidentifier] NULL,
	[MutualParental] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProfileImagePath] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalApplication] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalAppKey] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FacebookPage] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LinkedinPage] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TwitterAccount] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[IsExpired] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDateTime] [datetime] NOT NULL,
	[PrimaryAdvisorListValueId] [uniqueidentifier] NULL,
	[CreditscoreDate] [date] NULL,
	[CreditscoreSource] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Creditscore] [numeric](10, 2) NULL,
	[ReferenceId] [nchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY NONCLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowActivities](
	[WorkflowActivityId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__WorkflowA__Workf__4F52B2DB]  DEFAULT (newid()),
	[LineOfBusinessId] [uniqueidentifier] NOT NULL,
	[OpportunityPhaseId] [uniqueidentifier] NOT NULL,
	[ReferenceTypeId] [uniqueidentifier] NULL,
	[ActivityTypeId] [uniqueidentifier] NOT NULL,
	[ClientRoleId] [uniqueidentifier] NULL,
	[TeamId] [uniqueidentifier] NULL,
	[ActivityLocationTypeId] [uniqueidentifier] NULL,
	[FirstActivity] [bit] NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[DefaultDuration] [int] NULL,
 CONSTRAINT [PK_WorkflowActivities] PRIMARY KEY NONCLUSTERED 
(
	[WorkflowActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceProviderProducts](
	[ServiceProviderProductId] [uniqueidentifier] NOT NULL,
	[ServiceProviderListValueId] [uniqueidentifier] NOT NULL,
	[ProductServiceId] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductCode] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ServiceProviderProducts] PRIMARY KEY CLUSTERED 
(
	[ServiceProviderProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaints](
	[ComplaintId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NOT NULL,
	[ContactId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[TeamId] [uniqueidentifier] NULL,
	[ComplaintCategoryListValueId] [uniqueidentifier] NULL,
	[ActualStageListValueId] [uniqueidentifier] NULL,
	[ComplaintResultlistValueId] [uniqueidentifier] NULL,
	[ComplaineeListValueId] [uniqueidentifier] NULL,
	[ComplaneeDescription] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[TypeOfRegistrationListValueId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Complaints] PRIMARY KEY CLUSTERED 
(
	[ComplaintId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[ActivityId] [uniqueidentifier] NOT NULL,
	[TargetId] [uniqueidentifier] NULL,
	[ContactId] [uniqueidentifier] NULL,
	[ParentTypeListValueId] [uniqueidentifier] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[RelatedParentTypeListValueId] [uniqueidentifier] NULL,
	[RelatedParentId] [uniqueidentifier] NULL,
	[GoogleEventId] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActivityTypeId] [uniqueidentifier] NULL,
	[ActivityLocationTypeId] [uniqueidentifier] NULL,
	[ReferenceTypeId] [uniqueidentifier] NULL,
	[ReferenceType] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ResultTypeId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[TeamId] [uniqueidentifier] NULL,
	[ParentActivityId] [uniqueidentifier] NULL,
	[CampaignId] [uniqueidentifier] NULL,
	[DataFormsCompletionStatus] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StartDate] [date] NULL,
	[StartTime] [time](7) NULL,
	[Duration] [int] NULL,
	[DurationTimeUnitId] [uniqueidentifier] NULL,
	[DueDate] [date] NULL,
	[IsActive] [bit] NULL,
	[DueTime] [time](7) NULL,
	[CompletionDate] [date] NULL,
	[CompletionTime] [time](7) NULL,
	[PrivateActivityFlag] [bit] NULL,
	[ActivityPriorityStatus] [bit] NULL,
	[LocationName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressHouseNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LocationLongitude] [float] NULL,
	[LocationLatitude] [float] NULL,
	[Description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WorkflowActivityId] [uniqueidentifier] NULL,
	[ExternalApplication] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalAppKey] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[IsWorkflow] [bit] NULL CONSTRAINT [DF__Activitie__IsWor__3DE9C665]  DEFAULT ((0)),
	[ActualDuration] [int] NULL,
	[SalesProbability] [float] NULL,
	[PersonalDetailStatus] [bit] NULL CONSTRAINT [DF__Activitie__Perso__725D8EA4]  DEFAULT ((0)),
	[HomeDetailsStatus] [bit] NULL CONSTRAINT [DF__Activitie__HomeD__7351B2DD]  DEFAULT ((0)),
	[IncomeDetailsStatus] [bit] NULL CONSTRAINT [DF__Activitie__Incom__7445D716]  DEFAULT ((0)),
	[PensionDetailsStatus] [bit] NULL CONSTRAINT [DF__Activitie__Pensi__7539FB4F]  DEFAULT ((0)),
	[QuesionDetailsStatus] [bit] NULL CONSTRAINT [DF__Activitie__Quesi__762E1F88]  DEFAULT ((0)),
	[ProfileQuesionStatus] [bit] NULL CONSTRAINT [DF__Activitie__Profi__772243C1]  DEFAULT ((0)),
	[ProductServiceStatus] [bit] NULL CONSTRAINT [DF__Activitie__Produ__781667FA]  DEFAULT ((0)),
 CONSTRAINT [PK_Activities] PRIMARY KEY NONCLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opportunities](
	[OpportunityId] [uniqueidentifier] NOT NULL,
	[ParentOpportunityId] [uniqueidentifier] NULL,
	[LineOfBusinessId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NULL,
	[ContactId] [uniqueidentifier] NULL,
	[OpenCloseFlag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OpportunitySubStatusId] [uniqueidentifier] NULL,
	[OpportunityPhaseId] [uniqueidentifier] NULL,
	[WorkFlowActivityId] [uniqueidentifier] NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[CampaignId] [uniqueidentifier] NULL,
	[IsOpportunity] [bit] NULL,
	[IsCase] [bit] NULL,
	[IsOpportunityORCase] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDateTime] [datetime] NOT NULL,
	[SalesProbability] [float] NULL,
 CONSTRAINT [PK_Opportunities] PRIMARY KEY NONCLUSTERED 
(
	[OpportunityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactProducts](
	[ContactProductId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NULL,
	[ContactId] [uniqueidentifier] NOT NULL,
	[ProductServiceId] [uniqueidentifier] NOT NULL,
	[ServiceProviderProductId] [uniqueidentifier] NULL,
	[OpportunityId] [uniqueidentifier] NOT NULL,
	[AdvisorUserId] [uniqueidentifier] NULL,
	[ReplaceWithProductServiceId] [uniqueidentifier] NULL,
	[IsConfirm] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsCompare] [bit] NULL,
	[IsAdvisory] [bit] NULL,
	[IsApplication] [bit] NULL,
	[IsNotInterested] [bit] NULL,
	[IsAdvisoryConfirm] [bit] NULL,
	[IsApplicationConfirm] [bit] NULL,
	[CreateNewOpportunityFlag] [bit] NULL,
	[InvoiceCharges] [money] NULL,
	[OpprotunityProductServiceId] [uniqueidentifier] NULL,
	[Status] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ContactProducts] PRIMARY KEY NONCLUSTERED 
(
	[ContactProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Damage](
	[Product_DamageId] [uniqueidentifier] NOT NULL,
	[ContactProductId] [uniqueidentifier] NULL,
	[PolicyNumber] [numeric](18, 0) NULL,
	[SubProductName] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[InsuranceComapnyListValueId] [uniqueidentifier] NULL,
	[ServiceProviderListValueId] [uniqueidentifier] NULL,
	[ProductName] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PolicyStartDate] [date] NULL,
	[PolicyEndDate] [date] NULL,
	[OwnOfficeApplicationlvId] [uniqueidentifier] NULL,
	[LicencePlate] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NameOfPartnerContractor] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NameOfApplicantContractor] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalApplication] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalAppKey] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Product_Damage] PRIMARY KEY CLUSTERED 
(
	[Product_DamageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_AOVInabilityInsurance](
	[ContactProductId] [uniqueidentifier] NULL,
	[Product_AOVInabilityInsuranceId] [uniqueidentifier] NOT NULL,
	[PolicyNumber] [numeric](18, 0) NULL,
	[SubProductName] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[InsuranceCompanyListValueId] [uniqueidentifier] NULL,
	[ServiceProviderListValueId] [uniqueidentifier] NULL,
	[ProductName] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PolicyStartDate] [date] NULL,
	[PolicyEndDate] [date] NULL,
	[DurationInYears] [numeric](18, 0) NULL,
	[DurationInMonths] [numeric](18, 0) NULL,
	[OwnOfficeApplicationlvId] [uniqueidentifier] NULL,
	[NameOfPartnerInsured] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NameOfApplicantInsured] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PaymentTermListValueId] [uniqueidentifier] NULL,
	[Premium] [money] NULL,
	[PremiumDeductable] [money] NULL,
	[PremiumAnnualIndex] [numeric](18, 0) NULL,
	[CollectiveInsured] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExtendedCoverage] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PaymentCoverageListValueId] [uniqueidentifier] NULL,
	[PaymentCoverageInMonth] [numeric](18, 0) NULL,
	[CoverageFixedAmt] [money] NULL,
	[CoveragePercentage] [numeric](18, 0) NULL,
	[CoveragePartlyDisable] [money] NULL,
	[HousingCoveragePrimaryIncomeId] [uniqueidentifier] NULL,
	[HousingCoverageCoveredElementsId] [uniqueidentifier] NULL,
	[HousingCoverageByUnemployment] [money] NULL,
	[HousingCoverageByUnemploymentInMonths] [numeric](18, 0) NULL,
	[HousingCoverageByUnemploymentPaymentNoOfMonths] [numeric](18, 0) NULL,
	[HousingCoverageByUnemploymentOwnRiskId] [uniqueidentifier] NULL,
	[HousingCoverageInabilityListValueId] [uniqueidentifier] NULL,
	[HousingCoverageByInabilityBenifitPArtiallyAO] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HousingCoverageByInabilityInsuredMonthlyAO] [money] NULL,
	[HousingCoverageByInabilityYearsDuration] [numeric](18, 0) NULL,
	[HousingCoverageByInabilityMonthsDuration] [numeric](18, 0) NULL,
	[HousingCoverageSeriousInjuryMonthDuration] [numeric](18, 0) NULL,
	[HousingCoverageSeriousInjuryYearsDuration] [numeric](18, 0) NULL,
	[HousingCoveragePremiumLumpsum] [money] NULL,
	[PremiumLumpsumTaxDeductable] [money] NULL,
	[FollowUpPremium] [money] NULL,
	[FollowUpPremiumTaxDeductanle] [money] NULL,
	[Income] [money] NULL,
	[InsuredAmtA] [money] NULL,
	[PercentageOfIncomeA] [numeric](18, 0) NULL,
	[AnnualIndexA] [numeric](18, 0) NULL,
	[TypeA] [numeric](18, 0) NULL,
	[OwnRiskPeriodA] [numeric](18, 0) NULL,
	[AOInabilityCriteriaListValueId] [uniqueidentifier] NULL,
	[AOTypeOfMonthlyPaymentA] [uniqueidentifier] NULL,
	[PercentageOfIncomeB] [numeric](18, 0) NULL,
	[InsuredAmtB] [money] NULL,
	[AOInabilityCriteriaBlistValueId] [uniqueidentifier] NULL,
	[EndAgePaymentsB] [numeric](18, 0) NULL,
	[ExternalApplication] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalAppKey] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Product_AOVInabilityInsurance] PRIMARY KEY CLUSTERED 
(
	[Product_AOVInabilityInsuranceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claims](
	[ClaimId] [uniqueidentifier] NOT NULL,
	[CompanyId] [uniqueidentifier] NULL,
	[ContactId] [uniqueidentifier] NOT NULL,
	[ClaimTypeId] [uniqueidentifier] NOT NULL,
	[Product_DamageId] [uniqueidentifier] NULL,
	[Product_AOVInabilityInsuranceId] [uniqueidentifier] NULL,
	[DateOfOccurence] [date] NULL,
	[TimeOfOccurence] [time](7) NULL,
	[DateReported] [date] NULL,
	[TimeReported] [time](7) NULL,
	[DamageTypeId] [uniqueidentifier] NULL,
	[Description] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MotorVehicleDetails] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OwnFaultFlag] [bit] NULL,
	[OtherFaultFlag] [bit] NULL,
	[EmailAddress] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AssignedUserId] [uniqueidentifier] NULL,
	[TeamId] [uniqueidentifier] NULL,
	[DamagedObjectDetails] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DamageOccuredLocation] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DamageCauseListValueId] [uniqueidentifier] NULL,
	[DamagesPaidFlag] [bit] NULL,
	[ReviewSatisfactionFlag] [bit] NULL,
	[GenerateDocument] [bit] NULL,
	[ReferenceNo] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PreferedContactMethodListValueId] [uniqueidentifier] NULL,
	[ClaimSubStatusId] [uniqueidentifier] NULL,
	[ClaimResultId] [uniqueidentifier] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[TypeOfRegistrationListValueId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Claims] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



          
CREATE VIEW [dbo].[VW_AllActivities]           
          
AS          
--(            
  SELECT         
 -- Contacts.IsActive AS CIsActive,  
  Activities.ActivityId as ID,          
  Activities.ActivityLocationTypeId,          
            
  LocationType.ActivityLocationType as Location,          
            
  Activities.ActivityPriorityStatus as Priority,          
  -- PriorityStatuses.PriorityStatus as Priority,          
  Activities.ActivityTypeId,          
  --'<a target=_balnk ' + 'OnClick=EditActivity("'+convert(nvarchar(36),Activities.ActivityId) +'")'+'>'+ActivityTypes.ActivityType+'</a>' as ActivityType,          
  '<a  href=/Activity/EditActivity/'+convert(nvarchar(36),Activities.ActivityId) +'>'+ActivityTypes.ActivityType+'</a>' as ActivityType,       
  ActivityTypes.ActivityType as ActivityType_Sort,          
  ActivityTypes.ActivityType as ActivityType1, 
  ActivityTypes.ActivityType1 as ActivityType_dutch,         
  Format(dbo.Activities.CompletionDate,'d',Region.Culture) CompletionDate,          
  dbo.Activities.CompletionTime,          
  Activities.ParentTypeListValueId,          
  ParentType.ListValue as ParentType,          
  ParentType.ListValue as ParenType,          
  Activities.ParentId,          
  Activities.Duration,          
   Activities.RelatedParentTypeListValueId ,          
  RelatedParentType.ListValue as RelatedParentType,          
  Activities.RelatedParentId,          
        
 IsNull(Contacts.LastName,'') +' ' + IsNull(Contacts.Initial,'')++ IsNull(Contacts.Prefix,'') as ContactNameWithoutLink,          
 IsNull(Targets.LastName,'') +' ' + IsNull(Targets.Initial,'')++ IsNull(Targets.Prefix,'') as TargetsNameWithoutLink,           
('<a target=_balnk href=/Contact/EditContact/' + convert(nvarchar(36),Activities.RelatedParentId)+'>'+ IIF (Contacts.LastName is null,' ',Contacts.LastName+', ' )) +(IsNull(Contacts.Initial,'')) + ' ' + (IsNull(Contacts.Prefix,'') )+'</a>' as FullName ,  



--Added by GajananR      
  '<a target=_balnk href=/Contact/EditContact/'+ convert(nvarchar(36),Activities.RelatedParentId)+'>'+IsNull(Contacts.FirstName,'') +' ' + IsNull(Contacts.LastName,'')+'</a>' as ContactName,        
          
  '<a target=_blank href=/Targets/EditTargets/'+convert(nvarchar(36),Activities.RelatedParentId)+'>'+IsNull(Targets.FirstName,'') +' ' + IsNull(Targets.LastName,'')+'</a>' as TargetName,          
  '<a target=_blank href=/Company/EditCompany/'+convert(nvarchar(36),Activities.RelatedParentId)+'>'+IsNull(Companies.CompanyName,'') +'</a>' as CompanyName,          
  Activities.ContactId,          
  Contacts.PrimaryEmailAddress as ContactEmail,          
  Targets.PrimaryEmailAddress as TargetEmail ,          
  --Case when Activities.ContactId Is null THEN '<a target=_balnk href=../Contact/EditContact/'+ convert(nvarchar(36),Activities.ContactId)+'>'+IsNull(Contacts.FirstName,'') +' ' + IsNull(Contacts.LastName,'')+'</a>'          
  --ELSE '<a target=_blank href=../Targets/EditTargets/'+convert(nvarchar(36),Activities.TargetId)+'>'+IsNull(Targets.FirstName,'') +' ' + IsNull(Targets.LastName,'')+'</a>' END As ContactName,          
  Format(dbo.Activities.DueDate,'d',Region.Culture)as DueDate,          
  LEFT(CONVERT(VARCHAR(10),dbo.Activities.DueTime),5) AS DueTime,     
 --FORMAT(dbo.Activities.StartDate,'d',Region.Culture) StartDate,
  CASE WHEN Region.Culture='en'
		THEN  CONVERT(VARCHAR(20),Activities.StartDate,101) --FORMAT ( Activities.CreatedDateTime, 'MM/dd/yyyy hh:mm:ss '  ) 
		else 
		  CONVERT(VARCHAR(20),Activities.StartDate,105) --FORMAT ( Activities.CreatedDateTime, 'dd/mm/yyyy hh:mm:ss ' )
	END AS  StartDate, 
 FORMAT(Activities.StartDate,'d','en') AS StartDateEN,
 Activities.StartDate  AS StartDateFilter,
      
     
  dbo.Contacts.FirstName +' '+Contacts.LastName as ActivityContactName,          
  dbo.Targets.FirstName +' '+Targets.LastName as TargetsContactName,          
  LEFT(convert(VARCHAR(10),dbo.Activities.StartTime),5) as StartTime, 
   dbo.Activities.AddressCity,          
  dbo.Activities.AddressCountry,          
  dbo.Activities.AddressHouseNumber,          
  dbo.Activities.AddressPostalCode,          
  dbo.Activities.AddressState,  
 dbo.Activities.AddressStreet,          
  dbo.Activities.RoleId,          
  Activities.IsActive,          
  Activities.ParentActivityId, 
Activities.IsWorkFlow,          
  dbo.Activities.ReferenceTypeId,          
  ISNULL(ReferenceTypes.ReferenceType,dbo.Activities.ReferenceType) As ReferenceType,          
  dbo.Activities.TeamId,          
  Teams.TeamName,          
  dbo.Activities.UpdatedBy as UpdatedById,          
  isnull(UpdatedUsers.FirstName,'')  + ' ' +  isnull(UpdatedUsers.Prefix,'')  + ' ' + isnull(UpdatedUsers.LastName,'')  as UpdatedBy,          
  Activities.UpdatedDateTime,          
  dbo.Activities.CreatedBy as CreatedById,          
  isnull(CreatedUsers.FirstName,'') +' ' + isnull(CreatedUsers.Prefix,'') + ' ' + isnull(CreatedUsers.LastName,'') as CreatedBy,          
     --FORMAT(Activities.CreatedDateTime,'d',Region.Culture) AS CreatedDateTime ,
	 CASE WHEN Region.Culture='en'
		THEN CONCAT(  CONVERT(VARCHAR(20),Activities.CreatedDateTime,101),' ',CONVERT (varchar(8),Activities.CreatedDateTime,114))  --FORMAT ( Activities.CreatedDateTime, 'MM/dd/yyyy hh:mm:ss '  ) 
		else 
		 CONCAT(  CONVERT(VARCHAR(20),Activities.CreatedDateTime,105),' ',CONVERT (varchar(8),Activities.CreatedDateTime,114)) --FORMAT ( Activities.CreatedDateTime, 'dd/mm/yyyy hh:mm:ss ' )
	END AS  CreatedDateTime, 
	 Activities.CreatedDateTime AS CreatedDateTimeEN,         
  dbo.Activities.UserId,          
  Users.FirstName+' '+Users.LastName As UserName,   
    Users.FirstName+' '+Users.LastName As AssignedUser,           
  dbo.Activities.TargetId,          
  -- Added By Sudhir----          
  LOBFile.LineOfBusiness as FileName1,          
  ComplaintsFile.ComplaneeDescription  as FileName2,          
  ClaimType.ClaimType as FileName3,          
  Campaigns.CampaignName as FileName4,          
  OpportunitySubStatuses.SubStatus          
           
            
  ------------------------          
            
          
from dbo.Activities           
  Left outer join dbo.ActivityLocationTypes as LocationType          
   on LocationType.ActivityLocationTypeId  = dbo.Activities.ActivityLocationTypeId          
          
 -- Left Outer Join dbo.ActivityPriorityStatuses AS PriorityStatuses           
  -- ON PriorityStatuses.ActivityPriorityStatusId = dbo.Activities.ActivityPriorityStatusId           
           
  Left Outer Join dbo.ActivityTypes           
   ON ActivityTypes.ActivityTypeId=dbo.Activities.ActivityTypeId          
          
  left Outer Join dbo.Contacts           
   ON Contacts.ContactId  = dbo.Activities.RelatedParentId          
  Left Outer Join dbo.Targets           
   ON Targets.TargetId   = dbo.Activities.RelatedParentId          
  Left Outer Join Companies          
   ON Companies.CompanyId = Activities.RelatedParentId          
  Left Join ListValues as ParentType          
   ON ParentType.ListValueId = Activities.ParentTypeListValueId          
  Left Join ListValues as RelatedParentType          
   ON RelatedParentType.ListValueId = Activities.RelatedParentTypeListValueId          
  Left Outer Join dbo.ReferenceTypes            
   ON ReferenceTypes.ReferenceTypeId = dbo.Activities.ReferenceTypeId          
  Left Outer Join dbo.Teams          
   ON Teams.TeamId=dbo.Activities.TeamId          
  Left Outer Join dbo.Users As CreatedUsers          
   ON CreatedUsers.UserId=dbo.Activities.CreatedBy          
  Left Outer Join dbo.Users as UpdatedUsers          
   ON UpdatedUsers.UserId=dbo.Activities.UpdatedBy          
  Left Outer Join dbo.Users as Users          
   ON Users.UserId=dbo.Activities.UserId          
   --Added by Sudhir Shinde--          
   Left Outer Join dbo.Opportunities as OppFile          
   ON OppFile.OpportunityId=dbo.Activities.ParentId          
   Left Outer Join dbo.Complaints as ComplaintsFile          
   ON ComplaintsFile.ComplaintId=dbo.Activities.ParentId          
   Left Outer Join dbo.Claims as ClaimsFile          
   ON ClaimsFile.ClaimId=dbo.Activities.ParentId          
   Left Outer Join dbo.LineOfBusinesses as LOBFile          
   ON LOBFile.LineOfBusinessId=OppFile.LineOfBusinessId          
   Left Outer Join dbo.ClaimTypes as ClaimType          
   ON ClaimType.ClaimTypeId=ClaimsFile.ClaimTypeId          
   Left Outer Join dbo.Campaigns as Campaigns          
   ON Campaigns.CampaignId=.Activities.ParentId          
    Left Outer Join dbo.OpportunitySubStatuses as OpportunitySubStatuses          
ON OpportunitySubStatuses.OpportunitySubStatusId=OppFile.OpportunitySubStatusId          
             
             
             
   ----------------------------------          
  
  inner join dbo.Divisions as Division          
   on Division.DivisionId=CreatedUsers.DivisionId          
  inner join dbo.Clients as client          
   on client.ClientId=Division.ClientId          
  inner join dbo.Regions  Region          
   on Region.RegionId=client.RegionId          
          
 where		contacts.IsActive=1 or  contacts.IsActive IS null -- added to display  the activities of contacts which are active and to display unlinked activities
	
		 
		-- SELECT * FROM vw_allactivities       
            
--)          
--Union all          
--(          
--SELECT           
--  AC.ActivityId as ID,          
--  AC.ActivityLocationTypeId,          
            
--  LocationType.ActivityLocationType as Location,          
          
--  AC.ActivityPriorityStatusId,          
--  PriorityStatuses.PriorityStatus as Priority,          
--  AC.ActivityTypeId,          
--  '<a target=_balnk' + 'OnClick=EditActivity('+convert(nvarchar(36),AC.ActivityId)+')'+'>'+'</a>' as ActivityType,          
--  --ActivityTypes.ActivityType,          
--  Format(AC.CompletionDate,'d',Region.Culture) CompletionDate,          
--  AC.CompletionTime,       
--  AC.ParentTypeListValueId,          
--  ParentType.ListValue as ParenType,          
--  AC.ParentId,          
--  AC.RelatedParentTypeListValueId ,          
--  RelatedParentType.ListValue as RelatedParentType,          
--  AC.RelatedParentId,          
--  '<a target=_balnk href=/Contact/EditContact/'+ convert(nvarchar(36),AC.RelatedParentId)+'>'+IsNull(Contacts.FirstName,'') +' ' + IsNull(Contacts.LastName,'')+'</a>' as ContactName,          
--  '<a target=_blank href=/Targets/EditTargets/'+convert(nvarchar(36),AC.RelatedParentId)+'>'+IsNull(Targets.FirstName,'') +' ' + IsNull(Targets.LastName,'')+'</a>' as TargetName,          
--  '<a target=_blank href=/Company/EditCompany/'+convert(nvarchar(36),AC.RelatedParentId)+'>'+IsNull(Companies.CompanyName,'') +'</a>' as CompanyName,          
--  AC.ContactId,          
--  --Case when Activities.ContactId Is null THEN '<a target=_balnk href=../Contact/EditContact/'+ convert(nvarchar(36),Activities.ContactId)+'>'+IsNull(Contacts.FirstName,'') +' ' + IsNull(Contacts.LastName,'')+'</a>'          
--  --ELSE '<a target=_blank href=../Targets/EditTargets/'+convert(nvarchar(36),Activities.TargetId)+'>'+IsNull(Targets.FirstName,'') +' ' + IsNull(Targets.LastName,'')+'</a>' END As ContactName,          
--  Format(AC.DueDate,'d',Region.Culture) DueDate,          
--  AC.DueTime,          
--  Format(AC.StartDate,'d',Region.Culture) StartDate,          
--  AC.StartTime,          
--  AC.AddressCity,          
--  AC.AddressCountry,          
--  AC.AddressHouseNumber,          
--  AC.AddressPostalCode,          
--  AC.AddressState,          
--  AC.AddressStreet,          
--  AC.RoleId,          
--  AC.ReferenceTypeId,          
--  ISNULL(ReferenceTypes.ReferenceType,AC.ReferenceType) As ReferenceType,          
--  AC.TeamId,          
--  Teams.TeamName,          
--  AC.UpdatedBy as UpdatedById,          
--  isnull(UpdatedUsers.FirstName,'')  + ' ' +  isnull(UpdatedUsers.Prefix,'')  + ' ' + isnull(UpdatedUsers.LastName,'')  as UpdatedBy,   
--  UpdatedUsers.UpdatedDateTime,          
--  AC.CreatedBy as CreatedById,          
--  isnull(CreatedUsers.FirstName,'') +' ' + isnull(CreatedUsers.Prefix,'') + ' ' + isnull(CreatedUsers.LastName,'') as CreatedBy,          
--     CreatedUsers.CreatedDateTime,          
--  AC.UserId,          
--  Users.FirstName+' '+Users.LastName As UserName,          
--  AC.TargetId          
          
--from CompletedActivities AC   
--  Left outer join dbo.ActivityLocationTypes as LocationType          
--   on LocationType.ActivityLocationTypeId  = AC.ActivityLocationTypeId          
          
--  Left Outer Join dbo.ActivityPriorityStatuses AS PriorityStatuses           
--   ON PriorityStatuses.ActivityPriorityStatusId = AC.ActivityPriorityStatusId 
     
--  Left Outer Join dbo.ActivityTypes           
--   ON ActivityTypes.ActivityTypeId=AC.ActivityTypeId          
          
--  Left Outer Join dbo.Contacts           
--   ON Contacts.ContactId  = AC.RelatedParentId          
--  Left Outer Join dbo.Targets           
--   ON Targets.TargetId   = AC.RelatedParentId          
--  Left Outer Join Companies          
--   ON Companies.CompanyId = AC.RelatedParentId          
--  Left Join ListValues as ParentType          
--   ON ParentType.ListValueId = AC.ParentTypeListValueId          
--  Left Join ListValues as RelatedParentType          
--   ON RelatedParentType.ListValueId = AC.RelatedParentTypeListValueId          
--  Left Outer Join dbo.ReferenceTypes            
--   ON ReferenceTypes.ReferenceTypeId = AC.ReferenceTypeId          
--  Left Outer Join dbo.Teams          
--   ON Teams.TeamId=AC.TeamId          
--  Left Outer Join dbo.Users As CreatedUsers          
--   ON CreatedUsers.UserId=AC.CreatedBy          
--  Left Outer Join dbo.Users as UpdatedUsers          
--   ON UpdatedUsers.UserId=AC.UpdatedBy          
--  Left Outer Join dbo.Users as Users          
--   ON Users.UserId=AC.UserId          
--  inner join dbo.Divisions as Division          
--   on Division.DivisionId=CreatedUsers.DivisionId          
--  inner join dbo.Clients as client          
--   on client.ClientId=Division.ClientId          
--  inner join dbo.Regions  Region          
--   on Region.RegionId=client.RegionId          
--) 





GO
SET ANSI_PADDING ON

GO
CREATE UNIQUE NONCLUSTERED INDEX [UK_ListValues_IDCode] ON [dbo].[ListValues]
(
	[ListId] ASC,
	[ListValueCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UK_Damage_ContactProductId] ON [dbo].[Product_Damage]
(
	[ContactProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UK_AOVInabilityInsurance_ContactProductId] ON [dbo].[Product_AOVInabilityInsurance]
(
	[ContactProductId] ASC
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
ALTER TABLE [dbo].[TimeUnits]  WITH NOCHECK ADD  CONSTRAINT [FK_TimeUnits_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[TimeUnits] NOCHECK CONSTRAINT [FK_TimeUnits_Clients]
GO
ALTER TABLE [dbo].[ProductServiceTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductServiceTypes_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ProductServiceTypes] NOCHECK CONSTRAINT [FK_ProductServiceTypes_Clients]
GO
ALTER TABLE [dbo].[ActivityTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ActivityTypes_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ActivityTypes] NOCHECK CONSTRAINT [FK_ActivityTypes_Clients]
GO
ALTER TABLE [dbo].[ActivityLocationTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ActivityLocationTypes_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ActivityLocationTypes] NOCHECK CONSTRAINT [FK_ActivityLocationTypes_Clients]
GO
ALTER TABLE [dbo].[LineOfBusinessCategories]  WITH NOCHECK ADD  CONSTRAINT [FK_LineOfBusinessCategories_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[LineOfBusinessCategories] NOCHECK CONSTRAINT [FK_LineOfBusinessCategories_Clients]
GO
ALTER TABLE [dbo].[Divisions]  WITH NOCHECK ADD  CONSTRAINT [FK_Divisions_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[Divisions] NOCHECK CONSTRAINT [FK_Divisions_Clients]
GO
ALTER TABLE [dbo].[ClientRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientRoles_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ClientRoles] NOCHECK CONSTRAINT [FK_ClientRoles_Clients]
GO
ALTER TABLE [dbo].[ClaimTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ClaimTypes_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ClaimTypes] NOCHECK CONSTRAINT [FK_ClaimTypes_Clients]
GO
ALTER TABLE [dbo].[ClaimSubStatuses]  WITH NOCHECK ADD  CONSTRAINT [FK_ClaimSubStatuses_ClaimTypes] FOREIGN KEY([ClaimTypeId])
REFERENCES [dbo].[ClaimTypes] ([ClaimTypeId])
GO
ALTER TABLE [dbo].[ClaimSubStatuses] NOCHECK CONSTRAINT [FK_ClaimSubStatuses_ClaimTypes]
GO
ALTER TABLE [dbo].[DamageTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_DamageTypes_ClaimTypes] FOREIGN KEY([ClaimTypeId])
REFERENCES [dbo].[ClaimTypes] ([ClaimTypeId])
GO
ALTER TABLE [dbo].[DamageTypes] NOCHECK CONSTRAINT [FK_DamageTypes_ClaimTypes]
GO
ALTER TABLE [dbo].[ContactTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ContactTypes_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[ContactTypes] NOCHECK CONSTRAINT [FK_ContactTypes_Divisions]
GO
ALTER TABLE [dbo].[LineOfBusinesses]  WITH NOCHECK ADD  CONSTRAINT [FK_LineOfBusinesses_LineOfBusinessCategories] FOREIGN KEY([LineOfBusinessCategoryId])
REFERENCES [dbo].[LineOfBusinessCategories] ([LineOfBusinessCategoryId])
GO
ALTER TABLE [dbo].[LineOfBusinesses] NOCHECK CONSTRAINT [FK_LineOfBusinesses_LineOfBusinessCategories]
GO
ALTER TABLE [dbo].[ClaimResults]  WITH NOCHECK ADD  CONSTRAINT [FK_ClaimResults_ClaimTypes] FOREIGN KEY([ClaimTypeId])
REFERENCES [dbo].[ClaimTypes] ([ClaimTypeId])
GO
ALTER TABLE [dbo].[ClaimResults] NOCHECK CONSTRAINT [FK_ClaimResults_ClaimTypes]
GO
ALTER TABLE [dbo].[CampaignTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_CampaignTypes_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[CampaignTypes] NOCHECK CONSTRAINT [FK_CampaignTypes_Divisions]
GO
ALTER TABLE [dbo].[ProductServiceSubtypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductServiceSubtypes_ProductServiceTypes] FOREIGN KEY([ProductServiceTypeId])
REFERENCES [dbo].[ProductServiceTypes] ([ProductServiceTypeId])
GO
ALTER TABLE [dbo].[ProductServiceSubtypes] NOCHECK CONSTRAINT [FK_ProductServiceSubtypes_ProductServiceTypes]
GO
ALTER TABLE [dbo].[Teams]  WITH NOCHECK ADD  CONSTRAINT [FK_Teams_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[Teams] NOCHECK CONSTRAINT [FK_Teams_Divisions]
GO
ALTER TABLE [dbo].[Users]  WITH NOCHECK ADD  CONSTRAINT [FK_Users_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[Users] NOCHECK CONSTRAINT [FK_Users_Divisions]
GO
ALTER TABLE [dbo].[Users]  WITH NOCHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([ClientRoleId])
REFERENCES [dbo].[ClientRoles] ([ClientRoleId])
GO
ALTER TABLE [dbo].[Users] NOCHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[Users]  WITH NOCHECK ADD  CONSTRAINT [FK_Users_Users] FOREIGN KEY([ReportingToUserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Users] NOCHECK CONSTRAINT [FK_Users_Users]
GO
ALTER TABLE [dbo].[SourceTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_SourceTypes_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[SourceTypes] NOCHECK CONSTRAINT [FK_SourceTypes_Divisions]
GO
ALTER TABLE [dbo].[ResultTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ResultTypes_LineOfBusinesses] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[ResultTypes] NOCHECK CONSTRAINT [FK_ResultTypes_LineOfBusinesses]
GO
ALTER TABLE [dbo].[Targets]  WITH NOCHECK ADD  CONSTRAINT [FK_Targets_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[Targets] NOCHECK CONSTRAINT [FK_Targets_Clients]
GO
ALTER TABLE [dbo].[Targets]  WITH NOCHECK ADD  CONSTRAINT [FK_Targets_ContactTypes] FOREIGN KEY([ContactTypeId])
REFERENCES [dbo].[ContactTypes] ([ContactTypeId])
GO
ALTER TABLE [dbo].[Targets] NOCHECK CONSTRAINT [FK_Targets_ContactTypes]
GO
ALTER TABLE [dbo].[Targets]  WITH NOCHECK ADD  CONSTRAINT [FK_Targets_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[Targets] NOCHECK CONSTRAINT [FK_Targets_Divisions]
GO
ALTER TABLE [dbo].[Targets]  WITH NOCHECK ADD  CONSTRAINT [FK_Targets_SourceTypes] FOREIGN KEY([SourceTypeId])
REFERENCES [dbo].[SourceTypes] ([SourceTypeId])
GO
ALTER TABLE [dbo].[Targets] NOCHECK CONSTRAINT [FK_Targets_SourceTypes]
GO
ALTER TABLE [dbo].[Targets]  WITH NOCHECK ADD  CONSTRAINT [FK_Targets_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Targets] NOCHECK CONSTRAINT [FK_Targets_Users]
GO
ALTER TABLE [dbo].[ReferenceTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ReferenceTypes_LineOfBusinesses] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[ReferenceTypes] NOCHECK CONSTRAINT [FK_ReferenceTypes_LineOfBusinesses]
GO
ALTER TABLE [dbo].[ProductServices]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductServices_ProductServiceSubtypes] FOREIGN KEY([ProductServiceSubtypeId])
REFERENCES [dbo].[ProductServiceSubtypes] ([ProductServiceSubtypeId])
GO
ALTER TABLE [dbo].[ProductServices] NOCHECK CONSTRAINT [FK_ProductServices_ProductServiceSubtypes]
GO
ALTER TABLE [dbo].[Companies]  WITH NOCHECK ADD  CONSTRAINT [FK_Companies_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[Companies] NOCHECK CONSTRAINT [FK_Companies_Clients]
GO
ALTER TABLE [dbo].[Companies]  WITH NOCHECK ADD  CONSTRAINT [FK_Companies_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[Companies] NOCHECK CONSTRAINT [FK_Companies_Divisions]
GO
ALTER TABLE [dbo].[Companies]  WITH NOCHECK ADD  CONSTRAINT [FK_Companies_SourceTypes] FOREIGN KEY([SourceTypeId])
REFERENCES [dbo].[SourceTypes] ([SourceTypeId])
GO
ALTER TABLE [dbo].[Companies] NOCHECK CONSTRAINT [FK_Companies_SourceTypes]
GO
ALTER TABLE [dbo].[Companies]  WITH NOCHECK ADD  CONSTRAINT [FK_Companies_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Companies] NOCHECK CONSTRAINT [FK_Companies_Users]
GO
ALTER TABLE [dbo].[OpportunitySubStatuses]  WITH NOCHECK ADD  CONSTRAINT [FK_OpprotunitySubStatuses_OpportunityTypes] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[OpportunitySubStatuses] NOCHECK CONSTRAINT [FK_OpprotunitySubStatuses_OpportunityTypes]
GO
ALTER TABLE [dbo].[OpportunityPhases]  WITH NOCHECK ADD  CONSTRAINT [FK_OpportunityPhases_OpportunityTypes] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[OpportunityPhases] NOCHECK CONSTRAINT [FK_OpportunityPhases_OpportunityTypes]
GO
ALTER TABLE [dbo].[Campaigns]  WITH NOCHECK ADD  CONSTRAINT [FK_Campaigns_CampaignTypes] FOREIGN KEY([CampaignTypeId])
REFERENCES [dbo].[CampaignTypes] ([CampaignTypeId])
GO
ALTER TABLE [dbo].[Campaigns] NOCHECK CONSTRAINT [FK_Campaigns_CampaignTypes]
GO
ALTER TABLE [dbo].[Campaigns]  WITH NOCHECK ADD  CONSTRAINT [FK_Campaigns_LineOfBusinesses] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[Campaigns] NOCHECK CONSTRAINT [FK_Campaigns_LineOfBusinesses]
GO
ALTER TABLE [dbo].[Campaigns]  WITH NOCHECK ADD  CONSTRAINT [FK_Campaigns_Teams] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([TeamId])
GO
ALTER TABLE [dbo].[Campaigns] NOCHECK CONSTRAINT [FK_Campaigns_Teams]
GO
ALTER TABLE [dbo].[Campaigns]  WITH NOCHECK ADD  CONSTRAINT [FK_Campaigns_Users] FOREIGN KEY([AssignedUserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Campaigns] NOCHECK CONSTRAINT [FK_Campaigns_Users]
GO
ALTER TABLE [dbo].[Campaigns]  WITH NOCHECK ADD  CONSTRAINT [FK_Campaigns_Users1] FOREIGN KEY([CampaignManagerUserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Campaigns] NOCHECK CONSTRAINT [FK_Campaigns_Users1]
GO
ALTER TABLE [dbo].[Contacts]  WITH NOCHECK ADD  CONSTRAINT [FK_Contacts_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([CompanyId])
GO
ALTER TABLE [dbo].[Contacts] NOCHECK CONSTRAINT [FK_Contacts_Companies]
GO
ALTER TABLE [dbo].[Contacts]  WITH NOCHECK ADD  CONSTRAINT [FK_Contacts_Contacts] FOREIGN KEY([ReportingToContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Contacts] NOCHECK CONSTRAINT [FK_Contacts_Contacts]
GO
ALTER TABLE [dbo].[Contacts]  WITH NOCHECK ADD  CONSTRAINT [FK_Contacts_ContactTypes] FOREIGN KEY([ContactTypeId])
REFERENCES [dbo].[ContactTypes] ([ContactTypeId])
GO
ALTER TABLE [dbo].[Contacts] NOCHECK CONSTRAINT [FK_Contacts_ContactTypes]
GO
ALTER TABLE [dbo].[Contacts]  WITH NOCHECK ADD  CONSTRAINT [FK_Contacts_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[Contacts] NOCHECK CONSTRAINT [FK_Contacts_Divisions]
GO
ALTER TABLE [dbo].[Contacts]  WITH NOCHECK ADD  CONSTRAINT [FK_Contacts_SourceTypes] FOREIGN KEY([SourceTypeId])
REFERENCES [dbo].[SourceTypes] ([SourceTypeId])
GO
ALTER TABLE [dbo].[Contacts] NOCHECK CONSTRAINT [FK_Contacts_SourceTypes]
GO
ALTER TABLE [dbo].[Contacts]  WITH NOCHECK ADD  CONSTRAINT [FK_Contacts_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Contacts] NOCHECK CONSTRAINT [FK_Contacts_Users]
GO
ALTER TABLE [dbo].[WorkflowActivities]  WITH NOCHECK ADD  CONSTRAINT [FK_WorkflowActivities_ActivitityTypes] FOREIGN KEY([ActivityTypeId])
REFERENCES [dbo].[ActivityTypes] ([ActivityTypeId])
GO
ALTER TABLE [dbo].[WorkflowActivities] NOCHECK CONSTRAINT [FK_WorkflowActivities_ActivitityTypes]
GO
ALTER TABLE [dbo].[WorkflowActivities]  WITH NOCHECK ADD  CONSTRAINT [FK_WorkflowActivities_ActivityLocationTypes] FOREIGN KEY([ActivityLocationTypeId])
REFERENCES [dbo].[ActivityLocationTypes] ([ActivityLocationTypeId])
GO
ALTER TABLE [dbo].[WorkflowActivities] NOCHECK CONSTRAINT [FK_WorkflowActivities_ActivityLocationTypes]
GO
ALTER TABLE [dbo].[WorkflowActivities]  WITH NOCHECK ADD  CONSTRAINT [FK_WorkflowActivities_OpportunityTypes] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[WorkflowActivities] NOCHECK CONSTRAINT [FK_WorkflowActivities_OpportunityTypes]
GO
ALTER TABLE [dbo].[WorkflowActivities]  WITH NOCHECK ADD  CONSTRAINT [FK_WorkflowActivities_ReferenceTypes] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([ReferenceTypeId])
GO
ALTER TABLE [dbo].[WorkflowActivities] NOCHECK CONSTRAINT [FK_WorkflowActivities_ReferenceTypes]
GO
ALTER TABLE [dbo].[WorkflowActivities]  WITH NOCHECK ADD  CONSTRAINT [FK_WorkflowActivities_Roles] FOREIGN KEY([ClientRoleId])
REFERENCES [dbo].[ClientRoles] ([ClientRoleId])
GO
ALTER TABLE [dbo].[WorkflowActivities] NOCHECK CONSTRAINT [FK_WorkflowActivities_Roles]
GO
ALTER TABLE [dbo].[WorkflowActivities]  WITH NOCHECK ADD  CONSTRAINT [FK_WorkflowActivities_Teams] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([TeamId])
GO
ALTER TABLE [dbo].[WorkflowActivities] NOCHECK CONSTRAINT [FK_WorkflowActivities_Teams]
GO
ALTER TABLE [dbo].[ServiceProviderProducts]  WITH NOCHECK ADD  CONSTRAINT [FK_ServiceProviderProducts_ProductServices] FOREIGN KEY([ProductServiceId])
REFERENCES [dbo].[ProductServices] ([ProductServiceId])
GO
ALTER TABLE [dbo].[ServiceProviderProducts] NOCHECK CONSTRAINT [FK_ServiceProviderProducts_ProductServices]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK__Complaint__TypeO__06EE9736] FOREIGN KEY([TypeOfRegistrationListValueId])
REFERENCES [dbo].[ListValues] ([ListValueId])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK__Complaint__TypeO__06EE9736]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK__Complaint__TypeO__198248BD] FOREIGN KEY([TypeOfRegistrationListValueId])
REFERENCES [dbo].[ListValues] ([ListValueId])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK__Complaint__TypeO__198248BD]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK__Complaint__TypeO__1A766CF6] FOREIGN KEY([TypeOfRegistrationListValueId])
REFERENCES [dbo].[ListValues] ([ListValueId])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK__Complaint__TypeO__1A766CF6]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK__Complaint__TypeO__373CC8D6] FOREIGN KEY([TypeOfRegistrationListValueId])
REFERENCES [dbo].[ListValues] ([ListValueId])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK__Complaint__TypeO__373CC8D6]
GO
ALTER TABLE [dbo].[Complaints]  WITH NOCHECK ADD  CONSTRAINT [FK_Complaints_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([CompanyId])
GO
ALTER TABLE [dbo].[Complaints] NOCHECK CONSTRAINT [FK_Complaints_Companies]
GO
ALTER TABLE [dbo].[Complaints]  WITH NOCHECK ADD  CONSTRAINT [FK_Complaints_Contacts] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Complaints] NOCHECK CONSTRAINT [FK_Complaints_Contacts]
GO
ALTER TABLE [dbo].[Complaints]  WITH NOCHECK ADD  CONSTRAINT [FK_Complaints_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[Complaints] NOCHECK CONSTRAINT [FK_Complaints_Divisions]
GO
ALTER TABLE [dbo].[Activities]  WITH NOCHECK ADD  CONSTRAINT [FK_Activities_ActivitityTypes] FOREIGN KEY([ActivityTypeId])
REFERENCES [dbo].[ActivityTypes] ([ActivityTypeId])
GO
ALTER TABLE [dbo].[Activities] NOCHECK CONSTRAINT [FK_Activities_ActivitityTypes]
GO
ALTER TABLE [dbo].[Activities]  WITH NOCHECK ADD  CONSTRAINT [FK_Activities_ActivityLocationTypes] FOREIGN KEY([ActivityLocationTypeId])
REFERENCES [dbo].[ActivityLocationTypes] ([ActivityLocationTypeId])
GO
ALTER TABLE [dbo].[Activities] NOCHECK CONSTRAINT [FK_Activities_ActivityLocationTypes]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_Campaigns] FOREIGN KEY([CampaignId])
REFERENCES [dbo].[Campaigns] ([CampaignId])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_Campaigns]
GO
ALTER TABLE [dbo].[Activities]  WITH NOCHECK ADD  CONSTRAINT [FK_Activities_Contacts] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Activities] NOCHECK CONSTRAINT [FK_Activities_Contacts]
GO
ALTER TABLE [dbo].[Activities]  WITH NOCHECK ADD  CONSTRAINT [FK_Activities_ReferenceTypes] FOREIGN KEY([ReferenceTypeId])
REFERENCES [dbo].[ReferenceTypes] ([ReferenceTypeId])
GO
ALTER TABLE [dbo].[Activities] NOCHECK CONSTRAINT [FK_Activities_ReferenceTypes]
GO
ALTER TABLE [dbo].[Activities]  WITH NOCHECK ADD  CONSTRAINT [FK_Activities_ResultTypes] FOREIGN KEY([ResultTypeId])
REFERENCES [dbo].[ResultTypes] ([ResultTypeId])
GO
ALTER TABLE [dbo].[Activities] NOCHECK CONSTRAINT [FK_Activities_ResultTypes]
GO
ALTER TABLE [dbo].[Activities]  WITH NOCHECK ADD  CONSTRAINT [FK_Activities_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[ClientRoles] ([ClientRoleId])
GO
ALTER TABLE [dbo].[Activities] NOCHECK CONSTRAINT [FK_Activities_Roles]
GO
ALTER TABLE [dbo].[Activities]  WITH NOCHECK ADD  CONSTRAINT [FK_Activities_Teams] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([TeamId])
GO
ALTER TABLE [dbo].[Activities] NOCHECK CONSTRAINT [FK_Activities_Teams]
GO
ALTER TABLE [dbo].[Activities]  WITH NOCHECK ADD  CONSTRAINT [FK_Activities_TimeUnits] FOREIGN KEY([DurationTimeUnitId])
REFERENCES [dbo].[TimeUnits] ([TimeUnitId])
GO
ALTER TABLE [dbo].[Activities] NOCHECK CONSTRAINT [FK_Activities_TimeUnits]
GO
ALTER TABLE [dbo].[Activities]  WITH NOCHECK ADD  CONSTRAINT [FK_Activities_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Activities] NOCHECK CONSTRAINT [FK_Activities_Users]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_WorkflowActivities] FOREIGN KEY([WorkflowActivityId])
REFERENCES [dbo].[WorkflowActivities] ([WorkflowActivityId])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_WorkflowActivities]
GO
ALTER TABLE [dbo].[Opportunities]  WITH CHECK ADD  CONSTRAINT [FK_Opportunities_Campaigns] FOREIGN KEY([CampaignId])
REFERENCES [dbo].[Campaigns] ([CampaignId])
GO
ALTER TABLE [dbo].[Opportunities] CHECK CONSTRAINT [FK_Opportunities_Campaigns]
GO
ALTER TABLE [dbo].[Opportunities]  WITH NOCHECK ADD  CONSTRAINT [FK_Opportunities_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([CompanyId])
GO
ALTER TABLE [dbo].[Opportunities] NOCHECK CONSTRAINT [FK_Opportunities_Companies]
GO
ALTER TABLE [dbo].[Opportunities]  WITH NOCHECK ADD  CONSTRAINT [FK_Opportunities_Contacts] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Opportunities] NOCHECK CONSTRAINT [FK_Opportunities_Contacts]
GO
ALTER TABLE [dbo].[Opportunities]  WITH NOCHECK ADD  CONSTRAINT [FK_Opportunities_Opportunities] FOREIGN KEY([ParentOpportunityId])
REFERENCES [dbo].[Opportunities] ([OpportunityId])
GO
ALTER TABLE [dbo].[Opportunities] NOCHECK CONSTRAINT [FK_Opportunities_Opportunities]
GO
ALTER TABLE [dbo].[Opportunities]  WITH NOCHECK ADD  CONSTRAINT [FK_Opportunities_OpportunityPhases] FOREIGN KEY([OpportunityPhaseId])
REFERENCES [dbo].[OpportunityPhases] ([OpportunityPhaseId])
GO
ALTER TABLE [dbo].[Opportunities] NOCHECK CONSTRAINT [FK_Opportunities_OpportunityPhases]
GO
ALTER TABLE [dbo].[Opportunities]  WITH NOCHECK ADD  CONSTRAINT [FK_Opportunities_OpportunityTypes] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[Opportunities] NOCHECK CONSTRAINT [FK_Opportunities_OpportunityTypes]
GO
ALTER TABLE [dbo].[Opportunities]  WITH NOCHECK ADD  CONSTRAINT [FK_Opportunities_OpprotunitySubStatuses] FOREIGN KEY([OpportunitySubStatusId])
REFERENCES [dbo].[OpportunitySubStatuses] ([OpportunitySubStatusId])
GO
ALTER TABLE [dbo].[Opportunities] NOCHECK CONSTRAINT [FK_Opportunities_OpprotunitySubStatuses]
GO
ALTER TABLE [dbo].[Opportunities]  WITH CHECK ADD  CONSTRAINT [FK_Opportunities_WorkflowActivities] FOREIGN KEY([WorkFlowActivityId])
REFERENCES [dbo].[WorkflowActivities] ([WorkflowActivityId])
GO
ALTER TABLE [dbo].[Opportunities] CHECK CONSTRAINT [FK_Opportunities_WorkflowActivities]
GO
ALTER TABLE [dbo].[ContactProducts]  WITH NOCHECK ADD  CONSTRAINT [FK_ContactProducts_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([CompanyId])
GO
ALTER TABLE [dbo].[ContactProducts] NOCHECK CONSTRAINT [FK_ContactProducts_Companies]
GO
ALTER TABLE [dbo].[ContactProducts]  WITH NOCHECK ADD  CONSTRAINT [FK_ContactProducts_Contacts] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[ContactProducts] NOCHECK CONSTRAINT [FK_ContactProducts_Contacts]
GO
ALTER TABLE [dbo].[ContactProducts]  WITH NOCHECK ADD  CONSTRAINT [FK_ContactProducts_Opportunities] FOREIGN KEY([OpportunityId])
REFERENCES [dbo].[Opportunities] ([OpportunityId])
GO
ALTER TABLE [dbo].[ContactProducts] NOCHECK CONSTRAINT [FK_ContactProducts_Opportunities]
GO
ALTER TABLE [dbo].[ContactProducts]  WITH NOCHECK ADD  CONSTRAINT [FK_ContactProducts_ProductServices] FOREIGN KEY([ProductServiceId])
REFERENCES [dbo].[ProductServices] ([ProductServiceId])
GO
ALTER TABLE [dbo].[ContactProducts] NOCHECK CONSTRAINT [FK_ContactProducts_ProductServices]
GO
ALTER TABLE [dbo].[ContactProducts]  WITH NOCHECK ADD  CONSTRAINT [FK_ContactProducts_ProductServices1] FOREIGN KEY([ReplaceWithProductServiceId])
REFERENCES [dbo].[ProductServices] ([ProductServiceId])
GO
ALTER TABLE [dbo].[ContactProducts] NOCHECK CONSTRAINT [FK_ContactProducts_ProductServices1]
GO
ALTER TABLE [dbo].[ContactProducts]  WITH NOCHECK ADD  CONSTRAINT [FK_ContactProducts_ServiceProviderProducts] FOREIGN KEY([ServiceProviderProductId])
REFERENCES [dbo].[ServiceProviderProducts] ([ServiceProviderProductId])
GO
ALTER TABLE [dbo].[ContactProducts] NOCHECK CONSTRAINT [FK_ContactProducts_ServiceProviderProducts]
GO
ALTER TABLE [dbo].[ContactProducts]  WITH NOCHECK ADD  CONSTRAINT [FK_ContactProducts_Users] FOREIGN KEY([AdvisorUserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[ContactProducts] NOCHECK CONSTRAINT [FK_ContactProducts_Users]
GO
ALTER TABLE [dbo].[Product_Damage]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Damage_ContactProducts] FOREIGN KEY([ContactProductId])
REFERENCES [dbo].[ContactProducts] ([ContactProductId])
GO
ALTER TABLE [dbo].[Product_Damage] NOCHECK CONSTRAINT [FK_Product_Damage_ContactProducts]
GO
ALTER TABLE [dbo].[Product_AOVInabilityInsurance]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_AOVInabilityInsurance_ContactProducts] FOREIGN KEY([ContactProductId])
REFERENCES [dbo].[ContactProducts] ([ContactProductId])
GO
ALTER TABLE [dbo].[Product_AOVInabilityInsurance] NOCHECK CONSTRAINT [FK_Product_AOVInabilityInsurance_ContactProducts]
GO
ALTER TABLE [dbo].[Claims]  WITH CHECK ADD  CONSTRAINT [FK__Claims__TypeOfRe__4B43C183] FOREIGN KEY([TypeOfRegistrationListValueId])
REFERENCES [dbo].[ListValues] ([ListValueId])
GO
ALTER TABLE [dbo].[Claims] CHECK CONSTRAINT [FK__Claims__TypeOfRe__4B43C183]
GO
ALTER TABLE [dbo].[Claims]  WITH NOCHECK ADD  CONSTRAINT [FK_Claims_ClaimResults] FOREIGN KEY([ClaimResultId])
REFERENCES [dbo].[ClaimResults] ([ClaimResultId])
GO
ALTER TABLE [dbo].[Claims] NOCHECK CONSTRAINT [FK_Claims_ClaimResults]
GO
ALTER TABLE [dbo].[Claims]  WITH NOCHECK ADD  CONSTRAINT [FK_Claims_ClaimSubStatuses] FOREIGN KEY([ClaimSubStatusId])
REFERENCES [dbo].[ClaimSubStatuses] ([ClaimSubStatusId])
GO
ALTER TABLE [dbo].[Claims] NOCHECK CONSTRAINT [FK_Claims_ClaimSubStatuses]
GO
ALTER TABLE [dbo].[Claims]  WITH NOCHECK ADD  CONSTRAINT [FK_Claims_ClaimTypes] FOREIGN KEY([ClaimTypeId])
REFERENCES [dbo].[ClaimTypes] ([ClaimTypeId])
GO
ALTER TABLE [dbo].[Claims] NOCHECK CONSTRAINT [FK_Claims_ClaimTypes]
GO
ALTER TABLE [dbo].[Claims]  WITH NOCHECK ADD  CONSTRAINT [FK_Claims_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([CompanyId])
GO
ALTER TABLE [dbo].[Claims] NOCHECK CONSTRAINT [FK_Claims_Companies]
GO
ALTER TABLE [dbo].[Claims]  WITH NOCHECK ADD  CONSTRAINT [FK_Claims_DamageTypes] FOREIGN KEY([DamageTypeId])
REFERENCES [dbo].[DamageTypes] ([DamageTypeId])
GO
ALTER TABLE [dbo].[Claims] NOCHECK CONSTRAINT [FK_Claims_DamageTypes]
GO
ALTER TABLE [dbo].[Claims]  WITH NOCHECK ADD  CONSTRAINT [FK_Claims_Product_AOVInabilityInsurance] FOREIGN KEY([Product_AOVInabilityInsuranceId])
REFERENCES [dbo].[Product_AOVInabilityInsurance] ([Product_AOVInabilityInsuranceId])
GO
ALTER TABLE [dbo].[Claims] NOCHECK CONSTRAINT [FK_Claims_Product_AOVInabilityInsurance]
GO
ALTER TABLE [dbo].[Claims]  WITH NOCHECK ADD  CONSTRAINT [FK_Claims_Product_Damage1] FOREIGN KEY([Product_DamageId])
REFERENCES [dbo].[Product_Damage] ([Product_DamageId])
GO
ALTER TABLE [dbo].[Claims] NOCHECK CONSTRAINT [FK_Claims_Product_Damage1]
GO
ALTER TABLE [dbo].[Claims]  WITH NOCHECK ADD  CONSTRAINT [FK_Claims_Users] FOREIGN KEY([AssignedUserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Claims] NOCHECK CONSTRAINT [FK_Claims_Users]
GO

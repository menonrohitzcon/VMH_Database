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
CREATE TABLE [dbo].[OpprotunityProductServices](
	[OpprotunityProductServiceId] [uniqueidentifier] NOT NULL,
	[OpportunityId] [uniqueidentifier] NULL,
	[ProductServiceId] [uniqueidentifier] NULL,
	[ServiceProviderProductId] [uniqueidentifier] NULL,
	[ContactProductId] [uniqueidentifier] NULL,
	[InvoiceCharges] [money] NULL,
	[ProductServiceStatusListValueId] [uniqueidentifier] NULL,
	[Description] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdvisoryComments] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationComments] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerComments] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DateConfirmed] [datetime] NULL,
	[IsActive] [bit] NULL,
	[ManualOverrrideFlag] [bit] NULL,
	[AdvisoryCharges] [money] NULL,
	[ApplicationCharges] [money] NULL,
	[VAT] [money] NULL,
	[IsConfirmed] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductStatus] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClientFollows] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Advice] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EstimateCharges] [money] NULL,
	[InvoiceStatus] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__Opprotuni__Invoi__153294EC]  DEFAULT ('P'),
	[ProductServiceSubjectCategory] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationProductDetails] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContinuationAnotherProduct] [bit] NULL,
	[ModifyingCurrentProduct] [bit] NULL,
	[UnchangedContinuation] [bit] NULL,
	[EndingwithoutReplacement] [bit] NULL,
	[ContinuationAnotherProductReccomendation] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ModifyingCurrentProductRecommendation] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UnchangedContinuationRecommendation] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EndingwithoutReplacementRecommendation] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UnchangedContinuationMotivation] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContinuationAnotherProductMotivation] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EndingwithoutReplacementMotivation] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ModifyingCurrentProductMotivation] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsCamparisionProduct] [bit] NULL,
	[DetailedDescription] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Summary] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClientFollowsDetails] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdvisoryDescription] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationInstructions] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClientConclusion] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdvisoryStatus] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsSendToClientPage] [bit] NULL,
	[IsDashboardFlag] [bit] NULL,
	[FreeAndReaalStatus] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[AdvisoryRecommnedation] [nchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_OpprotunityProductServices] PRIMARY KEY CLUSTERED 
(
	[OpprotunityProductServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpportunityProductRelations](
	[OpportunityProductRelationId] [uniqueidentifier] NOT NULL,
	[OpprotunityProductServiceId] [uniqueidentifier] NOT NULL,
	[RelatedToOpprotunityProductServiceId] [uniqueidentifier] NOT NULL,
	[AdvisoryConclusion] [bit] NULL,
	[IsReplacementProduct] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_OpportunityProductRelations] PRIMARY KEY CLUSTERED 
(
	[OpportunityProductRelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vw_AllCamparisionProducts] as

Select

			--OpprotunityProductServices.OpprotunityProductServiceId,
			OpportunityProductRelations.OpprotunityProductServiceId,
			OpportunityProductRelations.RelatedToOpprotunityProductServiceId,
			OpprotunityProductServices.OpportunityId,
			LineOfBusinesses.LineOfBusiness as OpportunityType,
								ProductServices.ProductServiceId,
	 

			

			ProductServices.ProductServiceName as ProductServiceName,
			OpprotunityProductServices.ServiceProviderProductId,
			ServiceProviderProducts.ProductName,
			 ServiceProviderProducts.ServiceProviderListValueId,
			
		
		   ServiceProvider.ListValue as ServiceProvider,
			
			ProductServiceSubtypes.ProductServiceSubtypeId,
	
	--	ProductServiceSubtypes.ProductServiceSubTypeName,
	 ProductServiceSubtypes.ProductServiceSubTypeName,

			OpprotunityProductServices.ContactProductId,
		--	ContactProductServicess.ProductServiceName ContactProductName,
			OpprotunityProductServices.InvoiceCharges,
			OpprotunityProductServices.ProductServiceStatusListValueId,
			ProductServiceStatus.ListValue as ProductServiceStatusListValue,
			OpprotunityProductServices.Description,
			OpprotunityProductServices.AdvisoryComments,
			OpprotunityProductServices.ApplicationComments,
			OpprotunityProductServices.CustomerComments,
			OpprotunityProductServices.DateConfirmed,
			OpprotunityProductServices.IsActive,
			OpprotunityProductServices.AdvisoryCharges,
			OpprotunityProductServices.ApplicationCharges,
			OpprotunityProductServices.VAT,
			-- OpprotunityProductServices.IsConfirmed,
			ManualOverrrideFlag,
			OpprotunityProductServices.ProductStatus,
			OpprotunityProductServices.Advice,
			OpprotunityProductServices.ClientFollows,   
			OpprotunityProductServices.ProductServiceSubjectCategory,
			OpprotunityProductServices.EstimateCharges,
       -- ProductType.ProductServiceName as ServiceProviderProductType,
			OpprotunityProductServices.CreatedBy,
			Concat(Created.FirstName,' ',Created.LastName) as CreatedName,

			OpprotunityProductServices.CreatedDateTime,
			ISNULL(OpprotunityProductServices.ClientConclusion,'') as ClientConclusion,
			ISNULL(OpprotunityProductServices.AdvisoryStatus,'') as AdvisoryStatus,
			OpprotunityProductServices.UpdatedBy,
			Concat(Updated.FirstName,' ',Updated.LastName) as UpdatedByName,
			OpprotunityProductServices.UpdatedDateTime,
			OpprotunityProductServices.IsConfirmed,
			--ProductType.ProductServiceName as product,
			OpprotunityProductServices.IsCamparisionProduct
			-- '<a target="" href=/CaseDashBoard/ApplicationConfirmation/'+ convert(nvarchar(36),OpprotunityProductServices.OpprotunityProductServiceId )+'>' as IsConfirmed			
From OpportunityProductRelations
inner join  OpprotunityProductServices
ON OpportunityProductRelations.RelatedToOpprotunityProductServiceId=OpprotunityProductServices.OpprotunityProductServiceId
Left Outer join Opportunities
ON OpprotunityProductServices.OpportunityId=Opportunities.OpportunityId

Left Outer join ServiceProviderProducts
ON OpprotunityProductServices.ServiceProviderProductId=ServiceProviderProducts.ServiceProviderProductId
Left Outer Join ProductServices
ON ServiceProviderProducts.ProductServiceId=ProductServices.ProductServiceId
Left Outer Join ProductServiceSubtypes
ON ProductServices.ProductServiceSubtypeId=ProductServiceSubtypes.ProductServiceSubtypeId
Left Outer Join ContactProducts
ON OpprotunityProductServices.ContactProductId=ContactProducts.ContactProductId
Left Outer Join ListValues as ProductServiceStatus
ON OpprotunityProductServices.ProductServiceStatusListValueId=ProductServiceStatus.ListValueId
Left join LineOfBusinesses
ON Opportunities.LineOfBusinessId=LineOfBusinesses.LineOfBusinessId


Left Outer join ListValues as ServiceProvider
ON ServiceProviderProducts.ServiceProviderListValueId=ServiceProvider.ListValueId




Left Outer Join Users as Created
ON OpprotunityProductServices.CreatedBy=Created.UserId
Left Outer Join Users as Updated 
ON OpprotunityProductServices.UpdatedBy=Updated.UserId

Where OpprotunityProductServices.IsActive=1




			



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
ALTER TABLE [dbo].[ClientRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientRoles_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ClientRoles] NOCHECK CONSTRAINT [FK_ClientRoles_Clients]
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
ALTER TABLE [dbo].[ProductServiceTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductServiceTypes_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ProductServiceTypes] NOCHECK CONSTRAINT [FK_ProductServiceTypes_Clients]
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
ALTER TABLE [dbo].[Teams]  WITH NOCHECK ADD  CONSTRAINT [FK_Teams_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[Teams] NOCHECK CONSTRAINT [FK_Teams_Divisions]
GO
ALTER TABLE [dbo].[SourceTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_SourceTypes_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[SourceTypes] NOCHECK CONSTRAINT [FK_SourceTypes_Divisions]
GO
ALTER TABLE [dbo].[ProductServiceSubtypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductServiceSubtypes_ProductServiceTypes] FOREIGN KEY([ProductServiceTypeId])
REFERENCES [dbo].[ProductServiceTypes] ([ProductServiceTypeId])
GO
ALTER TABLE [dbo].[ProductServiceSubtypes] NOCHECK CONSTRAINT [FK_ProductServiceSubtypes_ProductServiceTypes]
GO
ALTER TABLE [dbo].[ContactTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ContactTypes_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[ContactTypes] NOCHECK CONSTRAINT [FK_ContactTypes_Divisions]
GO
ALTER TABLE [dbo].[CampaignTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_CampaignTypes_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[CampaignTypes] NOCHECK CONSTRAINT [FK_CampaignTypes_Divisions]
GO
ALTER TABLE [dbo].[LineOfBusinesses]  WITH NOCHECK ADD  CONSTRAINT [FK_LineOfBusinesses_LineOfBusinessCategories] FOREIGN KEY([LineOfBusinessCategoryId])
REFERENCES [dbo].[LineOfBusinessCategories] ([LineOfBusinessCategoryId])
GO
ALTER TABLE [dbo].[LineOfBusinesses] NOCHECK CONSTRAINT [FK_LineOfBusinesses_LineOfBusinessCategories]
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
ALTER TABLE [dbo].[ProductServices]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductServices_ProductServiceSubtypes] FOREIGN KEY([ProductServiceSubtypeId])
REFERENCES [dbo].[ProductServiceSubtypes] ([ProductServiceSubtypeId])
GO
ALTER TABLE [dbo].[ProductServices] NOCHECK CONSTRAINT [FK_ProductServices_ProductServiceSubtypes]
GO
ALTER TABLE [dbo].[ReferenceTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ReferenceTypes_LineOfBusinesses] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[ReferenceTypes] NOCHECK CONSTRAINT [FK_ReferenceTypes_LineOfBusinesses]
GO
ALTER TABLE [dbo].[OpportunitySubStatuses]  WITH NOCHECK ADD  CONSTRAINT [FK_OpprotunitySubStatuses_OpportunityTypes] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[OpportunitySubStatuses] NOCHECK CONSTRAINT [FK_OpprotunitySubStatuses_OpportunityTypes]
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
ALTER TABLE [dbo].[OpprotunityProductServices]  WITH NOCHECK ADD  CONSTRAINT [FK_OpprotunityProductServices_ContactProducts] FOREIGN KEY([ContactProductId])
REFERENCES [dbo].[ContactProducts] ([ContactProductId])
GO
ALTER TABLE [dbo].[OpprotunityProductServices] NOCHECK CONSTRAINT [FK_OpprotunityProductServices_ContactProducts]
GO
ALTER TABLE [dbo].[OpprotunityProductServices]  WITH NOCHECK ADD  CONSTRAINT [FK_OpprotunityProductServices_Opportunities] FOREIGN KEY([OpportunityId])
REFERENCES [dbo].[Opportunities] ([OpportunityId])
GO
ALTER TABLE [dbo].[OpprotunityProductServices] NOCHECK CONSTRAINT [FK_OpprotunityProductServices_Opportunities]
GO
ALTER TABLE [dbo].[OpprotunityProductServices]  WITH NOCHECK ADD  CONSTRAINT [FK_OpprotunityProductServices_ProductServices] FOREIGN KEY([ProductServiceId])
REFERENCES [dbo].[ProductServices] ([ProductServiceId])
GO
ALTER TABLE [dbo].[OpprotunityProductServices] NOCHECK CONSTRAINT [FK_OpprotunityProductServices_ProductServices]
GO
ALTER TABLE [dbo].[OpprotunityProductServices]  WITH NOCHECK ADD  CONSTRAINT [FK_OpprotunityProductServices_ServiceProviderProducts] FOREIGN KEY([ServiceProviderProductId])
REFERENCES [dbo].[ServiceProviderProducts] ([ServiceProviderProductId])
GO
ALTER TABLE [dbo].[OpprotunityProductServices] NOCHECK CONSTRAINT [FK_OpprotunityProductServices_ServiceProviderProducts]
GO
ALTER TABLE [dbo].[OpportunityProductRelations]  WITH NOCHECK ADD  CONSTRAINT [FK_OpportunityProductRelations_OpprotunityProductServices] FOREIGN KEY([OpprotunityProductServiceId])
REFERENCES [dbo].[OpprotunityProductServices] ([OpprotunityProductServiceId])
GO
ALTER TABLE [dbo].[OpportunityProductRelations] NOCHECK CONSTRAINT [FK_OpportunityProductRelations_OpprotunityProductServices]
GO
ALTER TABLE [dbo].[OpportunityProductRelations]  WITH NOCHECK ADD  CONSTRAINT [FK_OpportunityProductRelations_OpprotunityProductServices1] FOREIGN KEY([RelatedToOpprotunityProductServiceId])
REFERENCES [dbo].[OpprotunityProductServices] ([OpprotunityProductServiceId])
GO
ALTER TABLE [dbo].[OpportunityProductRelations] NOCHECK CONSTRAINT [FK_OpportunityProductRelations_OpprotunityProductServices1]
GO

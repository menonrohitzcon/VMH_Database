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
ALTER TABLE [dbo].[Clients]  WITH NOCHECK ADD  CONSTRAINT [FK_Clients_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([RegionId])
GO
ALTER TABLE [dbo].[Clients] NOCHECK CONSTRAINT [FK_Clients_Regions]
GO
ALTER TABLE [dbo].[TimeUnits]  WITH NOCHECK ADD  CONSTRAINT [FK_TimeUnits_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[TimeUnits] NOCHECK CONSTRAINT [FK_TimeUnits_Clients]
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
ALTER TABLE [dbo].[ReferenceTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ReferenceTypes_LineOfBusinesses] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[ReferenceTypes] NOCHECK CONSTRAINT [FK_ReferenceTypes_LineOfBusinesses]
GO
ALTER TABLE [dbo].[ResultTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ResultTypes_LineOfBusinesses] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[ResultTypes] NOCHECK CONSTRAINT [FK_ResultTypes_LineOfBusinesses]
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

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
CREATE View [dbo].[VW_AllClaims] as 
SELECT	Claims.ClaimId as ID,
		Claims.ClaimTypeId,
		ClaimType.ClaimType,
		Claims.TypeOfRegistrationListValueId as TypeOfRegistration,
		Claims.CompanyId,
		Companies.CompanyName,
		Claims.ContactId,
		Contacts.FirstName +' '+Contacts.LastName as ContactName, 		
		Claims.Product_DamageId,
		cast(Product_Damage.ProductName as varchar(1000))as ProductDamage,
		Claims.Product_AOVInabilityInsuranceId,
		cast(Product_AOVInabilityInsurance.ProductName as varchar(1000)) AOVProduct,
		FORMAT(Claims.DateOfOccurence,'d',Regions.Culture) DateOfOccurence,
		cast(Claims.TimeOfOccurence as varchar(50)) as TimeOfOccurence ,
		FORMAT(Claims.DateReported,'d',Regions.Culture) DateReported,
		cast(Claims.TimeReported as varchar(50)) as TimeReported,
		Claims.DamageTypeId,
		DamageType.DamageType as DamageType,
		Claims.Description,		
		Claims.MotorVehicleDetails,
		Claims.EmailAddress,
		Claims.TeamId,
		Teams.TeamName,
		Claims.AssignedUserId,		
		AssignedUser.FirstName + ' ' +AssignedUser.Prefix + ' ' + AssignedUser.LastName as AssignedUser,
		Claims.DamagedObjectDetails,
		Claims.DamageCauseListValueId,
		DamageCause.ListValue as DamageCause,
		Claims.DamageOccuredLocation,
		Claims.ReferenceNo,
		Claims.ClaimSubStatusId,
		case Regions.LanguageNumber
		when 1 then IsNull(ClaimSubStatuses.SubStatus1,'')
		when 2 then IsNull(ClaimSubStatuses.SubStatus2,'')
		when 3 then IsNull(ClaimSubStatuses.SubStatus3,'')
		when 4 then IsNull(ClaimSubStatuses.SubStatus4,'')
		ELSE IsNull(ClaimSubStatuses.Substatus,'') END as ClaimSubStatus,
		Claims.ClaimResultId,
		case Regions.LanguageNumber
		when 1 then IsNull(ClaimResults.ClaimResult1,'')
		when 2 then IsNull(ClaimResults.ClaimResult2,'')
		when 3 then IsNull(ClaimResults.ClaimResult3,'')
		when 4 then IsNull(ClaimResults.ClaimResult4,'')
		ELSE IsNull(ClaimResults.ClaimResult,'') END as ClaimResult,
		Claims.PreferedContactMethodListValueId,
		ListValues.ListValue as PreferedContact,
		IsNull(Claims.OwnFaultFlag,0) OwnFaultFlag,
		IsNull(Claims.OtherFaultFlag,0) OtherFaultFlag,
		IsNull(Claims.DamagesPaidFlag,0) DamagesPaidFlag,
		IsNull(Claims.ReviewSatisfactionFlag,0) ReviewSatisfactionFlag,
		IsNull(Claims.GenerateDocument,0) GenerateDocumentFlag,
		Claims.CreatedBy as CreatedById,
		CreatedBy.FirstName + ' ' +CreatedBy.Prefix + ' ' + CreatedBy.LastName as CreatedBy,
		FORMAT(Claims.CreatedDateTime,'g',Regions.Culture) CreatedDateTime,
		Claims.UpdatedBy as UpdatedById,
		UpdatedBy.FirstName + ' ' +UpdatedBy.Prefix + ' ' + UpdatedBy.LastName as UpdatedBy,
		FORMAT(Claims.UpdatedDateTime,'g',Regions.Culture) UpdatedDateTime

		from Claims
		inner join ClaimTypes as ClaimType
		on ClaimType.ClaimTypeId = Claims.ClaimTypeId
		left join ClaimSubStatuses 
		on ClaimSubStatuses.ClaimSubStatusId=Claims.ClaimSubStatusId
		left join ClaimResults 
		on ClaimResults.ClaimResultId = Claims.ClaimResultId
		Left Outer join Contacts
		on Contacts.ContactId = Claims.ContactId

		Left Outer join Companies
		on Companies.CompanyId = Claims.CompanyId

		Left Outer join Product_Damage
		on Product_Damage.Product_DamageId = Claims.Product_DamageId

		Left Outer join Product_AOVInabilityInsurance
		on Product_AOVInabilityInsurance.Product_AOVInabilityInsuranceId = Claims.Product_AOVInabilityInsuranceId

		Left Outer join DamageTypes as DamageType
		on DamageType.DamageTypeId = Claims.DamageTypeId

		Left Outer join Teams
		on Teams.TeamId = Claims.TeamId

		Left outer join Users as AssignedUser
		on AssignedUser.UserId = Claims.AssignedUserId

		Left outer join ListValues DamageCause
		on DamageCause.ListValueId = Claims.DamageCauseListValueId

		Left outer join ListValues
		on ListValues.ListValueId = Claims.PreferedContactMethodListValueId

		Left Outer Join Users as CreatedBy
		On CreatedBy.UserId = Claims.CreatedBy
		Left Outer Join Users as UpdatedBy
		On UpdatedBy.UserId = Claims.UpdatedBy
		Left Outer join Clients as Client
		on Client.ClientId = ClaimType.ClientId
		Left Outer Join Regions
		on Regions.RegionId = Client.RegionId






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
ALTER TABLE [dbo].[ProductServiceTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ProductServiceTypes_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ProductServiceTypes] NOCHECK CONSTRAINT [FK_ProductServiceTypes_Clients]
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
ALTER TABLE [dbo].[ReferenceTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ReferenceTypes_LineOfBusinesses] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[ReferenceTypes] NOCHECK CONSTRAINT [FK_ReferenceTypes_LineOfBusinesses]
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
ALTER TABLE [dbo].[ServiceProviderProducts]  WITH NOCHECK ADD  CONSTRAINT [FK_ServiceProviderProducts_ProductServices] FOREIGN KEY([ProductServiceId])
REFERENCES [dbo].[ProductServices] ([ProductServiceId])
GO
ALTER TABLE [dbo].[ServiceProviderProducts] NOCHECK CONSTRAINT [FK_ServiceProviderProducts_ProductServices]
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

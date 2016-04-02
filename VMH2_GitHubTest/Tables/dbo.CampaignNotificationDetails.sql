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
CREATE TABLE [dbo].[NotificationTemplateTypes](
	[NotificationTemplateTypeId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NOT NULL,
	[NotificationTemplateType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_EmailTemplateTypes] PRIMARY KEY NONCLUSTERED 
(
	[NotificationTemplateTypeId] ASC
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
CREATE TABLE [dbo].[UserEmailConfigurations](
	[UserEmailConfigurationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[EmailName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmailAddress] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FullName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DefaultIncoming] [bit] NULL,
	[DefaultOutgoing] [bit] NULL,
	[EmailServerListValueId] [uniqueidentifier] NULL,
	[IncomingIMAPPOP3] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IncomingServerHostName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IncomingPort] [int] NULL,
	[IncomingSSL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IncomingAuthentication] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IncomingUserName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IncomingPassword] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OutgoingSMTPServer] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OutgoingPort] [int] NULL,
	[OutgoingSSL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OutgoingAuthentication] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OutgoingUserName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OutgoingPassword] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReplytoName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReplytoEmailAddress] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[IsSendGrid] [bit] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ContactEmailConfigurations] PRIMARY KEY NONCLUSTERED 
(
	[UserEmailConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationTemplates](
	[NotificationTemplateId] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NULL,
	[NotificationTemplateTypeId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NOT NULL,
	[IsSecure] [bit] NULL,
	[UserId] [uniqueidentifier] NULL,
	[TemplateCategoryListValueId] [uniqueidentifier] NULL,
	[LineOfBusinessId] [uniqueidentifier] NULL,
	[ActivityTypeId] [uniqueidentifier] NULL,
	[TemplateName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsEMail] [bit] NULL,
	[IsSMS] [bit] NULL,
	[IsPushNotification] [bit] NULL,
	[IsLetter] [bit] NULL,
	[IsWebAlarm] [bit] NULL,
	[Subject] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NotificationText] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmailBCC] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmailCC] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_EmailTemplates] PRIMARY KEY NONCLUSTERED 
(
	[NotificationTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

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
CREATE TABLE [dbo].[CampaignNotificationDetails](
	[CampaignNotificationDetailId] [uniqueidentifier] NOT NULL,
	[CampaignId] [uniqueidentifier] NOT NULL,
	[NotificationTemplateId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StartDate] [datetime] NULL,
	[Objective] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AssignedUserId] [uniqueidentifier] NOT NULL,
	[AssignedUserEmailConfigurationId] [uniqueidentifier] NULL,
	[ReplytoEmailAddress] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FromEmailName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FromEmailAddress] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ReplytoName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_CampaignEmailTemplates] PRIMARY KEY NONCLUSTERED 
(
	[CampaignNotificationDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

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
ALTER TABLE [dbo].[NotificationTemplateTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_EmailTemplateTypes_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[NotificationTemplateTypes] NOCHECK CONSTRAINT [FK_EmailTemplateTypes_Divisions]
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
ALTER TABLE [dbo].[UserEmailConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_UserEmailConfigurations_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserEmailConfigurations] NOCHECK CONSTRAINT [FK_UserEmailConfigurations_Users]
GO
ALTER TABLE [dbo].[NotificationTemplates]  WITH NOCHECK ADD  CONSTRAINT [FK_EmailTemplates_EmailTemplateTypes] FOREIGN KEY([NotificationTemplateTypeId])
REFERENCES [dbo].[NotificationTemplateTypes] ([NotificationTemplateTypeId])
GO
ALTER TABLE [dbo].[NotificationTemplates] NOCHECK CONSTRAINT [FK_EmailTemplates_EmailTemplateTypes]
GO
ALTER TABLE [dbo].[NotificationTemplates]  WITH NOCHECK ADD  CONSTRAINT [FK_EmailTemplates_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[NotificationTemplates] NOCHECK CONSTRAINT [FK_EmailTemplates_Users]
GO
ALTER TABLE [dbo].[NotificationTemplates]  WITH CHECK ADD  CONSTRAINT [FK_NotificationTemplates_ActivityTypes] FOREIGN KEY([ActivityTypeId])
REFERENCES [dbo].[ActivityTypes] ([ActivityTypeId])
GO
ALTER TABLE [dbo].[NotificationTemplates] CHECK CONSTRAINT [FK_NotificationTemplates_ActivityTypes]
GO
ALTER TABLE [dbo].[NotificationTemplates]  WITH NOCHECK ADD  CONSTRAINT [FK_NotificationTemplates_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[NotificationTemplates] NOCHECK CONSTRAINT [FK_NotificationTemplates_Clients]
GO
ALTER TABLE [dbo].[NotificationTemplates]  WITH CHECK ADD  CONSTRAINT [FK_NotificationTemplates_LineOfBusinesses] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[NotificationTemplates] CHECK CONSTRAINT [FK_NotificationTemplates_LineOfBusinesses]
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
ALTER TABLE [dbo].[CampaignNotificationDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_CampaignEmailTemplates_Campaigns] FOREIGN KEY([CampaignId])
REFERENCES [dbo].[Campaigns] ([CampaignId])
GO
ALTER TABLE [dbo].[CampaignNotificationDetails] NOCHECK CONSTRAINT [FK_CampaignEmailTemplates_Campaigns]
GO
ALTER TABLE [dbo].[CampaignNotificationDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_CampaignEmailTemplates_EmailTemplates] FOREIGN KEY([NotificationTemplateId])
REFERENCES [dbo].[NotificationTemplates] ([NotificationTemplateId])
GO
ALTER TABLE [dbo].[CampaignNotificationDetails] NOCHECK CONSTRAINT [FK_CampaignEmailTemplates_EmailTemplates]
GO
ALTER TABLE [dbo].[CampaignNotificationDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_CampaignEmailTemplates_UserEmailConfigurations] FOREIGN KEY([AssignedUserEmailConfigurationId])
REFERENCES [dbo].[UserEmailConfigurations] ([UserEmailConfigurationId])
GO
ALTER TABLE [dbo].[CampaignNotificationDetails] NOCHECK CONSTRAINT [FK_CampaignEmailTemplates_UserEmailConfigurations]
GO
ALTER TABLE [dbo].[CampaignNotificationDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_CampaignEmailTemplates_Users] FOREIGN KEY([AssignedUserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[CampaignNotificationDetails] NOCHECK CONSTRAINT [FK_CampaignEmailTemplates_Users]
GO

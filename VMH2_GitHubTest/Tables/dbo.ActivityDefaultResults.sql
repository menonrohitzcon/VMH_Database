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
CREATE TABLE [dbo].[ActivityDefaultResults](
	[ActivityDefaultResultTypes] [uniqueidentifier] NOT NULL,
	[ActivityTypeId] [uniqueidentifier] NOT NULL,
	[ResultTypeId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_ActivityDefaultResults] PRIMARY KEY CLUSTERED 
(
	[ActivityDefaultResultTypes] ASC
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
ALTER TABLE [dbo].[LineOfBusinesses]  WITH NOCHECK ADD  CONSTRAINT [FK_LineOfBusinesses_LineOfBusinessCategories] FOREIGN KEY([LineOfBusinessCategoryId])
REFERENCES [dbo].[LineOfBusinessCategories] ([LineOfBusinessCategoryId])
GO
ALTER TABLE [dbo].[LineOfBusinesses] NOCHECK CONSTRAINT [FK_LineOfBusinesses_LineOfBusinessCategories]
GO
ALTER TABLE [dbo].[ResultTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ResultTypes_LineOfBusinesses] FOREIGN KEY([LineOfBusinessId])
REFERENCES [dbo].[LineOfBusinesses] ([LineOfBusinessId])
GO
ALTER TABLE [dbo].[ResultTypes] NOCHECK CONSTRAINT [FK_ResultTypes_LineOfBusinesses]
GO
ALTER TABLE [dbo].[ActivityDefaultResults]  WITH NOCHECK ADD  CONSTRAINT [FK_ActivityDefaultResults_ActivitityTypes] FOREIGN KEY([ActivityTypeId])
REFERENCES [dbo].[ActivityTypes] ([ActivityTypeId])
GO
ALTER TABLE [dbo].[ActivityDefaultResults] NOCHECK CONSTRAINT [FK_ActivityDefaultResults_ActivitityTypes]
GO
ALTER TABLE [dbo].[ActivityDefaultResults]  WITH NOCHECK ADD  CONSTRAINT [FK_ActivityDefaultResults_ResultTypes1] FOREIGN KEY([ResultTypeId])
REFERENCES [dbo].[ResultTypes] ([ResultTypeId])
GO
ALTER TABLE [dbo].[ActivityDefaultResults] NOCHECK CONSTRAINT [FK_ActivityDefaultResults_ResultTypes1]
GO

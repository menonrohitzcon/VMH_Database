SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityHistory](
	[ActivityHistoryId] [uniqueidentifier] NOT NULL,
	[ActivityId] [uniqueidentifier] NOT NULL,
	[TargetId] [uniqueidentifier] NULL,
	[ContactId] [uniqueidentifier] NULL,
	[ParentTypeListValueId] [uniqueidentifier] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[GoogleEventId] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RelatedParentTypeListValueId] [uniqueidentifier] NULL,
	[RelatedParentId] [uniqueidentifier] NULL,
	[ActivityTypeId] [uniqueidentifier] NULL,
	[ActivityLocationTypeId] [uniqueidentifier] NULL,
	[ReferenceTypeId] [uniqueidentifier] NULL,
	[ReferenceType] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ResultTypeId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[TeamId] [uniqueidentifier] NULL,
	[ParentActivityId] [uniqueidentifier] NULL,
	[StartDate] [date] NULL,
	[StartTime] [time](7) NULL,
	[Duration] [int] NULL,
	[DurationTimeUnitId] [uniqueidentifier] NULL,
	[DueDate] [date] NULL,
	[DueTime] [time](7) NULL,
	[CompletionDate] [date] NULL,
	[CompletionTime] [time](7) NULL,
	[PrivateActivityFlag] [bit] NULL,
	[LocationName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressStreet] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressHouseNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressCity] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressState] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressPostalCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressCountry] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LocationLongitude] [float] NULL,
	[WorkflowActivityId] [uniqueidentifier] NULL,
	[ActivityPriorityStatus] [bit] NULL,
	[LocationLatitude] [float] NULL,
	[Description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalApplication] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExternalAppKey] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[IsWorkflow] [bit] NULL,
	[SalesProbability] [float] NULL,
	[CampaignId] [uniqueidentifier] NULL,
	[PersonalDetailStatus] [bit] NULL,
	[HomeDetailsStatus] [bit] NULL,
	[IncomeDetailsStatus] [bit] NULL,
	[QuesionDetailsStatus] [bit] NULL,
	[ProfileQuesionStatus] [bit] NULL,
	[ProductServiceStatus] [bit] NULL,
	[PensionDetailsStatus] [bit] NULL,
 CONSTRAINT [PK_ActivityHistory] PRIMARY KEY CLUSTERED 
(
	[ActivityHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[ActivityHistory] ADD  CONSTRAINT [DF__ActivityH__IsWor__3EDDEA9E]  DEFAULT ((0)) FOR [IsWorkflow]
GO
ALTER TABLE [dbo].[ActivityHistory] ADD  CONSTRAINT [DF__ActivityH__Perso__09B5F548]  DEFAULT ((0)) FOR [PersonalDetailStatus]
GO
ALTER TABLE [dbo].[ActivityHistory] ADD  CONSTRAINT [DF__ActivityH__HomeD__0AAA1981]  DEFAULT ((0)) FOR [HomeDetailsStatus]
GO
ALTER TABLE [dbo].[ActivityHistory] ADD  CONSTRAINT [DF__ActivityH__Incom__0B9E3DBA]  DEFAULT ((0)) FOR [IncomeDetailsStatus]
GO
ALTER TABLE [dbo].[ActivityHistory] ADD  CONSTRAINT [DF__ActivityH__Quesi__0C9261F3]  DEFAULT ((0)) FOR [QuesionDetailsStatus]
GO
ALTER TABLE [dbo].[ActivityHistory] ADD  CONSTRAINT [DF__ActivityH__Profi__0D86862C]  DEFAULT ((0)) FOR [ProfileQuesionStatus]
GO
ALTER TABLE [dbo].[ActivityHistory] ADD  CONSTRAINT [DF__ActivityH__Produ__0E7AAA65]  DEFAULT ((0)) FOR [ProductServiceStatus]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Zcon Solutions
-- Create date: 13/03/2015
-- Description:	<Description, ,>
-- =============================================
-- =============================================
CREATE  FUNCTION [dbo].[Fun_SplitStrings]
(    
      @UserTeamId NVARCHAR(MAX)
   
)
RETURNS @Output TABLE (
    Value nvarchar(1000)
	
)
AS
BEGIN
       DECLARE @start INT, @end INT   
	   DECLARE @ID nvarchar(1000)
    SET @start = 1 
	SET @end = CHARINDEX(',',  @UserTeamId)   
    WHILE @start < LEN(@UserTeamId) + 1 BEGIN   
        IF @end = 0    
            SET @end = LEN( @UserTeamId) + 1  
			INSERT into @Output(Value)VALUES(CAST(SUBSTRING(@UserTeamId, @start, @end - @start) as nvarchar(1000)))
			
               
			 

			       
        SET @start = @end + 1   
        SET @end = CHARINDEX(',',@UserTeamId, @start)  
          
    END                    
      
 
      RETURN
END

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
CREATE TABLE [dbo].[NotificationTemplateAttachments](
	[NotificationTemplateAttachmentId] [uniqueidentifier] NOT NULL,
	[NotificationTemplateId] [uniqueidentifier] NOT NULL,
	[AttachmentName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AttachmentPath] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_EmailTemplateAttachments] PRIMARY KEY NONCLUSTERED 
(
	[NotificationTemplateAttachmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[Clients]  WITH NOCHECK ADD  CONSTRAINT [FK_Clients_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([RegionId])
GO
ALTER TABLE [dbo].[Clients] NOCHECK CONSTRAINT [FK_Clients_Regions]
GO
ALTER TABLE [dbo].[ClientRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientRoles_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ClientRoles] NOCHECK CONSTRAINT [FK_ClientRoles_Clients]
GO
ALTER TABLE [dbo].[ActivityTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ActivityTypes_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ActivityTypes] NOCHECK CONSTRAINT [FK_ActivityTypes_Clients]
GO
ALTER TABLE [dbo].[Divisions]  WITH NOCHECK ADD  CONSTRAINT [FK_Divisions_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[Divisions] NOCHECK CONSTRAINT [FK_Divisions_Clients]
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
ALTER TABLE [dbo].[NotificationTemplateTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_EmailTemplateTypes_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[NotificationTemplateTypes] NOCHECK CONSTRAINT [FK_EmailTemplateTypes_Divisions]
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
ALTER TABLE [dbo].[NotificationTemplateAttachments]  WITH NOCHECK ADD  CONSTRAINT [FK_EmailTemplateAttachments_EmailTemplates] FOREIGN KEY([NotificationTemplateId])
REFERENCES [dbo].[NotificationTemplates] ([NotificationTemplateId])
GO
ALTER TABLE [dbo].[NotificationTemplateAttachments] NOCHECK CONSTRAINT [FK_EmailTemplateAttachments_EmailTemplates]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Shital S 
-- Create date:13/05/2015
-- Description:	<Description,,>
-- =============================================
/*

*/
CREATE PROCEDURE [dbo].[sp_AddEditEmailTempates]
(
	@ClientId uniqueidentifier,
	@DivisionId uniqueidentifier,
	@ClientRoleId uniqueidentifier,
	@UserId uniqueidentifier,
	@UserloginDetailId uniqueidentifier,

	@NotificationTemplateId uniqueidentifier,
	@NotificationTemplateTypeId uniqueidentifier,
	@LineOfBusinessId uniqueidentifier,	
	@TemplateName  nvarchar(50),
	@IsEMail bit ,
	@IsSecure bit,
	@IsSMS bit ,
	@IsPushNotification bit ,
	@IsLetter bit ,
	@IsWebAlarm bit ,
	@Subject  nvarchar(255),
	@NotificationText nvarchar(max),
	@Description nvarchar(255),
	@AttachmentName nvarchar(MAX),
    @AttachmentPath nvarchar(MAX),
	
	@EmailCC NVARCHAR(MAX),
	@EmailBCC NVARCHAR(MAX)
)

AS
BEGIN

Declare @Current_DateTime datetime
SET @Current_DateTime=GETDATE()


--temp table for attachments
Create table #Attachhments(id int identity(1,1),Attachment Varchar(100),AttachmentPath Varchar(500))
 insert into #Attachhments(Attachment)
            Select 
			     *
			From Fun_SplitStrings(@AttachmentName)
			
-- Spilt Attachment Path
  Create table #AttachhmentPaths(id int identity(1,1),AttachmentPath Varchar(500))
 insert into #AttachhmentPaths(AttachmentPath)
            Select 
			     *
			From Fun_SplitStrings(@AttachmentPath)

-- Map attachment name with Path
 Update #Attachhments
 SET #Attachhments.AttachmentPath=#AttachhmentPaths.AttachmentPath
 From #Attachhments
 inner Join #AttachhmentPaths
 ON #Attachhments.id=#AttachhmentPaths.id


 declare @NotificationTempId uniqueidentifier

if @NotificationTemplateId is null
	BEGIN 
	
	set @NotificationTempId = newID()
	Insert into NotificationTemplates(
					NotificationTemplateId,
					NotificationTemplateTypeId,
					LineOfBusinessId,
					ClientId,				
					DivisionId ,
					UserId,
					TemplateName,
					IsEMail,
					IsSecure,
					IsSMS,
					IsPushNotification,
					IsLetter,
					IsWebAlarm,
					Subject,
					NotificationText,
					Description,
					IsActive,
					EmailCC,
					EmailBCC,
					CreatedBy,
					CreatedDateTime,
					UpdatedBy,
					UpdatedDateTime
					)
			values(	@NotificationTempId,
					@NotificationTemplateTypeId,
					@LineOfBusinessId,
					@ClientId,	
					@DivisionId ,
					@UserId,
					@TemplateName,
					@IsEMail,
					@IsSecure,
					@IsSMS,
					@IsPushNotification,
					@IsLetter,
					@IsWebAlarm,
					@Subject,
					@NotificationText,
					@Description,
					1,
					@EmailCC,
					@EmailBCC,
					@UserId,
					@Current_DateTime,
					@UserId,
					@Current_DateTime
					)

	END	
ELSE
	BEGIN
	UPDATE  NotificationTemplates SET
			NotificationTemplateId = @NotificationTemplateId,
			NotificationTemplateTypeId=@NotificationTemplateTypeId,
			LineOfBusinessId=@LineOfBusinessId,
			ClientId =@ClientId,			
			DivisionId =@DivisionId,
			UserId = @UserId,
			TemplateName =@TemplateName,
			IsEMail =@IsEMail,
			IsSecure=@IsSecure,
			IsSMS =@IsSMS,
			IsPushNotification =@IsPushNotification,
			IsLetter=@IsLetter,
			IsWebAlarm=@IsWebAlarm,
			Subject=@Subject,
			NotificationText =@NotificationText,
			Description=@Description,
			EmailCC=@EmailCC,
			EmailBCC=@EmailBCC,
			IsActive =1,
			UpdatedBy =@UserId,
			UpdatedDateTime=@Current_DateTime
			WHERE 
			NotificationTemplateId =@NotificationTemplateId		
	END	
	
	--insert into NotificationTemplateAttachments

	declare @NewNotificatTempId uniqueidentifier

	if @NotificationTemplateId is null
	BEGIN 	
	set @NewNotificatTempId = @NotificationTempId
	END
	Else
	BEGIN
	SET @NewNotificatTempId = @NotificationTemplateId
	END

Insert into NotificationTemplateAttachments
 (
			NotificationTemplateAttachmentId,
			NotificationTemplateId,
			AttachmentName,
			AttachmentPath,
			Description,
			IsActive,
			CreatedBy,
			CreatedDateTime
 )
 Select 
	   NewID(),
	   @NewNotificatTempId,
	   #Attachhments.Attachment,
	   #Attachhments.AttachmentPath,
	   @Description,
	   1,                    -- IsActive
	   @USerId,
	   Getdate()
From #Attachhments
	
END

select 'Executed'

GO

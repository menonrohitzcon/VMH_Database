SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ashwini P.
-- Create date: 13/03/2015
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[Fun_GetParentIdName]
(
  @ParentTypeListValueId uniqueidentifier,
  @ParentId Uniqueidentifier
)
RETURNS NVarchar(500)
AS
BEGIN
DECLARE @ParentTypeName Nvarchar(500)
SET @ParentTypeName=(Select ListValues.ListValueCode From ListValues Where ListValueId=@ParentTypeListValueId)

IF @ParentTypeName='TARG'
BEGIN
  SET @ParentTypeName=(Select Targets.FirstName+' '+Targets.MiddleName+' '+Targets.LastName From Targets
                         where Targets.TargetId=@ParentId)

END
ELSE IF @ParentTypeName='USER'
 BEGIN
  SET @ParentTypeName=(Select Users.FirstName+' '+Users.MiddleName+' '+Users.LastName  From Users
                         where Users.UserId=@ParentId)
 
END

ELSE IF @ParentTypeName='CONT'
 BEGIN
  SET @ParentTypeName=(Select Contacts.FirstName+' '+Contacts.MiddleName+' '+Contacts.LastName  From Contacts
                         where Contacts.ContactId=@ParentId)
 
END
 
    RETURN @ParentTypeName


END


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
ALTER TABLE [dbo].[ClientRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientRoles_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[ClientRoles] NOCHECK CONSTRAINT [FK_ClientRoles_Clients]
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
ALTER TABLE [dbo].[Divisions]  WITH NOCHECK ADD  CONSTRAINT [FK_Divisions_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[Divisions] NOCHECK CONSTRAINT [FK_Divisions_Clients]
GO
ALTER TABLE [dbo].[ContactTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ContactTypes_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[ContactTypes] NOCHECK CONSTRAINT [FK_ContactTypes_Divisions]
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

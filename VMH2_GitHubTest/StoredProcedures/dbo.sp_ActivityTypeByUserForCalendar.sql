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
CREATE TABLE [dbo].[ActivityTypeByUserForCalendar](
	[ActivityTypeByUserForCalendarId] [uniqueidentifier] NULL,
	[ActivityTypeId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[IsChecked] [int] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreateDateTime] [datetime] NULL
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
ALTER TABLE [dbo].[ActivityTypeByUserForCalendar]  WITH CHECK ADD FOREIGN KEY([ActivityTypeId])
REFERENCES [dbo].[ActivityTypes] ([ActivityTypeId])
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*  
EXEC sp_ActivityTypeByUserForCalendar
@ClientID='2FA3C1FD-ADE8-4CBE-8F10-DC745F8CB806',  
@DivisionId='4556BC79-4C99-4BDA-90D0-EBF1285C5945',  
@ClientRoleId='FE6F9C67-4E72-4F5E-B31A-E8DB4A00637F',  
@UserId='E4D863AD-78DE-4A91-B10D-94810F492B83',  
@SelectedUserId='E4D863AD-78DE-4A91-B10D-94810F492B83',  
@UserLoginDetailId=null  
*/  
CREATE Procedure [dbo].[sp_ActivityTypeByUserForCalendar] --'2FA3C1FD-ADE8-4CBE-8F10-DC745F8CB806','4556BC79-4C99-4BDA-90D0-EBF1285C5945','3FE878FB-0927-4D4B-AF9F-48B0E2D03661','1C453A61-22CD-49C5-922B-15F3DC70E54D',NULL  
(    
 @ClientId uniqueidentifier,    
 @DivisionId uniqueidentifier,    
 @ClientRoleId uniqueidentifier,    
 @UserId uniqueidentifier,    
 @UserLoginDetailId uniqueidentifier,   
 @SelectedUserId uniqueidentifier
)    
As    
Begin    
  Declare @Culture varchar(50)    
   
  
  select @Culture = IsNull(Regions.Culture,'en-us')     
  from Regions     
  inner join Clients    
  on Clients.RegionId = Regions.RegionId    
    
  
  select ActivityTypes.ActivityTypeId as ID, 
  ActivityTypeByUserForCalendarId, 
  isnull(IsChecked,1) as IsChecked,  
 case R.LanguageNumber   
 when 1 Then Isnull(ActivityTypes.ActivityType1,'')  
 when 2 Then IsNull(ActivityTypes.ActivityType2,'')  
 when 3 Then IsNull(ActivityTypes.ActivityType3,'')   
 when 4 Then IsNull(ActivityTypes.ActivityType4,'')  
 else ActivityTypes.ActivityType  END as ActivityType,    
    ActivityTypes.ActivityTypeCode,    
    ActivityTypes.ClientId,    
    Clients.ClientName,    
    ActivityTypes.Description,    
    ActivityTypes.IsActive,    
    ActivityTypes.CreatedBy as CreatedById,    
    ActivityTypes.CreatedDateTime,     
    ActivityTypes.UpdatedBy  as UpdatedById,    
    ActivityTypes.UpdatedDateTime    
    
  from ActivityTypes    
  inner join Clients    
  on Clients.ClientId = ActivityTypes.ClientId    
  inner join Regions R  
  on R.RegionId = Clients.RegionId  
  left join ActivityTypeByUserForCalendar on ActivityTypeByUserForCalendar.ActivityTypeId=ActivityTypes.ActivityTypeId and ActivityTypeByUserForCalendar.UserId=@SelectedUserId
  where Clients.ClientId = @ClientId  and IsActive=1  
  
  order by ActivityTypes.ActivityType     
END 
GO

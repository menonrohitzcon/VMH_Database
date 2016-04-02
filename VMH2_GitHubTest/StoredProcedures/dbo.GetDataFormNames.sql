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
CREATE TABLE [dbo].[FunctionalityTypes](
	[FunctionalityTypeId] [uniqueidentifier] NOT NULL,
	[FunctionalityType] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FunctionalityTypeCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_FunctionalityTypes] PRIMARY KEY CLUSTERED 
(
	[FunctionalityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

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
CREATE TABLE [dbo].[MainMenuItems](
	[MainMenuItemId] [uniqueidentifier] NOT NULL,
	[DivisionId] [uniqueidentifier] NOT NULL,
	[MainMenu] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SequenceNo] [int] NOT NULL,
	[AllowForAdmin] [bit] NULL,
	[ParentMainMenuItemId] [uniqueidentifier] NULL,
	[ParentTypeListValueId] [uniqueidentifier] NULL,
	[IconImage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[InstantCreateMenuFlag] [bit] NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_MainMenuItems] PRIMARY KEY CLUSTERED 
(
	[MainMenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubMenuItems](
	[SubMenuItemId] [uniqueidentifier] NOT NULL,
	[MainMenuItemId] [uniqueidentifier] NOT NULL,
	[FunctionalityTypeId] [uniqueidentifier] NULL,
	[SubMenu] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SequenceNo] [int] NOT NULL,
	[AllowForAdmin] [bit] NOT NULL,
	[ASPXController] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ASPXAction] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IconImage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
	[UpdatedDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_SubMenuItems] PRIMARY KEY CLUSTERED 
(
	[SubMenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataForms](
	[DataFormId] [uniqueidentifier] NOT NULL,
	[DataFormName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DataFormCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubMenuItemId] [uniqueidentifier] NULL,
	[ParentTypeListValueId] [uniqueidentifier] NULL,
	[UserControlName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DataFormType] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AllowForAdmin] [bit] NOT NULL,
	[DisplayGridSetting] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PreviewProcedureName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_DataCollectionForms] PRIMARY KEY CLUSTERED 
(
	[DataFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
) TEXTIMAGE_ON [PRIMARY]

GO
CREATE NONCLUSTERED INDEX [IX_DataForms] ON [dbo].[DataForms]
(
	[DataFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [UK1_DataForms] ON [dbo].[DataForms]
(
	[DataFormCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
ALTER TABLE [dbo].[Clients]  WITH NOCHECK ADD  CONSTRAINT [FK_Clients_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([RegionId])
GO
ALTER TABLE [dbo].[Clients] NOCHECK CONSTRAINT [FK_Clients_Regions]
GO
ALTER TABLE [dbo].[Divisions]  WITH NOCHECK ADD  CONSTRAINT [FK_Divisions_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[Divisions] NOCHECK CONSTRAINT [FK_Divisions_Clients]
GO
ALTER TABLE [dbo].[MainMenuItems]  WITH NOCHECK ADD  CONSTRAINT [FK_MainMenuItems_Divisions] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([DivisionId])
GO
ALTER TABLE [dbo].[MainMenuItems] NOCHECK CONSTRAINT [FK_MainMenuItems_Divisions]
GO
ALTER TABLE [dbo].[MainMenuItems]  WITH NOCHECK ADD  CONSTRAINT [FK_MainMenuItems_MainMenuItems] FOREIGN KEY([ParentMainMenuItemId])
REFERENCES [dbo].[MainMenuItems] ([MainMenuItemId])
GO
ALTER TABLE [dbo].[MainMenuItems] NOCHECK CONSTRAINT [FK_MainMenuItems_MainMenuItems]
GO
ALTER TABLE [dbo].[SubMenuItems]  WITH NOCHECK ADD  CONSTRAINT [FK_SubMenuItems_FunctionalityTypes] FOREIGN KEY([FunctionalityTypeId])
REFERENCES [dbo].[FunctionalityTypes] ([FunctionalityTypeId])
GO
ALTER TABLE [dbo].[SubMenuItems] NOCHECK CONSTRAINT [FK_SubMenuItems_FunctionalityTypes]
GO
ALTER TABLE [dbo].[SubMenuItems]  WITH NOCHECK ADD  CONSTRAINT [FK_SubMenuItems_MainMenuItems] FOREIGN KEY([MainMenuItemId])
REFERENCES [dbo].[MainMenuItems] ([MainMenuItemId])
GO
ALTER TABLE [dbo].[SubMenuItems] NOCHECK CONSTRAINT [FK_SubMenuItems_MainMenuItems]
GO
ALTER TABLE [dbo].[DataForms]  WITH NOCHECK ADD  CONSTRAINT [FK_DataForms_SubMenuItems] FOREIGN KEY([SubMenuItemId])
REFERENCES [dbo].[SubMenuItems] ([SubMenuItemId])
GO
ALTER TABLE [dbo].[DataForms] NOCHECK CONSTRAINT [FK_DataForms_SubMenuItems]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
/*
EXEC [GetDataFormNames]

        @ClientId =NULL,    
		 @DivisionId =NULL,    
		 @ClientRoleId =NULL,  
		 @UserId =NULL, 
		 @UserLoginDetailId=NULL

*/
CREATE PROCEDURE [dbo].[GetDataFormNames]
	(
	     @ClientId uniqueidentifier,    
		 @DivisionId uniqueidentifier,    
		 @ClientRoleId uniqueidentifier,    
		 @UserId uniqueidentifier,    
		 @UserLoginDetailId uniqueidentifier  
		 

	)
AS
BEGIN
	Select 
	      DataForms.DataFormId,
	      DataForms.DataFormName
	from DataForms
	
	Where DataForms.IsActive=1
	and DataForms.DataFormCode IN('HOMDTLS','INCDTLS','PENDTLS')
	Order by DataForms.DataFormName
END

GO

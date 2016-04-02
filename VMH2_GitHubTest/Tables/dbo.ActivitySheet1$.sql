SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivitySheet1$](
	[ImportTemplateFieldId] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImportTeamplateId] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Title] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SequenceNumber] [float] NULL,
	[FieldTypeId] [float] NULL,
	[DBFieldName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MandetoryFlag] [float] NULL,
	[MaxLength] [float] NULL,
	[TableName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DataType] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ListId] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentOwnerFlag] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentTableName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentTableJoinField] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentTableSelectIdField] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentTableSelectValueField] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PrimaryKeyFlag] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UniqueKeyFlag] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OwnerKeyFlag] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SessionVariables] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[InsertUpdateType] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImportInParameter] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImportTypeId] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TypeOfField] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[InsertUpdateFlag] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SelectInGrigFlag] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GroupByFlag] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedDateTime] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UpdatedBy] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UpdatedDateTime] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]

GO

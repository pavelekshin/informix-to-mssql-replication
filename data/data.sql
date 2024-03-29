USE [CVP]
GO
/****** Object:  Table [dbo].[tSettings]    Script Date: 26.01.2024 16:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tSettings](
	[SettingID] [int] IDENTITY(1,1) NOT NULL,
	[SettingName] [dbo].[dSettingName] NOT NULL,
	[SettingValue] [dbo].[dSettingInfo] NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[SettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tSettingsTables]    Script Date: 26.01.2024 16:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tSettingsTables](
	[SettingID] [int] IDENTITY(1,1) NOT NULL,
	[Source] [dbo].[dSettingInfo] NOT NULL,
	[SourceTableName] [dbo].[dSettingInfo] NOT NULL,
	[TargetTableName] [dbo].[dSettingInfo] NOT NULL,
	[ReplicationType] [dbo].[dSettingInfo] NOT NULL,
	[ReplicationOverlapSeconds] [dbo].[dSettingInfo] NOT NULL,
	[TimeConstraintColumn] [dbo].[dSettingInfo] NULL,
 CONSTRAINT [PK_tSettingsTables] PRIMARY KEY CLUSTERED 
(
	[SettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tSettings] ON 

INSERT [dbo].[tSettings] ([SettingID], [SettingName], [SettingValue]) VALUES (1, N'RowsDeletePerTime', N'50000')
INSERT [dbo].[tSettings] ([SettingID], [SettingName], [SettingValue]) VALUES (2, N'RowsCopyPerTime', N'75000')
INSERT [dbo].[tSettings] ([SettingID], [SettingName], [SettingValue]) VALUES (3, N'ReportTablesCleanup_Age', N'31')
INSERT [dbo].[tSettings] ([SettingID], [SettingName], [SettingValue]) VALUES (4, N'LinkedServer_Source', N'cvpreporting.example.com')
INSERT [dbo].[tSettings] ([SettingID], [SettingName], [SettingValue]) VALUES (5, N'SyncLogTableCleanup_Age', N'31')
INSERT [dbo].[tSettings] ([SettingID], [SettingName], [SettingValue]) VALUES (6, N'IndexStateHistoryTableCleanup_Age', N'31')
INSERT [dbo].[tSettings] ([SettingID], [SettingName], [SettingValue]) VALUES (7, N'LastDbdatetimeInUpdate_dbo.call')
INSERT [dbo].[tSettings] ([SettingID], [SettingName], [SettingValue]) VALUES (8, N'LastDbdatetimeInUpdate_dbo.vxmlsession')

SET IDENTITY_INSERT [dbo].[tSettings] OFF
GO
SET IDENTITY_INSERT [dbo].[tSettingsTables] ON 

INSERT [dbo].[tSettingsTables] ([SettingID], [Source], [SourceTableName], [TargetTableName], [ReplicationType], [ReplicationOverlapSeconds], [TimeConstraintColumn]) VALUES (1, N'<LinkedServer_Source>', N'call', N'dbo.call', N'Incremental', N'600', N'dbdatetime,callstartdate')
INSERT [dbo].[tSettingsTables] ([SettingID], [Source], [SourceTableName], [TargetTableName], [ReplicationType], [ReplicationOverlapSeconds], [TimeConstraintColumn]) VALUES (2, N'<LinkedServer_Source>', N'vxmlelementdetail', N'dbo.vxmlelementdetail', N'Incremental', N'600', N'dbdatetime,callstartdate')
INSERT [dbo].[tSettingsTables] ([SettingID], [Source], [SourceTableName], [TargetTableName], [ReplicationType], [ReplicationOverlapSeconds], [TimeConstraintColumn]) VALUES (3, N'<LinkedServer_Source>', N'vxmlelement', N'dbo.vxmlelement', N'Incremental', N'420', N'dbdatetime,callstartdate')
INSERT [dbo].[tSettingsTables] ([SettingID], [Source], [SourceTableName], [TargetTableName], [ReplicationType], [ReplicationOverlapSeconds], [TimeConstraintColumn]) VALUES (4, N'<LinkedServer_Source>', N'vxmlsession', N'dbo.vxmlsession', N'Incremental', N'600', N'dbdatetime,callstartdate')
INSERT [dbo].[tSettingsTables] ([SettingID], [Source], [SourceTableName], [TargetTableName], [ReplicationType], [ReplicationOverlapSeconds], [TimeConstraintColumn]) VALUES (5, N'<LinkedServer_Source>', N'vxmlcustomcontent', N'dbo.vxmlcustomcontent', N'Incremental', N'600', N'dbdatetime,callstartdate')
INSERT [dbo].[tSettingsTables] ([SettingID], [Source], [SourceTableName], [TargetTableName], [ReplicationType], [ReplicationOverlapSeconds], [TimeConstraintColumn]) VALUES (7, N'<LinkedServer_Source>', N'call', N'dbo.call', N'Update', N'0', N'dbdatetime,callstartdate')
INSERT [dbo].[tSettingsTables] ([SettingID], [Source], [SourceTableName], [TargetTableName], [ReplicationType], [ReplicationOverlapSeconds], [TimeConstraintColumn]) VALUES (7, N'<LinkedServer_Source>', N'vxmlsession', N'dbo.vxmlsession', N'Update', N'0', N'dbdatetime,callstartdate')
SET IDENTITY_INSERT [dbo].[tSettingsTables] OFF
GO

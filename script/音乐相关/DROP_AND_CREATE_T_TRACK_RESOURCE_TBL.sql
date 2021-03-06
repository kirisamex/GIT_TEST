USE [ANIMEDATA_DEV]
GO

/****** Object:  Table [dbo].[T_TRACK_RESOURCE_TBL]    Script Date: 02/26/2016 14:18:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[T_TRACK_RESOURCE_TBL]') AND type in (N'U'))
DROP TABLE [dbo].[T_TRACK_RESOURCE_TBL]
GO

USE [ANIMEDATA_DEV]
GO

/****** Object:  Table [dbo].[T_TRACK_RESOURCE_TBL]    Script Date: 02/26/2016 14:18:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[T_TRACK_RESOURCE_TBL](
	[TRACK_ID] [char](10) NOT NULL,
	[RESOURCE_ID] [int] NOT NULL,
	[ENABLE_FLG] [bit] NOT NULL,
	[LAST_UPDATE_DATETIME] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TRACK_ID] ASC,
	[RESOURCE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[T_TRACK_RESOURCE_TBL] ADD  DEFAULT ((1)) FOR [ENABLE_FLG]
GO

ALTER TABLE [dbo].[T_TRACK_RESOURCE_TBL] ADD  DEFAULT (getdate()) FOR [LAST_UPDATE_DATETIME]
GO



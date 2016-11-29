USE [Animedata_dev]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_T_RESOURCE_ID_TBL_LAST_UDPATE_DATETIME]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[T_RESOURCE_ID_TBL] DROP CONSTRAINT [DF_T_RESOURCE_ID_TBL_LAST_UDPATE_DATETIME]
END

GO

USE [Animedata_dev]
GO

/****** Object:  Table [dbo].[T_RESOURCE_ID_TBL]    Script Date: 08/29/2016 10:23:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[T_RESOURCE_ID_TBL]') AND type in (N'U'))
DROP TABLE [dbo].[T_RESOURCE_ID_TBL]
GO

USE [Animedata_dev]
GO

/****** Object:  Table [dbo].[T_RESOURCE_ID_TBL]    Script Date: 08/29/2016 10:23:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[T_RESOURCE_ID_TBL](
	[RESOURCE_ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE_DATETIME] [datetime] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[T_RESOURCE_ID_TBL] ADD  CONSTRAINT [DF_T_RESOURCE_ID_TBL_LAST_UDPATE_DATETIME]  DEFAULT (getdate()) FOR [LAST_UDPATE_DATETIME]
GO



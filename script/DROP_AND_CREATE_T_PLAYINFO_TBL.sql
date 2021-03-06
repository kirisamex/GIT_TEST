USE [ANIMEDATA]
GO

/****** Object:  Table [dbo].[T_PLAYINFO_TBL]    Script Date: 2016/2/1 23:15:57 ******/
DROP TABLE [dbo].[T_PLAYINFO_TBL]
GO

/****** Object:  Table [dbo].[T_PLAYINFO_TBL]    Script Date: 2016/2/1 23:15:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[T_PLAYINFO_TBL](
	[PLAYINFO_ID] [int] NOT NULL,
	[ANIME_NO] [char](4) NOT NULL,
	[ANIME_PLAYINFO] [varchar](255) NOT NULL,
	[STATUS] [smallint] NOT NULL,
	[START_TIME] [date] NULL,
	[WATCH_TIME] [date] NULL,
	[PARTS] [int] NULL,
	[COMPANY_ID] [int] NULL,
	[ENABLE_FLG] [bit] NOT NULL DEFAULT ((1)),
	[LAST_UPDATE_DATETIME] [datetime] NOT NULL DEFAULT (getdate()),
 CONSTRAINT [PK_T_PLAYINFO_TBL] PRIMARY KEY CLUSTERED 
(
	[PLAYINFO_ID] ASC,
	[ANIME_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



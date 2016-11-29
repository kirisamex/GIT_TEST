USE [ANIMEDATA_DEV]
GO

/****** Object:  Table [dbo].[T_ARTIST_TBL]    Script Date: 2016/2/1 23:14:54 ******/
DROP TABLE [dbo].[T_ARTIST_TBL]
GO

/****** Object:  Table [dbo].[T_ARTIST_TBL]    Script Date: 2016/2/1 23:14:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[T_ARTIST_TBL](
	[ARTIST_ID] [int] NOT NULL,
	[ARTIST_NAME] [nvarchar](1000) NOT NULL,
	[GENDER_ID] [tinyint] NOT NULL,
	[CHARACTER_FLG] [bit] NOT NULL DEFAULT ((0)),
	[CV_FLG] [bit] NOT NULL DEFAULT ((0)),
	[SINGER_FLG] [bit] NOT NULL DEFAULT ((0)),
	[DESCRIPTION] [nvarchar](1000) NULL,
	[ENABLE_FLG] [bit] NOT NULL DEFAULT ((1)),
	[LAST_UPDATE_DATETIME] [datetime] NOT NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[ARTIST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



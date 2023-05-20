USE [BCIQ_ALERTS]
GO
/****** Object:  Table [dbo].[AlertCards]    Script Date: 5/20/2023 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlertCards](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](200) NOT NULL,
	[Channel] [nvarchar](200) NULL,
	[Date] [datetime] NULL,
	[Grid] [nvarchar](max) NULL,
	[Profile] [nvarchar](max) NULL,
	[SavedSearch] [nvarchar](max) NULL,
	[Archive] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alerts]    Script Date: 5/20/2023 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alerts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](200) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Date] [datetime] NULL,
	[SentToEmail] [bit] NULL,
	[SentToMobile] [bit] NULL,
	[ViewedNewsfeed] [bit] NULL,
	[Type] [nvarchar](200) NULL,
	[Article] [nvarchar](max) NULL,
	[Term] [nvarchar](max) NULL,
	[Frequency] [nvarchar](200) NULL,
	[IsRead] [bit] NULL,
	[AlertId] [nvarchar](200) NULL,
	[Added] [nvarchar](max) NULL,
	[Changed] [nvarchar](max) NULL,
	[Removed] [nvarchar](max) NULL,
	[RunId] [nvarchar](200) NULL,
	[Url] [nvarchar](max) NULL,
	[Articles] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppSettings]    Script Date: 5/20/2023 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](200) NULL,
	[Value] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FullEditions]    Script Date: 5/20/2023 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FullEditions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Culture] [nvarchar](200) NULL,
	[Header] [nvarchar](max) NULL,
	[Footer] [nvarchar](max) NULL,
	[Sponsor] [nvarchar](max) NULL,
	[HideSponsor] [bit] NULL,
	[PublicationDate] [datetime] NULL,
	[BackIssuesList] [nvarchar](max) NULL,
	[SectionList] [nvarchar](max) NULL,
	[AdSettings] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsPublished] [bit] NULL,
	[Correction] [nvarchar](max) NULL,
	[Promo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Letters]    Script Date: 5/20/2023 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Letters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](200) NULL,
	[Body] [nvarchar](max) NULL,
	[Created] [datetime] NULL,
	[Sent] [datetime] NULL,
	[IsSent] [bit] NULL,
	[IsSkipped] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/20/2023 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](200) NOT NULL,
	[LastFilterSet] [nvarchar](max) NULL,
	[FilterSetList] [nvarchar](max) NULL,
	[ArchiveAlerts] [nvarchar](max) NULL,
	[Email] [nvarchar](200) NULL,
	[GridAlerts] [nvarchar](max) NULL,
	[Reports] [nvarchar](max) NULL,
	[Schedule] [nvarchar](max) NULL,
	[LastSearches] [nvarchar](max) NULL,
	[ArticleSavedSearches] [nvarchar](max) NULL,
	[SavedArticles] [nvarchar](max) NULL,
	[Name] [nvarchar](200) NULL,
	[SavedSearches] [nvarchar](max) NULL,
	[Bookmarks] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTables]    Script Date: 5/20/2023 09:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](200) NULL,
	[Key] [nvarchar](200) NULL,
	[Value] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alerts] ADD  CONSTRAINT [DF_Alerts_SentToEmail]  DEFAULT ((0)) FOR [SentToEmail]
GO
ALTER TABLE [dbo].[Alerts] ADD  CONSTRAINT [DF_Alerts_SentToMobile]  DEFAULT ((0)) FOR [SentToMobile]
GO
ALTER TABLE [dbo].[Alerts] ADD  CONSTRAINT [DF_Alerts_ViewedNewsfeed]  DEFAULT ((0)) FOR [ViewedNewsfeed]
GO
ALTER TABLE [dbo].[Alerts] ADD  CONSTRAINT [DF_Alerts_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[FullEditions] ADD  CONSTRAINT [DF_FullEditions_HideSponsor]  DEFAULT ((0)) FOR [HideSponsor]
GO
ALTER TABLE [dbo].[FullEditions] ADD  CONSTRAINT [DF_FullEditions_IsPublished]  DEFAULT ((0)) FOR [IsPublished]
GO
ALTER TABLE [dbo].[Letters] ADD  CONSTRAINT [DF_Letters_IsSent]  DEFAULT ((0)) FOR [IsSent]
GO
ALTER TABLE [dbo].[Letters] ADD  CONSTRAINT [DF_Letters_IsSkipped]  DEFAULT ((0)) FOR [IsSkipped]
GO

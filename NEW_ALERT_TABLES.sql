/****** Object:  Table [app].[AccountSettings]    Script Date: 5/22/2023 11:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[AccountSettings](
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
/****** Object:  Table [app].[AlertCards]    Script Date: 5/22/2023 11:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[AlertCards](
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
/****** Object:  Table [app].[Alerts]    Script Date: 5/22/2023 11:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[Alerts](
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
/****** Object:  Table [app].[FullEditions]    Script Date: 5/22/2023 11:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[FullEditions](
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
/****** Object:  Table [app].[Letters]    Script Date: 5/22/2023 11:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[Letters](
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
/****** Object:  Table [app].[Users]    Script Date: 5/22/2023 11:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[Users](
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
/****** Object:  Table [app].[UserTables]    Script Date: 5/22/2023 11:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[UserTables](
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
ALTER TABLE [app].[Alerts] ADD  CONSTRAINT [DF_Alerts_SentToEmail]  DEFAULT ((0)) FOR [SentToEmail]
GO
ALTER TABLE [app].[Alerts] ADD  CONSTRAINT [DF_Alerts_SentToMobile]  DEFAULT ((0)) FOR [SentToMobile]
GO
ALTER TABLE [app].[Alerts] ADD  CONSTRAINT [DF_Alerts_ViewedNewsfeed]  DEFAULT ((0)) FOR [ViewedNewsfeed]
GO
ALTER TABLE [app].[Alerts] ADD  CONSTRAINT [DF_Alerts_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [app].[FullEditions] ADD  CONSTRAINT [DF_FullEditions_HideSponsor]  DEFAULT ((0)) FOR [HideSponsor]
GO
ALTER TABLE [app].[FullEditions] ADD  CONSTRAINT [DF_FullEditions_IsPublished]  DEFAULT ((0)) FOR [IsPublished]
GO
ALTER TABLE [app].[Letters] ADD  CONSTRAINT [DF_Letters_IsSent]  DEFAULT ((0)) FOR [IsSent]
GO
ALTER TABLE [app].[Letters] ADD  CONSTRAINT [DF_Letters_IsSkipped]  DEFAULT ((0)) FOR [IsSkipped]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [app].[SpecialReportFolder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Parent] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL
PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [app].[SpecialReport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FolderId] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[ReportId] [nvarchar](200) NOT NULL,
	[WorkspaceId] [nvarchar](200) NOT NULL,
	[SectionName] [nvarchar](200) NOT NULL,
	[PbiReportName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL
PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [app].[SpecialReport] WITH NOCHECK ADD CONSTRAINT [FK_SpecialReportFolderId] FOREIGN KEY([FolderId])
REFERENCES [app].[SpecialReportFolder]([Id])
GO
ALTER TABLE [app].[SpecialReport] CHECK CONSTRAINT [FK_SpecialReportFolderId]
GO
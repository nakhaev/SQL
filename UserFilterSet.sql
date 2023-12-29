USE [BCIQ_DW]
GO

/****** Object:  Table [app].[User]    Script Date: 12/25/2023 15:46:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [app].[UserFilterSet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ExternalUserId] [nvarchar](200) NOT NULL,
	[FilterSetId] [nvarchar](200) NOT NULL,
	[ClassName] [nvarchar](200) NULL,
	[Name] [nvarchar](200) NULL,
	[FilterSetType] [nvarchar](200) NULL,
	[TemporaryFilters] [nvarchar](max) NULL,
	[Descriptor] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [app].[UserFilterSet] WITH NOCHECK ADD CONSTRAINT [FK_UserFilterSetUserId] FOREIGN KEY([UserId])
REFERENCES [app].[User]([Id])
GO
ALTER TABLE [app].[UserFilterSet] CHECK CONSTRAINT [FK_UserFilterSetUserId]
GO
ALTER TABLE [app].[UserFilterSet] WITH NOCHECK ADD CONSTRAINT [FK_UserFilterSetExternalUserId] FOREIGN KEY([ExternalUserId])
REFERENCES [app].[User]([UserId])
GO
ALTER TABLE [app].[UserFilterSet] CHECK CONSTRAINT [FK_UserFilterSetExternalUserId]
GO
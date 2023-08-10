SET IDENTITY_INSERT [BCIQ_DW].[app].[User] ON;
INSERT INTO [BCIQ_DW].[app].[User] (
    [Id]
      ,[UserId]
      ,[LastFilterSet]
      ,[FilterSetList]
      ,[ArchiveAlerts]
      ,[Email]
      ,[GridAlerts]
      ,[Reports]
      ,[Schedule]
      ,[LastSearches]
      ,[ArticleSavedSearches]
      ,[SavedArticles]
      ,[Name]
      ,[SavedSearches]
      ,[Bookmarks]
) (
    SELECT
    [Id]
      ,[UserId]
      ,[LastFilterSet]
      ,[FilterSetList]
      ,[ArchiveAlerts]
      ,[Email]
      ,[GridAlerts]
      ,[Reports]
      ,[Schedule]
      ,[LastSearches]
      ,[ArticleSavedSearches]
      ,[SavedArticles]
      ,[Name]
      ,[SavedSearches]
      ,[Bookmarks]
      FROM [BCIQDS.WESTUS.CLOUDAPP.AZURE.COM,27777].[BCIQ_DW].[app].[User]
);

SET IDENTITY_INSERT [BCIQ_DW].[app].[User] OFF;